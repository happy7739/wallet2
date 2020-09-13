<?php

namespace app\platform\service;

use app\common\model\Dynamic;
use think\Service;

class DynamicService extends Service
{
    public function lists(){
        return Dynamic::select();
    }

    /**新增数据
     * @param $edition //代数
     * @param $branch //直推人数
     * @param $profit //收益率
     * @return Dynamic|\think\Model
     */
    public function add($edition,$branch,$profit)
    {
        $data = [
            'edition'=>$edition,
            'branch'=>$branch,
            'profit'=>$profit,
        ];
        return Dynamic::create($data);
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
        return Dynamic::del($id);
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
        return Dynamic::modify($id,$data);
    }
}