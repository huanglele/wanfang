<?php
/**
 * Author: huanglele
 * Date: 2016/1/15
 * Time: 15:08
 * Description:
 */

namespace Home\Controller;
use Think\Controller;

class UserController extends Controller
{

    public function _initialize(){
        $arr = array('login','logout','qqlogin','wxlogin','register');
        $vid = session('vip_id');
        if(!in_array(strtolower(ACTION_NAME),$arr)){
            //不是不用登录的方法
            if($vid){

            }else{
                $this->login();
                die;
            }
            $this->vid = $vid;
        }
    }


    public function index(){
        $this->display('index');
    }


    /**
     * 添加取消收藏
     */
    public function addFav(){
        $id = I('get.id',0,'number_int');
        $ac = I('get.ac');
        $M = M('vipUser');
        $str = $M->where(array('vip_id'=>$this->vid))->getField('vip_favorites');
        $arr = explode(',',$str);
        if($ac == 'undo'){
            foreach($arr as $k=>$v){
                if($v==$id){
                    unset($arr[$k]);break;
                }
            }
        }else{
            $arr[] = $id;
            $arr = array_unique($arr);
        }
        $newStr = '';
        foreach($arr as $v){
            $newStr .= $v.',';
        }
        if($str!=$newStr){
            session('vip_favorites',$newStr);
            $M->where(array('vip_id'=>$this->vid))->setField('vip_favorites',$newStr);
        }
        $this->success('操作成功');
    }

    /**
     * 我的收藏
     */
    public function myFav(){
        $ids = session('vip_favorites');
        $idsArr = explode(',',$ids);
        if(empty($idsArr)){
            $list = array();
        }else{
            $list = M('jmsGoods')->where(array('jms_gid'=>array('in',$idsArr)))->select();
        }
        $this->assign('list',$list);
//        var_dump($list);
        $this->display('myFav');

    }

    /**
     * 我的信息
     */
    public function myInfo(){
        if(isset($_POST['submit'])){
            $data = $_POST;
            $data['vip_id'] = $this->vid;
            if(M('vipUser')->save($data)){
                $this->success('修改成功');
            }else{
                $this->error('修改失败');
            }
        }else{
            $info = M('vipUser')->find($this->vid);
            $this->assign('info',$info);
            $this->display('myInfo');
        }
    }

    /**
     * 添加购物车
     */
    public function addCart(){
        $id = I('get.id');
        $num = I('get.num',0,'number_int');
        $info = M('jmsGoods')->find($id);
        if(!$info) $this->error('商品不存在');
        $data['vip_buyer_id'] = $this->vid;
        $data['vip_store_id'] = $info['jms_id'];
        $data['vip_store_name'] = M('jmsUser')->where(array('jms_id'=>$info['jms_id']))->getField('jms_nickname');
        $data['vip_goods_id'] = $id;
        $data['vip_goods_name'] = $info['jms_gname'];
        $data['vip_goods_price'] = $info['jms_vipprice'];
        $data['vip_goods_num'] = $num;
        $data['vip_goods_image'] = $info['jms_photo'];
        $data['vip_pay_status'] = 0;
        if(M('vipCart')->add($data)){
            $this->success('操作成功',U('user/myCart'));
        }else{
            $this->error('添加失败');
        }
    }

