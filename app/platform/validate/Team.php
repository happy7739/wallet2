<?php
declare (strict_types = 1);

namespace app\platform\validate;

use app\common\validate\BaseValidate;

class Team extends BaseValidate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
	protected $rule = [
	    'id'     => 'require|number',
        'level'  => 'require|number|nonZero',
        'price'  => 'require|float',
	    'branch' =>  'require|number',
        'upper'  => 'require|number',
        'profit' => 'require|float|profit',
     ];

    /**
     * 验证字段描述
     * @var array
     */
    protected $field = [
        'level'  => '团队等级',
        'price'  => '全队总业绩',
        'branch' => '直推人数',
        'upper'  => '上一个等级团队数',
        'profit' => '收益率',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'id.require'     => '未传入ID',
        'level.require'  => '请输入团队等级',
        'level.number'   => '团队等级只能为数字',
        'price.require'  => '请输入全队总业绩',
        'price.float'    => '全队总业绩格式不正确',
        'branch.require' => '请输入直推人数',
        'branch.number'  => '直推人数只能为数字',
        'upper.require'  => '请输入上一个等级团队数',
        'upper.number'   => '上一个等级团队数只能为数字',
        'profit.require' => '请输入收益率',
        'profit.float'   => '收益率数需为浮点数字',
    ];

    /**定义验证场景
     * @var \string[][]
     */
    protected $scene = [
        'add' => ['level','price','branch','upper','profit'],
        'modify' => ['id','level','price','branch','upper','profit'],
    ];
}
