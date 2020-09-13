<?php
declare (strict_types = 1);

namespace app\common\service;

use app\common\model\Users;

class UserService  extends \think\Service
{
    public function getColumn($where = true,$fields = 'id'){
        return Users::where($where)->column($fields);
    }
}
