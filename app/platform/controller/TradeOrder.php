<?php
declare (strict_types = 1);

namespace app\platform\controller;

use app\common\controller\StatusCode;
use app\common\service\UserService;
use app\platform\service\MarketService;
use app\platform\service\TradeOrderService;

class TradeOrder extends BaseController
{
    /**
     * 委托单列表
     * @param TradeOrderService $orderService
     * @param UserService $userService
     * @return \think\response\Json
     * Date: 2020/9/9 14:58
     */
    public function lists(TradeOrderService $orderService,UserService $userService){
        try{
            //查询条件处理
            $where = [];
            array_key_exists('market',$this->param) && is_numeric($this->param['market']) and $where[] = ['market_id','=',$this->param['market']];
            array_key_exists('start',$this->param) && strtotime($this->param['start']) and $where[] = ['begin_time','>=',strtotime($this->param['start'].' 0:00:00')];
            array_key_exists('end',$this->param) && strtotime($this->param['end']) and $where[] = ['begin_time','<',strtotime($this->param['end'].' 23:59:59')];
            if(array_key_exists('name',$this->param) && $this->param['name']){
                $uids = $userService->getColumn([['username','like','%'.$this->param['name'].'%']]);
                $where[] = ['uid','in',$uids];
            }
            //获取列表数据
            $lists = $orderService->lists($where);
            //数据参数去除无效0
            foreach ($lists as $list){
                $list->price = delZero($list->price);
                $list->num = delZero($list->num);
                $list->mum = delZero($list->mum);
                $list->deal = delZero($list->deal);
                $list->turnover = delZero($list->turnover);
                $list->fee = delZero($list->fee * 100).'%';
                $list->fee_num = delZero($list->fee_num);
            }
            //获取统计参数
            $total = $orderService->getTotal($where);
            //统计参数去除无效0
            foreach ($total as $key=>$value){
                $total[$key] = delZero($value);
            }
            return result('ok',['lists'=>$lists,'total'=>$total],StatusCode::$SUCCESS);
        }catch (\Throwable $throwable){
            trace('查看委托列表异常：'.$throwable->getMessage(),'error');
            return result('数据异常',StatusCode::$FAIL);
        }
    }

    /**
     * 获取市场选项
     * @param MarketService $marketService
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * Date: 2020/9/9 11:45
     */
    public function market(MarketService $marketService){
        $lists = $marketService->option()->toArray();
        $option = [];
        foreach ($lists as $list){
            $option[$list['id']] = $list['buy_coin_title'].'/'.$list['sell_coin_title'];
        }
        return result('ok',$option,StatusCode::$SUCCESS);
    }

    public function cancel(TradeOrderService $orderService){
        try{
            startTrans();
            //处理ID，统一成数组
            if(is_numeric($this->param['id'])) $id = [$this->param['id']];
            else $id = $this->param['id'];
            //获取未撤销订单ID
            $cancel = $orderService->getColumn([['status','<',2],['id','in',$id]]);
            //开始撤销
            $result = $orderService->doCancel($this->param['id']);
            //激活订单退款事件（同步）
            $TradeRefund = event('TradeRefund',$cancel);
            if($result && check_arr($TradeRefund)){
                commit();
                return result('撤销成功',StatusCode::$SUCCESS);
            }else{
                rollback();
                return result('撤销失败',StatusCode::$SUCCESS);
            }
        }catch (\Throwable $throwable){
            rollback();
            trace('委托单撤销异常：'.$throwable->getMessage(),'error');
            return result('退款失败');
        }
    }
}
