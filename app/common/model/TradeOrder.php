<?php
declare (strict_types = 1);

namespace app\common\model;


/**
 * @mixin \think\Model
 */
class TradeOrder extends BaseModel
{
    protected $table = 'trade_order'; //表名
    protected $pk = 'id'; //主键

    public function users(){
        return $this->hasOne('users','id','uid')->bind(['username']);
    }
    public function market(){
        return $this->hasOne('market','id','market_id')->with(['buyCoin','sellCoin'])->bind(['buy_coin_title','sell_coin_title','market_name']);
    }

    public function feeCoin(){
        return $this->hasOne('coins','id','fee_coin')->bind(['fee_coin_title'=>'title','fee_coin_name'=>'name_'.(request()->lang ?? 'cn')]);
    }

    public function getBeginTimeAttr($name){
        return $this->getCreateTimeAttr($name);
    }

    public function getEndTimeAttr($name){
        return $name > 0 ? $this->getCreateTimeAttr($name) : '-';
    }

    public function getMarketNameAttr($name,$data){
        return (array_key_exists('buy_coin_title',$data) && array_key_exists('sell_coin_title',$data)) ? $data['buy_coin_title'].'/'.$data['sell_coin_title'] : '-';
    }
}
