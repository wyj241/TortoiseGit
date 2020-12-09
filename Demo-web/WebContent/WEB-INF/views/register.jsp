<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>
<link rel="stylesheet" type="text/css" href="css/register.css" />
	
	</head>
		<body>
		<form action="insertUser.do" method="post" enctype="multipart/form-data">
			<div id="login">
							<div id="img">
								<img src="img/login.jpg" />
							</div>
							<div id="name">
							姓名&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="user_name">
							</div>
							<div id="cell">	
								手机号&nbsp;<input type="text" name="cellphone"/>
							</div>
							<div id="email">
								邮箱&nbsp;&nbsp;&nbsp; <input type="text" name="email" />
							</div>
				          <div id="password">
							  密码&nbsp;&nbsp;&nbsp; <input type="text" name="password" />
						  </div>
						  <div id="time">
						  时间&nbsp;&nbsp;&nbsp; <input type="date" name="create_time">
						  </div>
						  <div id="headimage">
							  上传头像 <input type="file" name="file" />
						  </div>
						  <div id="registerbutton">
							  <button type="submit" id="btn">提交注册信息</button>
							  <script type="text/javascript">
							  		var oBtn = document.getElementById("btn");
							  		oBtn.onclick=function(){
										alert("注册成功");
									}
							  	
							  </script>
						  </div>
						</div>
						</form>
		</body>
	</html>