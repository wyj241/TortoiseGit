<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/login.css" />
	</head>
	<body>
	<form action="LoginJudgment.do" method="post">
		<div id="login">
			<div id="img">
				<img src="img/login.jpg" />
			</div>
			<div id="nameimage">
				<img src="img/name.png" />
			</div>
			<div id="cell">	
				账号 <input type="text" name="cellphone" placeholder="请输入手机号"/>
			</div>
          <div id="password">
			  密码 <input type="password" name="password" />
		  </div>
		  <div id="loginbutton">
			  <button type="submit">登录</button><br />
			  <a href="register.do">没有账号?点我注册</a>
		  </div>
		</div>
		</form>
	</body>
</html>