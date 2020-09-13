<?php
declare (strict_types = 1);

namespace app\common\model;

use think\Model;

/**
 * @mixin \think\Model
 */
class TradeCharts extends BaseModel
{
    protected $table = 'trade_charts'; //表名
    protected $pk = 'id'; //主键

    public function market(){
        return $this->hasOne('market','id','market_id');
    }

    public function getTimeAttr(string $name)
    {
        return $this->getCreateTimeAttr($name);
    }
}
