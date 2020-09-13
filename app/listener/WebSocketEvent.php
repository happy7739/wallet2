<?php
declare (strict_types = 1);

namespace app\listener;

use app\common\controller\Redis;
use app\common\service\SocketService;
use app\Request;
use Swoole\Server;
use think\swoole\Websocket;

/**
 * socket 握手/断开事件监听
 * Class WebsocketEvent
 * @package app\listener
 * Date: 2020/9/1 10:33
 */
class WebsocketEvent
{
    protected $websocket = null;     //websocket对象
    protected $server = null;     //server对象
    protected $redis = null;     //redis对象


    public function __construct(Server $server, Websocket $websocket)
    {
        $this->websocket = $websocket;//依赖注入的方式
        $this->server = $server;
        $redis = new Redis();
        $this->redis = $redis->getConnect();
    }

    /**
     * 握手事件
     * @param Request $request
     * Date: 2020/9/1 10:34
     */
    public function onConnect(Request $request)
    {
        //通过websocket的上下文取得fd:$this->websocket->getSender()
        $fd = $this->websocket->getSender();//当前连接着
        $this->server->push($fd, 'hello user '.$fd);
        //将上线的用户从加入关系表中
        $this->saveFd($fd);
        dump('open:'.$fd);
    }

    private function saveFd($fd){
        $this->redis->set(env('redis.prefix','fripside').'uid'.(request()->uid ?? 'id'),$fd);
        $this->redis->set(env('redis.prefix','fripside').'fd'.$fd,time());
    }

    /**
     * 断开事件
     * Date: 2020/9/1 10:34
     */
    public function onClose()
    {
        //将离线的用户从关系表中移除
        $fd = $this->websocket->getSender();
        dump('close:'.$fd);
        $this->redis->del(env('redis.prefix','fripside').'uid'.(request()->uid ?? 'id'));
        $this->redis->del(env('redis.prefix','fripside').'fd'.$fd);
    }

}
