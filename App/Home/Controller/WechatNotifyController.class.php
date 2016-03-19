<?php
/**
 * Author: huanglele
 * Date: 2016/1/11
 * Time: 23:52
 * Description:
 */

namespace Home\Controller;
use Org\Wxpay;

require_once LIB_PATH."Org/Wxpay/Include.function.php";

class WechatNotifyController extends \Org\Wxpay\WxPayNotify
{
    //查询订单
    public function Queryorder($transaction_id)
    {
        $input = new \Org\Wxpay\WxPayOrderQuery();
        $input->SetTransaction_id($transaction_id);
        $result = \Org\Wxpay\WxPayApi::orderQuery($input);
        if(array_key_exists("return_code", $result)
            && array_key_exists("result_code", $result)
            && $result["return_code"] == "SUCCESS"
            && $result["result_code"] == "SUCCESS")
        {
            return true;
        }
        return false;
    }

    //重写回调处理函数
    public function NotifyProcess($data, &$msg)
    {
        $notfiyOutput = array();
        S('notify',$data);
        if(!array_key_exists("transaction_id", $data)){
            $msg = "输入参数不正确";
            return false;
        }
        //查询订单，判断订单真实性
//        if(!$this->Queryorder($data["transaction_id"])){
//            $msg = "订单查询失败";
//            return false;
//        }
        //查询订单状态
        $Pay = M('wxpay');
        $payInfo = $Pay->field('pid,status,uid,type')->find($data['out_trade_no']);
        if($payInfo['status']==0){
            //修改支付表里面的信息，更新订单表
            $Pay->startTrans();
            $r1 = $Pay->where(array('pid'=>$data['out_trade_no']))->setField('status',1);
            if($payInfo['type']=='vip'){
                $map['vip_pid'] = $data['out_trade_no'];
                $data['vip_ddstate'] = 3;
                $M = M('vipDingdan');
            }else{
                $map['jms_pid'] = $data['out_trade_no'];
                $data['jms_ddstate'] = 3;
                $M = M('jmsDingdan');
            }
            $r2 = $M->where($map)->save($data);
            if($r1 && $r2){
                $Pay->commit();
                return true;
            }else{
                $Pay->rollback();
                $msg = '系统处理是吧';
                return false;
            }
        }else{ //订单已经处理过
            $msg = "订单已处理";
            return false;
        }
        return true;
    }
}
