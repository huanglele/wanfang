<?php
/**
 * User: huanglele
 * Date: 2016/1/10
 * Time: 17:45
 */

namespace Home\Controller;
use Think\Controller;

class CommonController extends Controller
{
    public function _initialize(){
        if(!isLogin()){
            $this->error('请先登录',U('User/login'));
        }
    }
}