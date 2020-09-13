<?php
declare (strict_types = 1);

namespace app\listener;

use think\swoole\Manager;
use think\swoole\Websocket;

/**
 * socket 事件监听
 * 需在swoole.php 配置listen .
 * 根目录下 event.php 配置 listen swoole.task 实现任务投递的监听
 * 本监听 监控的test订阅
 *
 * Class WebSocketHandle
 * @package app\listener
 * Date: 2020/9/8 16:29
 */
class WebSocketHandle
{
    /**
     * @param $event array|mixed 入参
     * @param Websocket $websocket
     * @param Manager $manager
     * Date: 2020/9/8 14:27
     */
    public function handle($event,Websocket $websocket,Manager $manager)
    {
        //读取当前FD
        $fd = $websocket->getSender();
        //获取websocket服务
        $server = $manager->getServer();
        //判断链接有效
        if($server->isEstablished($fd)){
            //发送消息
            $websocket->to($fd)->emit('test',json_encode(['answer'=>'CoCo']));
            //客户端接受内容
            //["test","{"answer":"CoCo"}"]
        }
        //任务投递
//        $server->task($event);
    }
}
