<?php


namespace app\platform\controller;


use app\platform\service\ProfitService;
use app\common\service\Validate;
use app\common\controller\StatusCode;
use think\exception\ValidateException;

class Profit extends BaseController
{
    /**静态收益数据列表
     * @param ProfitService $profitService
     * @return \think\response\Json
     */
    public function lists(ProfitService $profitService){
        try{
            $lists = $profitService->Lists();
            return result('ok',$lists,StatusCode::$SUCCESS);
        }catch (\Throwable $throwable){
            return result($throwable->getMessage(),StatusCode::$FAIL);
        }
    }

    /**新增
     * @param ProfitService $profitService
     * @param Validate $validateService
     * @return \think\response\Json
     */
    public function add(ProfitService $profitService){
        try{
            startTrans();
            $this->validate($this->param,'Profit.add');
            //return result('test',$this->param,StatusCode::$SUCCESS);
            $price = number_format((float)$this->param['price'],2,'.','');
            $profit = number_format((float)$this->param['profit'],2,'.','');
            $res = $profitService->add($price,$this->param['cycle'],$profit);
            if($res){
                commit();
                return result('添加成功',StatusCode::$SUCCESS);
            } else {
                rollback();
                return result('添加失败');
            }
        }catch (ValidateException $validate){
            rollback();
            return result($validate->getMessage());
        }catch (\Throwable $t){
            rollback();
            trace('添加数据异常：'.$t->getMessage().' - '.$t->getLine(),'error');
            return result('添加失败');
        }
    }

    /**删除数据
     * @param ProfitService $profitService
     * @return \think\response\Json
     */
    public function del(ProfitService $profitService){
        try{
            startTrans();
            $res = $profitService->del(intval($this->param['id']));
            if($res){
                commit();
                return result('删除成功',StatusCode::$SUCCESS);
            }else{
                rollback();
                return result('删除失败');
            }
        }catch (\Throwable $t){
            rollback();
            trace('数据删除异常：'.$t->getMessage(),'error');
            return result('删除失败');
        }
    }

    /**修改数据
     * @param ProfitService $profitService
     * @return \think\response\Json
     */
    public function modify(ProfitService $profitService){
        try{
            startTrans();
            $this->validate($this->param,'Profit.modify');
            //return result('test',$this->param,StatusCode::$SUCCESS);
            $data = array(
                'price' => number_format((float)$this->param['price'],2,'.',''),
                'cycle' => $this->param['cycle'],
                'profit' => number_format((float)$this->param['profit'],2,'.',''),
            );
            $res = $profitService->modify(intval($this->param['id']),$data);
            if($res){
                commit();
                return result('修改成功',StatusCode::$SUCCESS);
            }else{
                rollback();
                return result('修改失败1');
            }
        }catch (ValidateException $validate){
            rollback();
            return result($validate);
        }catch (\Throwable $t){
            rollback();
            trace('修改数据异常：'.$t->getMessage().' - '.$t->getLine(),'error');
            return result('修改失败2');
        }
    }
}