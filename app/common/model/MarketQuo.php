<?php
declare (strict_types = 1);

namespace app\common\model;

use think\Model;

/**
 * @mixin \think\Model
 */
class MarketQuo extends BaseModel
{
    protected $table = 'market_quo'; //表名
    protected $pk = 'id'; //主键

    public function market(){
        return $this->hasOne('market','id','market_id');
    }
}
