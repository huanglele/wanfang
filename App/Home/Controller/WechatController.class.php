<?php
/**
 * Created by PhpStorm.
 * User: huanglele
 * Date: 2015/12/20
 * Time: 16:59
 */

namespace Home\Controller;
use Think\Controller;
use Org\Wxpay;

class WechatController extends Controller{

    public function test(){
        $this->display('index');
    }


    /**
     * @param Number $id 操作用户的ID
     * @param String $type vip or jms
     * @param Array $ddData [uname、address、phone、name] 【user表里面的name,收货地址,收货电话，收货人姓名】
     * @return bool
     */
    public function pay($id,$type,$openid,$ddData){
        //判断购物车里面是否有未付款的货物
        if($type=='vip'){
            $cartM = M('vipCart');
            $mapC['vip_pay_status'] = 0;
            $mapC['vip_buyer_id'] = $id;
            $mapC['vip_cart_id'] = array('in',$_POST['ids']);
            $dataCart['vip_pay_status'] = 1;
            $ddM = M('vipDingdan');
        }else if($type=='jms'){
            $cartM = M('jmsCart');
            $mapC['jms_pay_status'] = 0;
            $mapC['jms_buyer_id'] = $id;
            $dataCart['jms_pay_status'] = 1;
            $ddM = M('jmsDingdan');
        }else{
            return false;
        }
        $info = $cartM->where($mapC)->select();
        if(!empty($info)){
            //吧购物车里面的记录 转到订单里，修改购物车里面的status，
            $cartM->startTrans();
            $num = 0;
            $money = 0;
            $trade_no = creatTradeNum();
            $dataAll = array();
            foreach($info as $v){
                $temp = $v;
                if($type=='jms'){ //供应商
                    $temp['jms_ddtime'] = date('Y-m-d H:i:s');
                    $temp['jms_ddnum'] = creatTradeNum(0);
                    $temp['jms_ddage'] = $v['jms_goods_num'];
                    $temp['jms_gid'] = $v['jms_goods_id'];
                    $temp['jms_gname'] = $v['jms_goods_name'];
                    $temp['jms_sid'] = $v['jms_store_id'];
                    $temp['jms_store'] = $v['ms_store_name'];
                    $temp['jms_uid'] = $id;
                    $temp['jms_uname'] = $ddData['uname'];
                    $temp['jms_address'] = $ddData['address'];
                    $temp['jms_phone'] = $ddData['phone'];
                    $temp['jms_state'] = 1;
                    $temp['jms_price'] = $v['jms_goods_price'];
                    $temp['jms_consignee'] = $ddData['name'];
                    $temp['jms_ddact'] = '微信支付';
                    $temp['jms_ddstate'] = 1;
                    $temp['jms_sphone'] = M('gysUser')->where(array('gys_id'=>$v['jms_store_id']))->getField('gys_phone');
                    $temp['jms_pid'] = $trade_no;
                    $num += $v['jms_goods_num'];
                    $money += $v['jms_goods_num']*$v['jms_goods_price'];
                }else{  //消费者
                    $temp['vip_ddtime'] = date('Y-m-d H:i:s');
                    $temp['vip_ddnum'] = creatTradeNum(0);
                    $temp['vip_ddage'] = $v['vip_goods_num'];
                    $temp['vip_gid'] = $v['vip_goods_id'];
                    $temp['vip_gname'] = $v['vip_goods_name'];
                    $temp['vip_sid'] = $v['vip_store_id'];
                    $temp['vip_store'] = $v['vip_store_name'];
                    $temp['vip_uid'] = $id;
                    $temp['vip_uname'] = $ddData['uname'];  //购买者
                    $temp['vip_address'] = $ddData['address'];//收货地址
                    $temp['vip_phone'] = $ddData['phone'];//收货电话
                    $temp['vip_state'] = 1;
                    $temp['vip_price'] = $v['vip_goods_price'];
                    $temp['vip_consignee'] = $ddData['name'];//收货人姓名
                    $temp['vip_ddact'] = '微信支付';
                    $temp['vip_ddstate'] = 1;
                    $temp['vip_sphone'] = M('jmsUser')->where(array('jms_id'=>$v['vip_store_id']))->getField('jms_phone');
                    $temp['vip_pid'] = $trade_no;
                    $num += $v['vip_goods_num'];
                    $money += $v['vip_goods_num']*$v['vip_goods_price'];
                }
                $dataAll[] = $temp;
            }
            $r1 = $ddM->addAll($dataAll);
            $r2 = $cartM->where($mapC)->save($dataCart);
            $body = '付款金额'.$money.'元';
            $attach = $type;
            $tag = '共'.$num.'件商品';
            $order = $this->sendPay($openid,$body,$attach,$trade_no,$money*100,$tag);
            if($order['result_code']=='SUCCESS'){//生成订单信息成功
                //创建支付表里面的记录
                $data['pid'] = $trade_no;
                $data['uid'] = $id;
                $data['creattime'] = time();
                $data['status'] = 0;
                $data['type'] = $attach;
                $data['money'] = $money;
                $r3 = M('wxpay')->add($data);
                if($r1 && $r2 && $r3){
                    $this->assign('money',$money);
                    $this->assign('num',$num);
                    $this->assign('pid',$trade_no);
                    $cartM->commit();
                    $this->display('pay');
                }else{
                    $cartM->rollback();
                    $this->error('系统错误请重试',U('user/index'));
                }
            }else{  //请求支付参数时出错
                $cartM->rollback();
                $this->error('请求支付出错',U('user/index'));
            }
        }else{  //任务当前不是竞猜状态
            $this->error('购物车没有货物了',U('user/index'));
        }
    }

