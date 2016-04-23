<?php
/**
 * Author: huanglele
 * Date: 2016/1/15
 * Time: 21:16
 * Description:
 */

namespace Home\Controller;
use Think\Controller;

class GysController extends Controller
{
    public function _initialize(){
        $arr = array('login','logout','qqlogin','wxlogin','register');
        $gid = session('gys_id');
        if(!in_array(strtolower(ACTION_NAME),$arr)){
            //不是不用登录的方法
            if($gid){

            }else{
                $this->login();
                die;
            }
            $this->gid = $gid;
        }
    }

    public function index(){
        $this->display('index');
    }

    public function login(){
        if(isset($_POST['submit'])){
            $map['gys_name'] = I('post.gys_name');
            $pwd = I('post.gys_password');
            $info = M('gysUser')->field('gys_id,gys_password,gys_pwd1,gys_pwd2')->where($map)->find();
            if($info){
                $isPwdIsTrue = true;
                switch($pwd){
                    case $info['gys_password']:$role = 0;break;
                    case $info['gys_pwd1']:$role = 1;break;
                    case $info['gys_pwd2']:$role = 2;break;
                    case $info['gys_pwd3']:$role = 3;break;
                    default:$role = null;$isPwdIsTrue==false;break;
                }
                if($isPwdIsTrue){
                    session('role',$role);
                    foreach($info as $k=>$v){
                        session($k,$v);
                    }
                    $this->success('登录成功',U('index'));
                }else{
                    $this->error('密码错误');
                }
            }else{
                $this->error('登录失败');
            }
        }else{
            $this->display('login');
        }
    }

    /**
     * 退出登录
     */
    public function logout(){
        session('gys_id',null);
        $this->success('您已安全退出',U('index/index'));
    }

    /**
     * 订单管理
     */
    public function myorder(){
        $this->getOrderInfo();
        $this->display('myorder');
    }

    /**
     *  签单管理
     */
    public function qiandan(){
        $this->getOrderInfo();
        $this->display('qiandan');
    }


    private function getOrderInfo(){
        $this->checkRole(1);
        $status = I('get.status',0,'number_int');
        $map = array();
        if($status){
            $map['jms_state'] = $status;
        }
        $map['jms_sid'] = $this->gid;
        $M = M('jmsDingdan');
        $count = $M->where($map)->count();
        $Page = new \Think\Page($count,20);
        $page = $Page->show();
        $list = $M->where($map)
            ->field('jms_ddid as oid,jms_address as address,jms_phone as phone,jms_uname as uname,jms_ddage as ddage,jms_phone as phone,jms_ddtime as time,jms_ddnum as num,jms_price as price,jms_state as state,jms_gid as gid')
            ->order('oid desc')
            ->limit($Page->firstRow,$Page->listRows)
            ->select();
        $gids = array();
        foreach($list as $v){
            $gids[] = $v['gid'];
        }
        if(empty($gids)){
            $picArr = array();
        }else {
            $picArr = M('gysGoods')->where(array('gys_gid' => array('in', $gids)))->getField('gys_gid,gys_photo', true);
        }
        $this->assign('picArr',$picArr);
        $this->assign('list',$list);
        $this->assign('page',$page);
        $this->assign('status',$status);
        $this->assign('OrderStatus',C('OrderStatus'));
    }

    /**
     * 处理销售订单
     */
    public function doSell(){
        $this->checkRole(1);
        $id = I('get.id');
        $ac = I('get.ac');
        $data['jms_ddid'] = $id;
        $data['jms_state'] = $ac;
        $data['jms_sid'] = $this->gid;
        M('jmsDingdan')->save($data);
        $this->success('操作成功');
    }


    /**
     * 销量统计
     * 数据来自 jms_dingdan表
     */
    public function xiaoliang(){
        $this->checkRole(2);
        $map['jms_sid'] = $this->gid;
        $map['jms_state'] = array('egt',3);
        $M = M('jmsDingdan');
        $list = $M->where($map)->field('jms_gid as gid,sum(jms_ddage) as num ')->group('gid')->select();
        $gids = array();
        foreach($list as $v){
            $gids[] = $v['gid'];
        }
        if(empty($gids)){
            $goodsInfo = array();
        }else {
            $goodsInfo = M('gysGoods')->where(array('gys_gid' => array('in', $gids)))->getField('gys_gid as id,gys_photo as pic,gys_gname as name', true);
        }
        $this->assign('list',$list);
        $this->assign('Goods',$goodsInfo);
        $this->display('xiaoliang');
    }

    public function money(){
        $this->checkRole(0);
        $map['jms_sid'] = $this->gid;
        $map['jms_state'] = array('egt',3);
        $M = M('jmsDingdan');
        $list = $M->where($map)->field('jms_gid as gid,sum(jms_price) as num ')->group('gid')->select();
        $gids = array();
        foreach($list as $v){
            $gids[] = $v['gid'];
        }
        if(empty($gids)){
            $goodsInfo = array();
        }else {
            $goodsInfo = M('gysGoods')->where(array('gys_gid' => array('in', $gids)))->getField('gys_gid as id,gys_photo as pic,gys_gname as name', true);
        }
        $this->assign('list',$list);
        $this->assign('Goods',$goodsInfo);
        $this->display('money');
    }

    /**
     * 管理员设置不同的账户密码
     */
    public function setPwd(){
        $this->checkRole(0);
        if(isset($_POST['submit'])){
            $data = $_POST;
            foreach($data as $v){
                if($v == ''){
                    $this->error('不能为空');die;
                }
            }
            $data['gys_id'] = $this->gid;
            M('gysUser')->save($data);
            $this->success('修改成功');
        }else{
            $info = M('gysUser')->field('gys_password,gys_pwd1,gys_pwd2')->find($this->gid);
            $this->assign('info',$info);
            $this->display('setPwd');
        }
    }

    /**
     * 检测权限
     * @param $role
     * @return bool
     */
    public function checkRole($role){
        if(0==session('role') || $role==session('role')){
            return true;
        }else{
//            return false;
            $this->error('没有权限');die;
        }
    }
}