<?php


namespace app\platform\controller;


use app\platform\service\DynamicService;
use app\common\service\Validate;
use app\common\controller\StatusCode;
use think\exception\ValidateException;

class Dynamic extends BaseController
{
    /**动态收益数据列表
     * @param DynamicService $dynamicService
     * @return \think\response\Json
     */
    public function lists(DynamicService $dynamicService){
        try{
            $lists = $dynamicService->Lists();
            return result('ok',$lists,StatusCode::$SUCCESS);
        }catch (\Throwable $throwable){
            return result($throwable->getMessage(),StatusCode::$FAIL);
        }
    }

    /**新增
     * @param DynamicService $dynamicService
     * @param Validate $validateService
     * @return \think\response\Json
     */
    public function add(DynamicService $dynamicService){
        try{
            startTrans();
            $this->validate($this->param,'Dynamic.add');
            //return result('test',$this->param,StatusCode::$SUCCESS);
            $profit = number_format((float)$this->param['profit'],2,'.','');
            $res = $dynamicService->add($this->param['edition'],$this->param['branch'],$profit);
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
     * @param DynamicService $dynamicService
     * @return \think\response\Json
     */
    public function del(DynamicService $dynamicService){
        try{
            startTrans();
            $res = $dynamicService->del(intval($this->param['id']));
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
     * @param DynamicService $dynamicService
     * @return \think\response\Json
     */
    public function modify(DynamicService $dynamicService){
        try{
            startTrans();
            $this->validate($this->param,'Dynamic.modify');
            //return result('test',$this->param,StatusCode::$SUCCESS);
            $data = array(
                'edition' => $this->param['edition'],
                'branch' => $this->param['branch'],
                'profit' => number_format((float)$this->param['profit'],2,'.',''),
            );
            $res = $dynamicService->modify(intval($this->param['id']),$data);
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