    /**
     * 像微信发起一个支付
     * @param $openId
     * @param $body
     * @param $attach
     * @param $money
     * @param $tag
     * @return Wxpay\成功时返回
     * @throws Wxpay\WxPayException
     */
    private function sendPay($openid,$body,$attach,$trade_no,$money,$tag){
        //①、获取用户openid
        $tools = new \Org\Wxpay\JsApi();
        //②、统一下单
        $input = new \Org\Wxpay\WxPayUnifiedOrder();
        $input->SetBody($body);
        $input->SetAttach($attach);
        $input->SetOut_trade_no($trade_no);
        $input->SetTotal_fee($money);
        $input->SetTime_start(date("YmdHis"));
        $input->SetTime_expire(date("YmdHis", time() + 600));
        $input->SetGoods_tag($tag);
        $input->SetNotify_url(C('Wx.notify_url'));
        $input->SetTrade_type("JSAPI");
        $input->SetOpenid($openid);
        $order = \Org\Wxpay\Wxpay::unifiedOrder($input);
        $jsApiParameters = $tools->GetJsApiParameters($order);
        $this->assign('jsApiParamerers',$jsApiParameters);
        //获取共享收货地址js函数参数
        //$editAddress = $tools->GetEditAddressParameters();
        //$this->assign('address',$editAddress);
        return $order;
    }


    public function refund($pid){
        $out_trade_no = $pid;
        $Pay = M('pay');
        $info = $Pay->where(array('pid'=>$pid))->field('money,status')->find();
        $total_fee =  $refund_fee = $info['money']*100;
        $res = $this->sendRefund($out_trade_no,$total_fee,$refund_fee);
        if($res['result_code']=='SUCCESS'){
            if($res['return_code']=='SUCCESS'){
                //退款成功 修改记录
                $Pay->where(array('pid'=>$pid))->setField('status',2);
                M('guess')->where(array('pid'=>$pid))->setField('result',4);
                return true;
            }elseif($res['return_code']=='FAIL'){
                //订单出错
                if($info['status']==0)
                    $Pay->where(array('pid'=>$pid))->setField('status',3);
            }
            return false;
        }else{
            return false;
        }
    }

    /**
     * @param $out_trade_no
     * @param $total_fee
     * @param $refund_fee
     */
    private function sendRefund($out_trade_no,$total_fee,$refund_fee){
        require_once LIB_PATH."Org/Wxpay/Include.function.php";
        $input = new \Org\Wxpay\WxPayRefund();
        $input->SetOut_trade_no($out_trade_no);
        $input->SetTotal_fee($total_fee);
        $input->SetRefund_fee($refund_fee);
        $input->SetOut_refund_no(C('Wx.mch_id').date("YmdHis"));
        $input->SetOp_user_id(C('Wx.mch_id'));
        return (\Org\Wxpay\WxPayApi::refund($input));
    }

    //微信支付异步通知
    public function notify(){
        C('SHOW_PAGE_TRACE',false);
        $Handle = A('WechatNotify');
        $Handle->handle(false);
    }

    /**
     * 查询订单
     */
    public function call(){
        $id = I('get.id');
        $Handle = A('WechatNotify');
        $Handle->Queryorder($id);
    }

    public function getD(){
        $ac = I('get.ac');
        if($ac=='set'){
            S('notify',array('1','2'));
        }elseif($ac=='null'){
            S('notify',null);
        }else{

        }
        var_dump(S('notify'));
    }


    /**
     * 收银柜台服务器验证是否支付成功
     */
    public function check(){
        $pid = I('get.id');
        $res = M('wxpay')->where(array('pid'=>$pid))->getField('status');
        if($res===false){
            $res = 0;
        }
        echo $res;
    }

}