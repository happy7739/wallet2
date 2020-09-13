<?php
declare (strict_types = 1);

namespace app\common\model;

use think\Model;

/**
 * @mixin \think\Model
 */
class TradeLog extends BaseModel
{
    protected $table = 'trade_log'; //表名
    protected $pk = 'id'; //主键

    public function buyOrder(){
        return $this->hasOne('trade_order','id','buy_id');
    }

    public function sellOrder(){
        return $this->hasOne('trade_order','id','sell_id');
    }

    public function buyUser(){
        return $this->hasOne('users','id','buy_user')->bind(['buy_username'=>'username']);
    }

    public function sellUser(){
        return $this->hasOne('users','id','sell_user')->bind(['sell_username'=>'username']);
    }

    public function market(){
        return $this->hasOne('market','id','market_id')->with(['buyCoin','sellCoin','feeCoin']);
    }

    public function getTimeAttr($name){
        return $this->getCreateTimeAttr($name);
    }
}
