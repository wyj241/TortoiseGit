<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "com.tmall.bean.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/userlist.css"/>

</head>
<body>

<div id="userlist">
 <c:forEach var="user" items="${List}">
			<div id="top">				
				<div id="top_input">
					<input type="text" name="" id="" value="" />
					<button type="submit" onclick="#">搜索</button>
				</div>
			</div>
			
			<div id="middle">
				<div id="middle_left">
					<p>全部功能</p>
					<a href="index.do">天猫首页</a>
					<a href="car.do">购物车</a>
					<a href="order.do">我的订单</a>				
					<a href="address.do">收货地址</a>
					<a href="">收藏夹</a>
					<a href="">评价管理</a>
					<a href="">退款维权</a>
					<a href="">我的足迹</a>
				</div>
				
				<div id="middle_middle">
					<div id="userimage">
						<img id="images" alt="" src="/image/${user.userimage}">
					</div>
									
					<div id="middle_right">
						<img src="img/userlistright.png" >
					</div>
					
					<div id="message">
						<p>&nbsp;&nbsp;&nbsp;昵&nbsp;&nbsp;称&nbsp;&nbsp;：${user.username}</p>
						<p>手机号码：${user.tel}</p>
						<p>电子邮箱：${user.email}</p>
					</div>
					
					<div id="message_bottom">
						<a href="">待付款</a>
						<a href="">待发货</a>
						<a href="">待收货</a>
						<a href="">待评价</a>
						<a href="">退款</a>
					</div>
				</div>
				
				<div id="middle_bottom">
					<img src="img/wuliu.png" >
					<img src="img/userlistbottom.png" >
				</div>
				
			</div>
			 </c:forEach>
		</div>

</body>
</html>