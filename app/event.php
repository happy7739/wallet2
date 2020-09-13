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
        'swoole.task' => [ app\listener\Task::class]
    ],

    'subscribe' => [

    ],
];
