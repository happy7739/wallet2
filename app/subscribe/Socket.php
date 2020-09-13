<?php
declare (strict_types = 1);

namespace app\subscribe;

use Swoole\Server;
use think\swoole\Websocket;

class Socket
{
    public function __construct(Server $server,Websocket $websocket)
    {

    }

    public function onSendSocket($event){
        dump('send socket',$event);
    }
}
