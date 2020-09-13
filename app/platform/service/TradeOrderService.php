<?php
declare (strict_types = 1);

namespace app\platform\service;

use app\common\model\AdminLogs;
use app\common\model\TradeOrder;

class TradeOrderService  extends \think\Service
{
    /**
     * @param $where
     * @return \think\Paginator
     * @throws \think\db\exception\DbException
     * Date: 2020/9/9 10:38
     */
    public function lists($where){
        return  TradeOrder::lists($where,['id'=>'desc'],['users','feeCoin','market'],'fee_coin_name,buy_coin_title,sell_coin_title,uid,market_id,fee_coin');
    }

    /**
     * 数据统计
     * @param $where
     * @return array
     * Date: 2020/9/9 13:52
     */
    public function getTotal($where){
        $lists = [
            'price'=>TradeOrder::getSum('price',$where),
            'num'=>TradeOrder::getSum('num',$where),
            'mum'=>TradeOrder::getSum('mum',$where),
            'deal'=>TradeOrder::getSum('deal',$where),
            'turnover'=>TradeOrder::getSum('turnover',$where),
            'fee_num'=>TradeOrder::getSum('fee_num',$where),
        ];
        return $lists;
    }

    /**
     * 撤销订单
     * @param $id
     * @return bool
     * Date: 2020/9/9 15:41
     */
    public function doCancel($id){
        if(is_array($id)){
            $op = 'in';
        }elseif (is_numeric($id)){
            $op = '=';
        }else{
            trace('参数不规范：'.$id,'error');
            return false;
        }
        $res = boolval(TradeOrder::where('id',$op,$id)->update(['status'=>2]));
        if($res){
            AdminLogs::write('撤销委托单',$id);
        }
        return $res;
    }

    /**
     * 获取字段参数
     * @param bool $where
     * @param string $field
     * @return array
     * Date: 2020/9/9 15:55
     */
    public function getColumn($where = true,$field = 'id'){
        return TradeOrder::where($where)->column($field);
    }

}
