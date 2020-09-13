<?php
/**
 * Created by PhpStorm.
 * User: xiaoziyan
 * Date: 2020/8/20
 * Time: 10:45
 */
use think\facade\Route;
use \app\middleware\Power;
use \app\middleware\VisitLimit;
use \app\middleware\CheckAdminToken;
use \app\middleware\Sign;
use \think\middleware\LoadLangPack;

define('STILL_TIME',1800);//登录静置最大时间

Route::domain(env('route.platform','adnser.xiaoziyan.cc'), function () {
    // 动态注册域名的路由规则
    //无需验证权限
    Route::group('common/',function (){
        Route::get('/test','test/index');

        //获取图形验证码
        Route::get('/imgCode','auth/imgCode');
        //权限树
        Route::get('/authorization','auth/authorization');
        //获取菜单，验证登录状态
        Route::get('/menuLists','index/menuLists')->middleware(CheckAdminToken::class);
        Route::get('/roleOption','Power/roleOption')->middleware(CheckAdminToken::class);
        //登录
        Route::post('/login','auth/login');
        Route::post('/logout','auth/logout')->middleware(CheckAdminToken::class);
        //验证权限
        Route::post('/checkPower','auth/checkPower')->middleware(CheckAdminToken::class);
        //市场选项
        Route::get('/marketOption','TradeOrder/market')->middleware(CheckAdminToken::class);

        //用户登录
        Route::post('/usersLogin','Users/login');
        //用户注册
        Route::post('/usersRegister','Users/register');
        //添加用户
        Route::post('/usersAdd','Users/addUsers');
        //重置用户登录密码
        Route::post('/reset_pwd','Users/resetPwd');
        //重置用户交易密码
        Route::post('/reset_ta','Users/resetTrans');
        //编辑用户状态
        Route::post('/usersStatus','Users/status');
        //删除用户
        Route::post('/usersDel','Users/del');

        //新增静态收益数据设置
        Route::post('/profitAdd','Profit/add');
        //删除静态收益数据设置
        Route::post('/profitDel','Profit/del');
        //修改静态收益数据设置
        Route::post('/profitModify','Profit/modify');
        //静态收益数据列表
        Route::get('/profitLists','Profit/lists');

        //新增动态收益数据设置
        Route::post('/dynamicAdd','Dynamic/add');
        //删除动态收益数据设置
        Route::post('/dynamicDel','Dynamic/del');
        //修改动态收益数据设置
        Route::post('/dynamicModify','Dynamic/modify');
        //动态收益数据列表
        Route::get('/dynamicLists','Dynamic/lists');

        //新增团队收益数据设置
        Route::post('/teamAdd','Team/add');
        //删除团队收益数据设置
        Route::post('/teamDel','Team/del');
        //修改团队收益数据设置
        Route::post('/teamModify','Team/modify');
        //团队收益数据列表
        Route::get('/teamLists','Team/lists');

    })->middleware(VisitLimit::class);
    //
    Route::group(function (){
        Route::get('/adminLists','Admins/lists');//管理员列表
        Route::get('/rolesLists','Roles/lists');//角色列表
        Route::get('/adminLogs','Logs/admins');//管理员操作日志

        Route::post('/addAdmin','Admins/add');//添加管理员
        Route::post('/modifyAdmin','Admins/modify');//编辑管理员
        Route::post('/delAdmin','Admins/del');//删除管理员

        Route::post('/addRole','Roles/add');//添加角色
        Route::post('/modifyRole','Roles/modify');//编辑角色
        Route::post('/delRole','Roles/del');//删除角色
        Route::post('/authorization','Roles/authorization');//角色授权

        Route::get('/tradeOrderLists','TradeOrder/lists');//委托列表
        Route::post('/delOrder','TradeOrder/cancel');//撤销委托


        Route::post('/profitAdd','Profit/add');//新增静态收益数据设置
        Route::post('/profitDel','Profit/del');//删除静态收益数据设置
        Route::post('/profitModify','Profit/modify');//修改静态收益数据设置
        Route::get('/profitLists','Profit/lists');//静态收益数据列表

        Route::post('/dynamicAdd','Dynamic/add');//新增动态收益数据设置
        Route::post('/dynamicDel','Dynamic/del');//删除动态收益数据设置
        Route::post('/dynamicModify','Dynamic/modify');//修改动态收益数据设置
        Route::get('/dynamicLists','Dynamic/lists');//动态收益数据列表

        Route::post('/teamAdd','Team/add');//新增团队收益数据设置
        Route::post('/teamDel','Team/del');//删除团队收益数据设置
        Route::post('/teamModify','Team/modify');//修改团队收益数据设置
        Route::get('/teamLists','Team/lists');//团队收益数据列表

    })->middleware([CheckAdminToken::class,Power::class,Sign::class,VisitLimit::class]);
    Route::miss(function() {
        return '4042 Not Found!';
    });
})->middleware([LoadLangPack::class])->allowCrossDomain();
