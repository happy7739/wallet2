<?php
declare (strict_types = 1);

namespace app\platform\service;

use app\common\model\Market;

class MarketService  extends \think\Service
{
    /**
     * @return \think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * Date: 2020/9/9 11:41
     */
    public function option(){
        return Market::with(['buyCoin','sellCoin'])->field('id,buy_coin,sell_coin')->select();
    }
}
