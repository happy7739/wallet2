<?php
declare (strict_types = 1);

namespace app\common\model;


/**
 * @mixin \think\Model
 */
class Market extends BaseModel
{
    protected $table = 'market'; //表名
    protected $pk = 'id'; //主键

    public function buyCoin(){
        return $this->hasOne('coins','id','buy_coin')->bind(['buy_coin_title'=>'title','buy_coin_name'=>'name_'.(request()->lang ?? 'cn')]);
    }

    public function sellCoin(){
        return $this->hasOne('coins','id','sell_coin')->bind(['sell_coin_title'=>'title','sell_coin_name'=>'name_'.(request()->lang ?? 'cn')]);
    }

    public function feeCoin(){
        return $this->hasOne('coins','id','fee_coin')->bind(['fee_coin_title'=>'title','fee_coin_name'=>'name_'.(request()->lang ?? 'cn')]);
    }
}
