<?php
$WxHost = 'wanfang.91yiso.com';    //定义微信后台地址
return array(
     //微信支付配置项
    'Wx' => array(
        'AppID' => 'wx00fbe435a120f2e0',        //微信APPID
        'AppSecret' => '6685623e3a5736f7c771f30254e0b168',  //微信APPsecret
        'key' => 'hrbjjiatqingbokejiwanfangjixiang',
        'mch_id' => '1299868601', //商户号
        'notify_url' => 'http://'.$_SERVER['HTTP_HOST'].'/index.php/wechat/notify',
        'SSLCERT_PATH' =>  LIB_PATH."Org/Wxpay/apiclient_cert.pem",
        'SSLKEY_PATH' =>  LIB_PATH."Org/Wxpay/apiclient_key.pem",
        'CURL_PROXY_HOST' => "0.0.0.0",
        'CURL_PROXY_PORT' => 0,
        'REPORT_LEVENL' => 1,
    ),
    //QQ 配置
    'QqLogin' => array(
        'AppId' => '101281325',
        'AppSecret' => '3a42524d51b7be1f6c83cfd420cbd9f8',
        'CallBack' => 'http://'.$_SERVER['HTTP_HOST'].'/index.php/user/qqlogin',
    ),
);