    /**
     * 删除购物车
     */
    public function delCart(){
        $id = I('get.id');
        $map['vip_cart_id'] = $id;
        $map['vip_buyer_id'] = $this->vid;
        if(M('vipCart')->where($map)->delete()){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

    /**
     * 我的购物车
     */
    public function myCart(){
        if(!cookie('wxopenid')){
            $tools = new \Org\Wxpay\JsApi();
            $openid = $tools->GetOpenid();
            cookie('wxopenid',$openid);
        }
        $map['vip_buyer_id'] = $this->vid;
        $map['vip_pay_status'] = 0;
        $list = M('vipCart')->where($map)->select();
        $this->assign('list',$list);
//        var_dump($list);
        //选择收货地址
        $arr = M('vipAddress')->where(array('vip_name'=>session('vip_name')))->select();
        $adds = array();
        if($arr) {
            foreach ($arr as $v) {
                $temp['id'] = $v['vip_addressid'];
                $temp['ad'] = $v['vip_consignee'].'-'.$v['mobile'];
                $adds[$v['vip_addressid']] = array_merge($temp,$v);
            }
        }else{
            $adds = array();
        }
//        var_dump($openid);
        $this->assign('adds',$adds);
        $this->assign('addsJosn',json_encode($adds,true));
        $this->display('myCart');
    }

    /**
     * 提交订单
     */
    public function buy(){
        $addid = I('post.addressid');
        $info = M('vipAddress')->find($addid);
        if($info && $info['vip_name']==session('vip_name')){
            if(!cookie('wxopenid')) $this->error('参数错误',U('user/myCart'));
            $data['uname'] = $info['vip_name']; //
            $data['name'] = $info['vip_consignee']; //收货人
            $data['phone'] = $info['mobile']; //收货人电话
            $data['address'] = $info['city'].$info['district'].$info['address'];
            $Wx = A('Wechat');
            $Wx->pay($this->vid,'vip',cookie('wxopenid'),$data);
            die;
        }else{
            $this->error('地址错误');
        }
    }

    /**
     * 获取当前微信客户端里面的用户openid
     */
    public function getCurrentUserWxOpenid(){
        $tools = new \Org\Wxpay\JsApi();
        $openid = $tools->GetOpenid();
    }

    /**
     * 登录
     */
    public function login(){
        if(isset($_POST['submit'])){
            $map['vip_name'] = I('post.vip_name');
            $map['vip_password'] = md5(I('post.vip_password'));
            $M = M('vipUser');
            $info = $M->where($map)->find();
            if($info){
                $from = I('post.from');
                $openid = I('post.openid');
                foreach ($info as $k => $v) {
                    session($k,$v);
                }
                if($openid){
                    if($from=='qq'){
                        $data['vip_qq_openid'] = $openid;
                    }else if($from=='wx'){
                        $data['vip_wx_openid'] = $openid;
                    }else{
                        $this->success('登录成功',U('user/index'));
                    }
                    $data['vip_id'] = $info['vip_id'];
                    $M->save($data);
                    $this->success('绑定成功',U('user/index'));
                }else{
                    $this->success('登录成功',U('user/index'));
                }
            }else{
                $this->error('用户名或者密码错误');
            }

        }else{
            $from = I('get.from');
            $this->assign('from',$from);
            $this->display('login');
        }
    }

    /**
     * QQ 登录
     */
    public function qqlogin(){
        C('SHOW_PAGE_TRACE',false);
        $qq = new \Org\QQ\QQConnect();
        $openid = $qq->GetOpenid();
        //查找是否注册过
        $info = M('vipUser')->where(array('vip_qq_openid'=>$openid))->find();
        if($info){
            foreach ($info as $k => $v) {
                session($k,$v);
            }
            $this->assign('openid',$openid);
            $this->success('登录成功',U('user/index'));
        }else{
            //提示注册或者绑定账号
            $this->assign('openid',$openid);
            $this->display('qqLogin');
        }
    }

    public function importSql(){
        $sql = file_get_contents('./wanfang.sql');
        $M = new \Think\Model();
        $info = $M->execute($sql);
        var_dump($info);
    }

    public function info(){
        $vid = session('vip_id');
        $res = M('vip_user')->find($vid);
        foreach($res as $k=>$v){
            session($k,$v);
        }
        var_dump($res,session('vip_wx_openid'));

    }


    /**
     * 微信登录
     */
    /*public function wxlogin(){
        C('SHOW_PAGE_TRACE',false);
        $Wx = new \Org\Wxpay\JsApi();
        $openid = $Wx->GetOpenid();
        //查找是否注册过
        $info = M('vipUser')->where(array('vip_wx_openid'=>$openid))->find();
        if($info){
            foreach ($info as $k => $v) {
                session($k,$v);
            }
            $this->assign('openid',$openid);
            $this->success('登录成功',U('user/index'));
        }else{
            //提示注册或者绑定账号
            $this->assign('openid',$openid);
            $this->display('wxLogin');
        }
    }*/

    /**
     * 用户登录，如果之前有，直接读取用户名信息，如果没有添加一个新用户
     */
    public function wxlogin(){
        //判断来源
        $this->loginReferer();
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
        $M = M('vip_user');
        $info = array_merge($info,$wxInfo);

        if(isset($info['headimgurl'])){
            $data['vip_pic'] = trim($info['headimgurl'],'0').'64';
        }
        $uInfo = $M->where(array('vip_wx_openid'=>$openId))->field('vip_id')->find();

        if($uInfo){
            $vid = $uInfo['vip_id'];
            $data['vip_id'] = $vid;
            $M->save($data);
        }else{
            //第一次登录 添加到用户表里面
            $name = creatName($info['nickname']);   //生成一个不重名的随机名字
            $data['vip_name'] = $info['nickname'];
            $data['vip_wx_openid'] = $openId;
            $data['vip_sex'] = $info['sex'];
            $data['vip_password'] = md5($name);
            $vid = $M->add($data);
//            var_dump($data);
//            $this->display('wxLogin');die();
        }
        if($vid){
            $res = $M->find($vid);
            foreach($res as $k=>$v){
                session($k,$v);
            }
            $referer = session('referer');
            if($referer){
                $jump = $referer;
            }else{
                $jump = U('index');
            }
            session('referer',null);
            $this->success('登录成功',U('user/index'));
        }else{
            $this->error('登录失败');
        }
    }


    /**
     * 登录跳转
     */
    private function loginReferer(){
        $referer = $_SERVER['HTTP_REFERER'];
        $host = $_SERVER['HTTP_HOST'];
        $patten = "/^http:\/\/$host(\/index.php)?(.*)$/i";
        if(preg_match($patten,$referer,$arr)){
            $uri = $arr[2];
            if(!preg_match('/^user\/(.{0,3})login',$uri)){
                session('referer',$referer);
            }
        }
    }


    /**
     * 退出登录
     */
    public function logout(){
        session('vip_id',null);
        $this->success('您已安全退出',U('index/index'));
    }

    /**
     * 修改登录密码
     */
    public function password(){
        if(isset($_POST['submit'])){
            $data['vip_password'] = md5(I('post.new'));
            $map['vip_password'] = md5(I('post.old'));
            $data['vip_id'] = $map['vip_id'] = $this->vid;
            $M = M('vipUser');
            if($M->where($map)->find()){
                if($data['vip_password']==$map['vip_password']) $this->error('新密码和原始密码相同');
                if($M->save($data)){
                    $this->success('修改成功',U('user/index'));
                }else{
                    $this->error('修改失败');
                }
            }else{
                $this->error('原始密码错误');
            }
        }else{
            $this->display('password');
        }
    }

    /**
     * 注册
     */
    public function register(){
        if(isset($_POST['submit'])){
            $data = $_POST;
            $data['vip_password'] = md5($_POST['vip_password']);
            $M = M('vipUser');
            if(!$data['vip_name']) $this->error('用户名不能为空');
            if(!$data['vip_password']) $this->error('密码不能为空');
            if(!$data['vip_phone']) $this->error('手机号不能为空');
            if(!$data['vip_email']) $this->error('邮箱不能为空');
            if($_POST['vip_password']!=$_POST['vip_password2']) $this->error('两次密码不一致');
            //判断是否重名
            if($M->where(array('vip_name'=>$data['vip_name']))->find()) $this->error('用户名已存在');
            $from = I('post.from');
            $openid = session('openid');
            if($openid){
                if($from=='qq'){
                    $data['vip_qq_openid'] = session('openid');
                }else if($from=='wx'){
                    $data['vip_wx_openid'] = session('openid');
                }
            }
            $info = $M->add($data);
            if($info){
                $this->success('注册成功',U('login'));
            }else{
                $this->error('注册失败请重试');
            }

        }else{
            $from = I('get.from');
            $this->assign('from',$from);
            $this->display('register');
        }
    }

    /**
     * 收货地址列表
     */
    public function myAddress(){
        $map['vip_name'] = session('vip_name');
        $list = M('vipAddress')->where($map)->select();
        $this->assign('list',$list);
//        var_dump($list);
        $this->display('myAddress');
    }

    /**
     * 添加地址
     */
    public function addAddress(){
        if(isset($_POST['submit'])){
            $data = $_POST;
            $data['vip_name'] = session('vip_name');
            $vip_addressid = I('post.vip_addressid',0,'number_int');
            if($vip_addressid){
                $data['vip_addressid'] = $vip_addressid;
                $r1 = M('vipAddress')->save($data);
            }else{
                $r1 = M('vipAddress')->add($data);
            }
            if($r1){
                $this->success('操作成功',U('myAddress'));
            }else{
                $this->error('操作失败');
            }
        }else{
            $id = I('get.id');
            if($id){
                $info = M('vipAddress')->find($id);
            }else{
                $info = array();
            }
            $this->assign('info',$info);
            $this->display('addAddress');
        }
    }

    /**
     * 删除收货地址
     */
    public function delAddress(){
        $id = I('get.id');
        $map['vip_addressid'] = $id;
        $map['vip_name'] = session('vip_name');
        if(M('vipAddress')->where($map)->delete()){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

    /**
     * 我的订单
     */
    public function orderList(){
        $status = I('get.status',0,'number_int');
        $this->assign('status',$status);
        $map = array();
        if($status){
            $map['vip_ddstate'] = $status;
        }
        $map['vip_uid'] = $this->vid;
        $M = M('vipDingdan');
        $count = $M->where($map)->count();
        $Page = new \Think\Page($count,20);
        $page = $Page->show();
        $list = $M->where($map)
            ->field('vip_ddid as oid,vip_sphone as phone,vip_ddtime as time,vip_ddnum as num,vip_price as price,vip_ddstate as state,vip_gid as gid')
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
        $this->assign('picArr',$picArr);
        $this->assign('list',$list);
        $this->assign('page',$page);
        $this->assign('OrderStatus',C('OrderStatus'));
        $this->display('orderList');
    }

    /**
     * 查看单个订单
     */
    public function myOrder(){
        $id = I('get.id');
        $map['vip_ddid'] = $id;
        $map['vip_uid'] = $this->vid;
        $info = M('vipDingdan')->where($map)->find();
        if($info){
            $this->assign('info',$info);
            $this->display('myOrder');
        }else{
            $this->error('订单不存在');
        }
    }

    /**
     * 处理自己的订单
     */
    public function doGoods(){
        $id = I('get.id');
        $ac = I('get.ac');
        $data['vip_ddid'] = $id;
        $data['vip_ddstate'] = $ac;
        $data['vip_uid'] = $this->vid;
        M('vipDingdan')->save($data);
        $this->success('操作成功');
    }


}