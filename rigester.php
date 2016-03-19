<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="javascript" src="js/asd.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<title>聊天室</title>
</head>
<script>
//接受表单数据并判断内容是否为空
	function getAndJudge($val,$str){
		if(empty($_POST[$val])){
			echo "<script> alert('".$str."');</script>";
			exit();
		}else{
			return $_POST[$val];
		}
	}
	
	//接受表单数据并判断内容是否为空 
	function getAndJudge2($val,$str){
		if(empty($_POST[$val])){
			echo "<script > alert('".$str."'); </script>";
			exit();
		}else{
			return $_POST[$val];
		}
	}
</script>	

<body>
	<div>
			用户注册
			<form action="message.php" method="post">
			<table id="table1">
				<tr>
					<td class="td1">昵称：</td>
					<td><input type="text"  name="nickname" /> *</td>
				</tr>
				<tr>
					<td class="td1">密码：</td>
					<td><input type="password" name="password" /> *</td>
				</tr>				
				<tr>
					<td class="td1">确认密码：</td>
					<td><input type="password" name="password2" /> *</td>
				</tr>				
				<tr>
					<td class="td1">邮箱：</td>
					<td><input type="text" name="email" id="email"/> *<span id="xs"></span></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value=" 注册 " id="submit" /></td>
				</tr> 
			</table>
			</form>
	</div>
</body>
</html>
<?php
if(!empty($_POST)){//判断是否输入
		$_POST['password'] = md5($_POST['password']);	
		$code=$_POST['vcode'];
		if($code==$_SESSION['code']){
			if(add('users',$_POST)){//判断数组是否为空
					$email=$_POST['email'];
					$reg='/^[0-9a-zA-Z][\w\.\-]*@[\w\-]+\.(com|cn|net|com\.cn)$/';
					preg_match($reg,$email,$result);				
					//var_dump($mail);die;
					header('location:chat');//注册成功，跳转页面
				}else{
					echo '<script>alert("注册失败！");window.location.href="rigester.php"</script>';
				}
		}else{
					echo '<script>alert("验证码错误！");window.location.href="rigester.php"</script>';
		}
}
?>

<?php
$nickname = getAndJudge('nickname','昵称不能为空！');
$password = getAndJudge('password','密码不能为空！');
$password2 = getAndJudge2('password2','重复密码不能为空！');

if($password==$password2){
	$password = md5($password);
}else{
	echo "<script> alert('重复密码有误'); </script>";
}
$sql = "select * from user where nickname='".$nickname."';";
$res = mysql_query($sql,$link);
$row = mysql_num_rows($res);

if ($row == 1){
	echo "<script type='text/javascript'> alert('该用户名已经被注册'); history.back();</script>";
}
$sql = "insert into `user` (`nickname`,`password`,`reg_time`) values ('$nickname','$password',now());";
$res = mysql_query($sql);
if($res){
	header('login.php');
}else{
	echo "<script> alert('对不起！注册失败！'); </script>";
}

?>

<script>
$('#email').blur(function(){
	var email=$(this).val();
	var reg=/^[0-9a-zA-Z][\w\.\-]*@[\w\-]+\.(com|cn|net|com\.cn)$/;
	var result=reg.exec(email);
	//alert(result);
	if(!result){
		$('#xs').html('<font color="red">邮箱格式错误！</font>')
	}else{
		$('#xs').html('<font color="green">√</font>')
	}
})
//换一个
$('#code').click(function(){
	//alert('ok');
	var num=Math.random();
	$('#codeImg').attr('src','index.php?a=0&c=user&v=vcode&num='+num);
})
</script>
<script>
    //这个是name判断
    $('#pDiv').live('click',function(){
      var data = {
        username:$('input[name="username"]').val()
      }
      sendAjax(data);
    })

  function sendAjax(data){
    $.ajax({
      type: "POST",
      url: "next.php",
      dataType:"html",
      data:data,
      success: function(msg){
        if(msg != 0){
						alert(msg);
        }
      }
    });
    return false;
  }

</script>
