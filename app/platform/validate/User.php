<?php
declare (strict_types = 1);

namespace app\platform\validate;

use app\common\validate\BaseValidate;
use think\Validate;

class User extends BaseValidate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
	protected $rule = [
	    'id' => 'require',
        'email' => 'require|email',
	    'password' =>  'require|alphaNum|length:6,18',
        'invitation' => 'require|number',
        'transaction' => 'require|number|transRule',
     ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'id.require' => '未传入ID',
        'email.require' => '请输入邮箱',
        'email.email' => '邮箱格式不正确',
        'password.require' => '请输入密码',
        'password.length' => '密码的长度输入不正确',
        'invitation.require' => '请输入邀请码',
        'invitation.number' => '邀请码格式不正确',
        'transaction.number' => '交易密码只能为数字',

    ];

    protected $scene = [
        'login' => ['email','password'],
        'addUsers' => ['email','password'],
        'register' => ['email','password','invitation'],
        'password' => ['id','email','password'],
        'transaction' => ['id','email','transaction'],
    ];
}
