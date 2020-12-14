<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/login.css"/>
</head>
<body>
	<form action="LoginJudgment.do" method="post">
		<div id="login">
			
			<!--顶部-->
			<div id="header">
				<img src="img/loginlogo.png" >
			</div>
			
			<div id="middle">
				<div id="middle_login">
					<div id="middle_login_top">
						<p>密码登录</p>
					</div>
					
					<div id="middle_login_middle">
						<div id="middle_login_middle1">
							<img src="img/name.png" >
							<input type="text" name="username" id="username" placeholder="请输入账号" />
							
						</div>
						<div id="middle_login_middle2">
							<img src="img/password.png" >
							<input type="password" name="password" id="password" placeholder="请输入登录密码" />
						</div>
					</div>
					
					<div id="middle_login_bottom">
					
						<button type="submit" onclick="#" class="login">登 录</button>
						<a href="register.do">免费注册</a>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>