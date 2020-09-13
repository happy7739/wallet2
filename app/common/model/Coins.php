<?php
declare (strict_types = 1);

namespace app\common\model;


/**
 * @mixin \think\Model
 */
class Coins extends BaseModel
{
    protected $table = 'coins'; //表名
    protected $pk = 'id'; //主键
}
