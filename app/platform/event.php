<?php
/**
 * Created by PhpStorm.
 * User: xiaoziyan
 * Date: 2020/8/31
 * Time: 13:00
 */

return [
    'bind'      => [

    ],

    'listen'    => [
        'UserLogin'  => ['app\platform\listener\UserLogin'],
        'Sms'  => ['app\common\listener\SendSms'],
        'TradeRefund'  => ['app\common\listener\TradeRefund'],
//        'SendSocket'  => ['app\listener\WebSocketEvent'],
    ],

    'subscribe' => [
        'app\platform\subscribe\User',
//        'app\subscribe\Socket'
    ],
];
