<?php
declare (strict_types = 1);

namespace app\common\listener;

use app\platform\service\TradeOrderService;

/**
 * 委托单退款
 * Class TradeRefund
 * @package app\common\listener
 * Date: 2020/9/9 16:12
 */
class TradeRefund
{
    /**
     * 委托单退款事件
     * @param $event
     * @return bool
     * Date: 2020/9/9 15:53
     */
    public function handle($event)
    {
        //退款业务判断
        //执行退款程序（增加用户资金）
        return false;
    }    
}
