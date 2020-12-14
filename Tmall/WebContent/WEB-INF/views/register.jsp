<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/register.css"/>
</head>
<body>
<form action="insertUser.do" method="post" enctype="multipart/form-data">
		<div id="register">
			<div id="middle">
				
				<div id="middle_top">
					<div id="name">
						<p>用 户 名：</p>
						<input type="text" name="username" id="" placeholder="请输入账号" />
					</div>
					<div id="psw">
						<p>设置密码：</p>
						<input type="text" name="password" id="" placeholder="请输入密码" />
					</div>
					<div id="phone">
						<p>手 机 号：</p>
						<input type="text" name="tel" id="" placeholder="请输入手机号码" />
					</div>
					<div id="IDNum">
						<p>身 份 证：</p>
						<input type="text" name="idnum" id="" placeholder="请输入身份证号码" />
					</div>
					<div id="email">
						<p>邮 箱：</p>
						<input type="text" name="email" id="" placeholder="请输入邮箱" />
					</div>
					<div id="email">
						<p>头像：</p>
						<input type="file" name="file"  />
					</div>
				</div>
				
				<div id="middle_bottom">
					<button type="submit" onclick="#" class="login">注 册</button>
					<p>已有账号?</p>
					<a href="login.do">点击登录</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>