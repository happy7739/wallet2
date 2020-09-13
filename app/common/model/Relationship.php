<?php
declare (strict_types = 1);

namespace app\common\model;

use think\Model;

/**
 * @mixin \think\Model
 */
class Relationship extends BaseModel
{
    protected $table = 'relationship'; //表名
    protected $pk = 'id'; //主键
    protected $autoWriteTimestamp = false; //开启自动写入时间
    protected $updateTime = false;//关闭修改时间写入
    static protected $table_name = '关系';
}
