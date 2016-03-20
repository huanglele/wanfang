<?php
/**
 * User: huanglele
 * Date: 2015/12/21
 * Time: 21:14
 */

function creatName($name){
    if(!$name){
        $name = date('YmdHis');
    }

    if(M('vipUser')->where(array('vip_name'=>$name))->find()){
        $name .= rand(0,9);
        $name = creatName($name);
    }
    return $name;
}


/**
 * @return string trade
 */
function creatTradeNum($strict = true){
    $trade = date('YmdHis').rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
    if($strict && M('wxpay')->find($trade)){
        $trade = creatTradeNum();
    }
    return $trade;
}


function printf_info($data)
{
    foreach($data as $key=>$value){
        echo "<font color='#00ff55;'>$key</font> : $value <br/>";
    }
}

/**
 *
 * 产生随机字符串，不长于32位
 * @param int $length
 * @return 产生的随机字符串
 */
function getNonceStr($length = 32)
{
    $chars = "abcdefghijklmnopqrstuvwxyz0123456789";
    $str ="";
    for ( $i = 0; $i < $length; $i++ )  {
        $str .= substr($chars, mt_rand(0, strlen($chars)-1), 1);
    }
    return $str;
}


function myCurl($url,$arr=false){
    $ch = curl_init();
    //设置超时
    curl_setopt($ch, CURLOPT_TIMEOUT, 6);
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER,FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST,FALSE);
    curl_setopt($ch, CURLOPT_HEADER, FALSE);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

    //运行curl，结果以jason形式返回
    $res = curl_exec($ch);
    curl_close($ch);
    return $res;
}

/**
 * @param $openId
 */
function getWxUserInfo($openId){
    $access = getWxAccessToken();
    $url = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=$access&openid=$openId&lang=zh_CN";
    $res = myCurl($url);
    $info = json_decode($res,true);
    return $info;
}

/**
 * @return mixed 微信凭证
 */
function getWxAccessToken(){
    $token = S('Wx-access_token');
    if(!$token){
        $Wx = C('Wx');
        $appId = $Wx['AppID'];
        $appSec = $Wx['AppSecret'];
        $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appId&secret=$appSec";
        $res = myCurl($url);
        $data = json_decode($res,true);
        $token = $data['access_token'];
        S('Wx-access_token',$token,$data['expires_in']-1000);
    }
    return $token;
}