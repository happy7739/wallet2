<?php
/**
 * Created by PhpStorm.
 * User: 华尚集团
 * Date: 2019/1/16
 * Time: 9:19
 */

namespace app\common\controller;

class Redis
{
    protected $redis;
    function __construct()
    {
        $this->redis = new \Redis();
        $this->connect();
    }
    function getConnect(): \Redis
    {
        return $this->redis;
    }
    function connect()
    {
        $conf = config('redis');
        $this->redis->connect($conf['host'], is_numeric($conf['port']) ? intval($conf['port']) : 6379);
        if (!empty($conf['auth'])) {
            $this->redis->auth($conf['auth']);
        }
        return $this;
    }
}