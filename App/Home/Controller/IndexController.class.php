<?php
/**
 * Author: huanglele
 * Date: 2016/1/10
 * Time: 18:00
 * Description:首页
 */

namespace Home\Controller;
use Think\Controller;

class IndexController extends Controller
{

    /**
     * @var array 商品列表搜索数组
     */
    private $map = array();

    /**
     * 处理一个位置信息
     */
    public function _initialize(){

    }

	
    /**
     * 展示附件的商品、店家
     */
    public function index(){
        //获取十二家店铺
        $dianpu = M('jmsUser')->limit(12)->order('jms_jifen desc')->field('jms_id as id,jms_photo as img,jms_nickname as gname')->select();
        $this->assign('dianpu',$dianpu);
        $M = M('jmsGoods');
        $field = 'jms_gid as gid,jms_gname as name,jms_vipprice as vipprice,jms_price as price,jms_paynum as paynum,jms_photo as photo';

        $map['jsm_status'] = 1;
        $map['jms_new']=1;
        $new = $M->where($map)->field($field)->order('gid desc')->limit(6)->select();
        $this->assign('new',$new);
        unset($map['jms_new']);
        $map['jms_hot'] = 1;
        $hot = $M->where($map)->field($field)->order('gid desc')->limit(6)->select();
        $this->assign('hot',$hot);
        $this->display();
    }

    /**
     * 分类页面
     */
    public function sort(){
        $M = M('jmsKinds');
        //查询所有的一级父类ID
        $parent = $M->where(array('jms_parentid'=>0))->getField('jms_kid,jms_kname');
        $parentIds = array();
        $data = array();
        foreach($parent as $k=>$v){
            $temp['name'] = $v;
            $temp['son'] = array();
            $data[$k] = $temp;
            $parentIds[] = $k;
        }
        $map['jms_parentid'] = array('in',$parentIds);
        $son = $M->where($map)->getField('jms_kid,jms_kname,jms_parentid',true);
        foreach($son as $v){
            $data[$v['jms_parentid']]['son'][] = $v;
        }
        $this->assign('list',$data);
        $this->display();
    }

    /**
     * 健康查询
     */
    public function findOld(){
        $v = I('get.v');
        if($v){
            $t['name'] = 'name';
            $t['place'] = '123';
            $t['xueye'] = '21';
            $t['xinlv'] = '131';
            $t['zhifang'] = '123';
            $t['xuetang'] = '12';
            $data[] = $t;
        }else{
            $data = array();
        }
        $this->assign('list',$data);
        $this->display('findOld');
    }

    /**
     * 服务
     */
    public function service(){
        $this->display('service');
    }

    /**
     * 服务的详细信息
     */
    public function servicePage(){
        $id = I('get.type');
        $M = M('jmsUser');
        $map['jms_kid'] = $id;
        $ids = M('jmsGoods')->where($map)->getField('jms_id',true);
        if($ids){
            $list = $M->field('jms_nickname as name,jms_phone as tel,jms_leader as leader,jms_area as area,jms_photo as img')->where(array('jms_id'=>array('in',$ids)))->select();
        }else{
            $list = array();
        }
//        var_dump($list);
        $this->assign('list',$list);
        $this->display('servicePage');
    }

    /**
     * 所有商品
     */
    public function goods(){
        $map = array();
        //分类
        $kid = I('get.kid',0,'number_int');
        if($kid){
            $Kmap['jms_kid|jms_parentid'] = $kid;
            $map['jms_kid'] = array('in',M('jmsKinds')->where($Kmap)->getField('jms_kid',true));
//            $map['jms_kid'] = $kid;
        }
        //是否是hot商品
        $hot = I('get.hot');
        if($hot=='1'){
            $map['jms_hot'] = 1;
        }
        //最新商品
        $new = I('get.new');
        if($new==1){
            $map['jms_new'] = 1;
        }
        //某一个店铺的商品
        $storeid = I('get.storeid',0,'number_int');
        if($storeid){
            $map['jms_id'] = $storeid;
        }
        //搜索某个名字的商品
        $name = I('get.name');
        if($name){
            $map['jms_gname'] = array('like','%'.$name.'%');
        }
        $this->assign('name',$name);
        $this->map = $map;
        $url = U('index/goods')."?kid=$kid&name=$name";
        $this->assign('url',$url);
        $orderFiled = I('get.order');
        $orderFileds = array('jms_gid','jms_vipprice','jms_paynum','jms_colnum');
        if(!in_array($orderFiled,$orderFileds)){
            $orderFiled = 'jms_gid';
        }
        $px = I('get.px',0,'number_int');
        if($px==1){
            $order = "$orderFiled asc";
            $this->assign('px',0);
        }else {
            $order = "$orderFiled desc";
            $this->assign('px',1);
        }
        $this->getGoodsList(array(),$order);
        $this->display('goods');
    }

    /**
     * 用户只看加盟商的
     * @param $map 搜索的条件
     *
     */
    private function getGoodsList($map=array(),$order=false){
        if(!$order){
            $order = 'jms_gid desc';
        }
        $M = M('jmsGoods');
        $map = array_merge($map,$this->map);
        $map['jms_status'] = 1;
        $count = $M->where($map)->count();
        $Page = new \Think\Page($count,20);
        $page = $Page->show();
        $list = $M->where($map)
            ->field('jms_gid as gid,jms_gname as name,jms_vipprice as vipprice,jms_price as price,jms_paynum as paynum,jms_photo as photo')
            ->order($order)
            ->limit($Page->firstRow,$Page->listRows)
            ->select();
//        var_dump($list);
        $this->assign('list',$list);
        $this->assign('page',$page);
        return $list;
    }

    public function item(){
        $id = I('get.id');
        $info = M('jms_goods')->find($id);
        if(!$info) $this->error('页面不存在');
        $ids = session('vip_favorites');
        $idsArr = explode(',',$ids);
        if(in_array($id,$idsArr)){
            $fav = true;
        }else{
            $fav = false;
        }
        $this->assign('fav',$fav);
        $this->assign('info',$info);
        $this->display('item');
    }

    public function test(){
        $url = 'http://hjzx.hrbjjt.com:7777/WebService.asmx';
        $soap = new \SoapClient('http://hjzx.hrbjjt.com:7777/WebService.asmx?WSDL');
        $arr = array('sfz'=>230503197001106113);
        $r3 = $soap->GetKeyBySfz('230503197001106113');
        $result2 = $soap->__soapCall("GetKeyBySfz",$arr);
        var_dump($soap,$r3,$result2);
    }

    public function march(){
        echo creatTradeNum();
    }

    /**
     * ajax 返回某个地区下面的区域
     */
    public function ajax_get_district(){
        $id = I('get.cid');
        $list = M('district')->where(array('cid'=>$id))->getField('dname',true);
        if($list){
            $info['status'] = 'ok';
            $info['data'] = $list;
        }else{
            $info['status'] = 'error';
            $info['msg'] = '没有数据';
        }
        $this->ajaxReturn($info);
    }

}