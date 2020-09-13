<?php
declare (strict_types = 1);

namespace app\platform\validate;

use app\common\validate\BaseValidate;

class Dynamic extends BaseValidate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
	protected $rule = [
	    'id' => 'require|number',
        'edition' => 'require|number|nonZero',
	    'branch' =>  'require|number',
        'profit' => 'require|float|profit',
     ];

    /**
     * 验证字段描述
     * @var array
     */
    protected $field = [
        'edition' => '代数',
        'branch'  => '直推人数',
        'profit'  => '收益率',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'id.require' => '未传入ID',
        'edition.require' => '请输入代数',
        'edition.number' => '代数只能为数字',
        'branch.require' => '请输入直推人数',
        'branch.number' => '直推人数只能为数字',
        'profit.require' => '请输入收益率',
        'profit.float' => '收益率数需为浮点数字',
    ];

    /**定义验证场景
     * @var \string[][]
     */
    protected $scene = [
        'add' => ['edition','branch','profit'],
        'modify' => ['id','edition','branch','profit'],
    ];
}
