<?php

namespace Org\QQ;

class QQConnect
{

    public $data = null;

    /**
     *
     * 通过跳转获取用户的openid，跳转流程如下：
     * 1、设置自己需要调回的url及其其他参数，跳转到微信服务器https://open.weixin.qq.com/connect/oauth2/authorize
     * 2、微信服务处理完成之后会跳转回用户redirect_uri地址，此时会带上一些参数，如：code
     *
     * @return 用户的openid
     */
    public function GetOpenid()
    {
        //通过code获得openid
        if (!isset($_GET['code'])){
            //触发微信返回code码
            $baseUrl = urlencode(C('QqLogin.CallBack'));
            $url = $this->__CreateOauthUrlForCode($baseUrl);
            Header("Location: $url");
            exit();
        } else {
            //获取code码，以获取openid
            $code = $_GET['code'];
            $access_token = $this->GetTokenFromMp($code);
            $url = 'https://graph.qq.com/oauth2.0/me?access_token='.$access_token;
            $response = $this->get_contents($url);
            //--------检测错误是否发生
            if(strpos($response, "callback") !== false){

                $lpos = strpos($response, "(");
                $rpos = strrpos($response, ")");
                $response = substr($response, $lpos + 1, $rpos - $lpos -1);
            }

            $user = json_decode($response);
            if(isset($user->error)){
                return 'error';
            }else{
                return $user->openid;
            }
        }
    }


    /**
     *
     * 通过code从工作平台获取access_token
     * @param string $code 微信跳转回来带上的code
     *
     * @return access_token
     */
    public function GetTokenFromMp($code)
    {
        $url = $this->__CreateOauthUrlForToken($code);
        $res = $this->get_contents($url);
        $param = array();
        parse_str($res, $param);
        return $param["access_token"];
    }

    /**
     * get_contents
     * 服务器通过get请求获得内容
     * @param string $url       请求的url,拼接后的
     * @return string           请求返回的内容
     */
    public function get_contents($url){
        if (ini_get("allow_url_fopen") == "1") {
            $response = file_get_contents($url);
        }else{
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
            curl_setopt($ch, CURLOPT_URL, $url);
            $response =  curl_exec($ch);
            curl_close($ch);
        }

        //-------请求为空
        if(empty($response)){
            return null;
        }else{
            return $response;
        }
    }

    /**
     *
     * 拼接签名字符串
     * @param array $urlObj
     *
     * @return 返回已经拼接好的字符串
     */
    private function ToUrlParams($urlObj)
    {
        $buff = "";
        foreach ($urlObj as $k => $v)
        {
            if($k != "sign"){
                $buff .= $k . "=" . $v . "&";
            }
        }

        $buff = trim($buff, "&");
        return $buff;
    }


    /**
     *
     * 构造获取code的url连接
     * @param string $redirectUrl 微信服务器回跳的url，需要url编码
     *
     * @return 返回构造好的url
     */
    private function __CreateOauthUrlForCode($redirectUrl)
    {
        $urlObj["client_id"] = C('QqLogin.AppId');
        $urlObj["redirect_uri"] = "$redirectUrl";
        $urlObj["response_type"] = "code";
        $urlObj["scope"] = "snsapi_base";
        $urlObj["state"] = "1";
        $urlObj["display"] = "mobile";
        $bizString = $this->ToUrlParams($urlObj);
        return "https://graph.qq.com/oauth2.0/authorize?".$bizString;
    }

    /**
     *
     * 构造获取access_toke的url地址
     * @param string $code，微信跳转带回的code
     *
     * @return 请求的url
     */
    private function __CreateOauthUrlForToken($code)
    {
        $url = urlencode(C('QqLogin.CallBack'));
        $urlObj["client_id"] = C('QqLogin.AppId');
        $urlObj["client_secret"] = C('QqLogin.AppSecret');
        $urlObj["code"] = $code;
        $urlObj["grant_type"] = "authorization_code";
        $urlObj["redirect_uri"] = "$url";
        $bizString = $this->ToUrlParams($urlObj);
        return "https://graph.qq.com/oauth2.0/token?".$bizString;
    }

}