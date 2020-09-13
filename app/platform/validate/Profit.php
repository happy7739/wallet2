<?php
declare (strict_types = 1);

namespace app\platform\validate;

use app\common\validate\BaseValidate;

class Profit extends BaseValidate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
	protected $rule = [
	    'id' => 'require|number',
        'price' => 'require|float',
	    'cycle' =>  'require|number',
        'profit' => 'require|float|profit',
     ];

    /**
     * 验证字段描述
     * @var array
     */
    protected $field = [
        'price'  => '金额',
        'cycle'  => '周期天数',
        'profit' => '收益率',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'id.require' => '未传入ID',
        'price.require' => '请输入金额',
        'price.float' => '金额格式不正确',
        'cycle.require' => '请输入周期天数',
        'cycle.number' => '周期天数只能为数字',
        'profit.require' => '请输入收益率',
        'profit.float' => '收益率数需为浮点数字',

    ];

    /**定义验证场景
     * @var \string[][]
     */
    protected $scene = [
        'add' => ['price','cycle','profit'],
        'modify' => ['id','price','cycle','profit'],
    ];
}
