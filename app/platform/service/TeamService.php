<?php

namespace app\platform\service;

use app\common\model\Team;
use think\Service;

class TeamService extends Service
{
    public function lists(){
        return Team::select();
    }

    /**
     * @param $price //金额
     * @param $cycle //周期天数
     * @param $profit //收益率
     * @return Team|\think\Model
     */

    /**新增数据
     * @param $level //等级
     * @param $price //总业绩
     * @param $branch //直推人数
     * @param $upper //上一个等级团队数
     * @param $profit //收益率
     * @return Team|\think\Model
     */
    public function add($level,$price,$branch,$upper,$profit)
    {
        $data = [
            'level'  => $level,
            'price'  => $price,
            'branch' => $branch,
            'upper'  => $upper,
            'profit' => $profit,
        ];
        return Team::create($data);
    }

    /**删除数据
     * @param int $id
     * @return bool
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function del(int $id)
    {
        return Team::del($id);
    }

    /**修改数据
     * @param int $id
     * @param $data
     * @return bool
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function modify(int $id,$data)
    {
        return Team::modify($id,$data);
    }
}