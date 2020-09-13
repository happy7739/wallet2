<?php


namespace app\platform\controller;


use app\platform\service\TeamService;
use app\common\service\Validate;
use app\common\controller\StatusCode;
use think\exception\ValidateException;

class Team extends BaseController
{
    /**团队收益数据列表
     * @param TeamService $teamService
     * @return \think\response\Json
     */
    public function lists(TeamService $teamService){
        try{
            $lists = $teamService->Lists();
            return result('ok',$lists,StatusCode::$SUCCESS);
        }catch (\Throwable $throwable){
            return result($throwable->getMessage(),StatusCode::$FAIL);
        }
    }

    /**新增
     * @param TeamService $teamService
     * @param Validate $validateService
     * @return \think\response\Json
     */
    public function add(TeamService $teamService,Validate $validateService){
        try{
            startTrans();
            $this->validate($this->param,'Team.add');
            //return result('test',$this->param,StatusCode::$SUCCESS);
            //判断该等级是否已存在
            $validate = $validateService->exist($this->param['level'],'team','level',false);
            if(!$validate === true){
                rollback();
                return result('等级已存在');
            }
            //判断上一等级是否存在
            if((int)$this->param['level'] !== 1){
                $validate = $validateService->exist($this->param['level'] - 1,'team','level',true);
                if(!$validate === true){
                    rollback();
                    return result('上一等级不存在');
                }
            }
            $price = number_format((float)$this->param['price'],2,'.','');
            $profit = number_format((float)$this->param['profit'],2,'.','');
            $res = $teamService->add($this->param['level'],$price,$this->param['branch'],$this->param['upper'],$profit);
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
     * @param TeamService $teamService
     * @return \think\response\Json
     */
    public function del(TeamService $teamService){
        try{
            startTrans();
            $res = $teamService->del(intval($this->param['id']));
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
     * @param TeamService $teamService
     * @return \think\response\Json
     */
    public function modify(TeamService $teamService){
        try{
            startTrans();
            $this->validate($this->param,'Team.modify');
            //return result('test',$this->param,StatusCode::$SUCCESS);
            $data = array(
                'level' => $this->param['level'],
                'price' => number_format((float)$this->param['price'],2,'.',''),
                'branch' => $this->param['branch'],
                'upper' => $this->param['upper'],
                'profit' => number_format((float)$this->param['profit'],2,'.',''),
            );
            $res = $teamService->modify(intval($this->param['id']),$data);
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