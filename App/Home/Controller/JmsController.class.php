<?php
/**
 * Author: huanglele
 * Date: 2016/1/15
 * Time: 21:16
 * Description:
 */

namespace Home\Controller;
use Think\Controller;


class JmsController extends Controller
{
    public function _initialize(){
        $arr = array('login','logout','qqlogin','wxlogin','register');
        $jid = session('jms_id');
        if(!in_array(strtolower(ACTION_NAME),$arr)){
            //不是不用登录的方法
            if($jid){

            }else{
                $this->login();
                die;
            }
            $this->jid = $jid;
        }
    }

    public function index(){

        $this->display('index');
    }


    /**
     * 采购订单列表(jms_dingdan)
     */
    public function buyOrder(){
        $map = array();
        $map['jms_uid'] = $this->jid;
        $M = M('jmsDingdan');
        $count = $M->where($map)->count();
        $Page = new \Think\Page($count,20);
        $page = $Page->show();
        $list = $M->where($map)->order('jms_ddid desc')->limit($Page->firstRow,$Page->listRows)->select();
        $this->assign('list',$list);
//        var_dump($list);
        $this->assign('OrderStatus',C('OrderStatus'));
        $this->assign('page',$page);
        $this->display('buyList');
    }

    /**
     * 采购订单的某个具体情况
     */
    public function buyDetail(){
        $id = I('get.id');
        $map['jms_ddid'] = $id;
        $map['jms_uid'] = $this->jid;
        $info = M('vipDingdan')->where($map)->find();
        if($info){
            $this->assign('info',$info);
        }else{
            $this->error('订单不存在');
        }
    }


    /**
     * 销售订单（vip_dingdan）
     */
    public function sellOrder(){
        $status = I('get.status',0,'number_int');
        $map = array();
        if($status){
            $map['vip_ddstate'] = $status;
        }
        $map['vip_sid'] = $this->jid;
        $M = M('vipDingdan');
        $count = $M->where($map)->count();
        $Page = new \Think\Page($count,20);
        $page = $Page->show();
        $list = $M->where($map)
            ->field('vip_ddid as oid,vip_uname as uname,vip_ddage as ddage,vip_phone as phone,vip_ddtime as time,vip_ddnum as num,vip_price as price,vip_ddstate as state,vip_gid as gid')
            ->order('vip_ddid desc')
            ->limit($Page->firstRow,$Page->listRows)
            ->select();
        $gids = array();
        foreach($list as $v){
            $gids[] = $v['gid'];
        }
        if(empty($gids)){
            $picArr = array();
        }else {
            $picArr = M('jmsGoods')->where(array('jms_gid' => array('in', $gids)))->getField('jms_gid,jms_photo', true);
        }
        var_dump($list,$picArr);
        $this->assign('picArr',$picArr);
        $this->assign('list',$list);
        $this->assign('page',$page);
        $this->assign('OrderStatus',C('OrderStatus'));
        $this->display('sellList');
    }


    /**
     * 查看单个销售订单
     */
    public function sellDetail(){
        $id = I('get.id');
        $map['vip_ddid'] = $id;
        $map['vip_uid'] = $this->vid;
        $info = M('vipDingdan')->where($map)->find();
        if($info){
            $this->assign('info',$info);
        }else{
            $this->error('订单不存在');
        }
    }

    /**
     * 处理销售订单
     */
    public function doSell(){
        $id = I('get.id');
        $ac = I('get.ac');
        $data['vip_ddid'] = $id;
        $data['vip_ddstate'] = $ac;
        $data['vip_sid'] = $this->jid;
        M('vipDingdan')->save($data);
        $this->success('操作成功');
    }

    public function kucun(){
        $M = M('jmsGoods');
        $count = $M->count();
        $Page = new \Think\Page($count);
        $show = $Page->show();
        $list = $M->order('jms_gid desc')->field('jms_gname as gname,jms_num as num')->limit($Page->firstRow,$Page->listRows)->select();
        $this->assign('page',$show);
        $this->assign('list',$list);
        $this->display('kucun');
    }

    public function shangjia(){
        $M = M('gysUser');
        $count = $M->count();
        $Page = new \Think\Page($count);
        $show = $Page->show();
        $list = $M->order('gys_id desc')->field('gys_nickname as nickname,gym_phone as phone,gys_area as area')->limit($Page->firstRow,$Page->listRows)->select();
        $this->assign('page',$show);
        $this->assign('list',$list);
        $this->display('shangjia');
    }

    /**
     * 利润分析
     */
    public function table(){
        $map['jms_id'] = $this->jid;
        $M = M('jmsCkb');
        $count = $M->where($map)->count();
        $Page = new \Think\Page($count,20);
        $page = $Page->show();
        $list = $M->where($map)
            ->field('ck_djh as djh,ck_spid as spid,ck_spmc as spmc,ck_sl as sl,ck_spje as spje,ck_spdw as spdw,ck_sj as sj,ck_sl*ck_spje as money')
            ->order('id desc')
            ->limit($Page->firstRow,$Page->listRows)
            ->select();
        $this->assign('list',$list);
//        var_dump($list);
        $this->assign('page',$page);
        $this->display('table');
    }

