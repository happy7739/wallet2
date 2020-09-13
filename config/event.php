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
        'HttpRun'  => [],
        'HttpEnd'  => [],
        'LogLevel' => [],
        'LogWrite' => [],

        'test' => ['app\listener\TestListener']
    ],

    'subscribe' => [
    ],
];
