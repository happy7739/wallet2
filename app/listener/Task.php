<?php
declare (strict_types = 1);

namespace app\listener;

class Task
{
    /**
     * 事件监听处理
     *
     * @return mixed
     */
    public function handle($event)
    {
        dump('task_listen',$event->data);
    }    
}
