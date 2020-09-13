<?php

namespace app\platform\service;

use app\common\model\Profit;
use think\Service;

class ProfitService extends Service
{
    public function lists(){
        return Profit::select();
    }

    /**新增数据
     * @param $price //金额
     * @param $cycle //周期天数
     * @param $profit //收益率
     * @return Profit|\think\Model
     */
    public function add($price,$cycle,$profit)
    {
        $data = [
            'price'=>$price,
            'cycle'=>$cycle,
            'profit'=>$profit,
        ];
        return Profit::create($data);
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
        return Profit::del($id);
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
        return Profit::modify($id,$data);
    }
}