    /**
     * 自己的商品列表
     */
    public function goods(){
        $map = array();
        $map['jms_id'] = $this->jid;
        $M = M('jmsGoods');
        $count = $M->where($map)->count();
        $Page = new \Think\Page($count,20);
        $page = $Page->show();
        $list = $M->where($map)->order('jms_gid desc')->limit($Page->firstRow,$Page->listRows)->select();
        $this->assign('list',$list);
//        var_dump($list);
        $this->assign('page',$page);
        $this->display('goods');
    }

    /**
     * 商品上下架
     */
    public function doGoods(){
        $id = I('get.id');
        $ac = I('get.ac');
        $data['jms_gid'] = $id;
        $data['jms_status'] = $ac;
        $data['jms_id'] = $this->jid;
        M('jmsGoods')->save($data);
        $this->success('操作成功');
    }

    /**
     * 查看自己的某一个商品详情
     */
    public function goodsDetail(){
        $map['jms_id'] = $this->jid;
        $map['id'] = I('get.id');
        $info = M('jmsGoods')->where($map)->find();
        if($info){

        }else{
            $this->error('页面不存在',U('goods'));
        }
    }


    public function login(){
        if(isset($_POST['submit'])){
            $map['jms_name'] = I('post.jms_name');
            $map['jms_password'] = I('post.jms_password');
            $info = M('jmsUser')->where($map)->find();
            if($info){
                foreach($info as $k=>$v){
                    session($k,$v);
                }
                $this->success('登录成功',U('index'));
            }else{
                $this->error('登录失败');
            }
        }else{
            $this->display('login');
        }
    }

    /**
     * 用户登录，如果之前有，直接读取用户名信息，如果没有添加一个新用户
     */
    public function wxlogin(){
        //判断来源
        $tools = new \Org\Wxpay\UserApi();
        $openId = $tools->GetOpenid();
        $wxInfo = $tools->getInfo();
        if(!$wxInfo || isset($wxInfo['errcode'])){
            S('wxLoginWxInfo',$wxInfo);
            $this->error('登录出了点状况',U('index/index'));
        }
//        $info = getWxUserInfo($openId);
//        if(!$info || isset($info['errcode'])){
//            S('wxLogin',$info);
//            $this->error('登录出了点状况',U('index/index'));
//        }
        $info = $wxInfo;
        //判断之前是否存储过用户资料
        $M = M('jms_user');
        $info = array_merge($info,$wxInfo);

        if(isset($info['headimgurl'])){
            $data['jms_photo'] = trim($info['headimgurl'],'0').'64';
        }
        $uInfo = $M->where(array('jms_wx_openid'=>$openId))->field('jms_id')->find();

        if($uInfo){
            $jid = $uInfo['jms_id'];
            $data['jms_id'] = $jid;
            $M->save($data);
        }else{
            //第一次登录 添加到用户表里面
            $name = $info['nickname'];
            $data['jms_name'] = $info['nickname'];  //账户
            $data['jms_nickname'] = $info['nickname'];      //昵称
            $data['jms_leader'] = $info['nickname'];    //
            $data['jms_address'] = $info['province'].$info['city'];   //联系地址
            $data['jms_area'] = $info['province'].$info['city'];   //配送范围
            $data['jms_money'] = $data['jms_jifen'] = 0;
            $data['jms_wx_openid'] = $openId;
            $data['jms_sex'] = $info['sex'];
//            $data['jms_password'] = md5($name);
            $jid = $M->add($data);
//            var_dump($data);
//            $this->display('wxLogin');die();
        }
        if($jid){
            $res = $M->find($jid);
            foreach($res as $k=>$v){
                session($k,$v);
            }
            $this->success('登录成功',U('jms/index'));
        }else{
            $this->error('登录失败');
        }
    }



    /**
     * 退出登录
     */
    public function logout(){
        session('jms_id',null);
        $this->success('您已安全退出',U('index/index'));
    }

    /**
     * 收货地址列表
     *
    public function myAddress(){
        $map['jsm_name'] = session('jsm_name');
        $list = M('jsmAddress')->where($map)->select();
        $this->assign('list',$list);
        $this->display('myAddress');
    }
     */

    /**
     * 添加地址
     *
    public function addAddress(){
        if(isset($_POST['submit'])){
            $data = $_POST;
            $data['jsm_name'] = session('jsm_name');
            if(M('jsmAddress')->add($data)){
                $this->success('添加成功');
            }else{
                $this->error('添加失败');
            }
        }else{
            $this->display('jsmAddress');
        }
    }
    */

    /**
     * 删除收货地址
     *
    public function delAddress(){
        $id = I('get.id');
        $map['jsm_address'] = $id;
        $map['jsm_name'] = session('jsm_name');
        if(M('jsmAddress')->delete($map)){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    */
}