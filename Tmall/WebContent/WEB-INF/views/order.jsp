<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import = "com.tmall.bean.User"  %>
    <%@page import = "com.tmall.bean.Product"  %>
    <%@page import = "com.tmall.bean.Car"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>我的订单</title>
		<link rel="stylesheet" type="text/css" href="css/order.css"/>
	</head>
	<body>
	<%
    User user = (User)request.getSession().getAttribute("user");
	Product product=(Product)request.getSession().getAttribute("product");
	Car car =(Car)request.getSession().getAttribute("car");
     %>
		<div id="order">
			<div id="top">
				<div id="top_input">
					<input type="text" name="" id="" value="" />
					<button type="submit" onclick="#">搜索</button>
				</div>
			</div>
			
			<div id="middle">
				<div id="middle_left">
					<p>全部功能</p>
					<a href="index.do">首页</a>
					<a href="car.do">我的购物车</a>
					<a href="address.do">我的收货地址</a>
					<a href="">我的收藏</a>
					<a href="">我的积分</a>
					<a href="">我的发票</a>
					<a href="">评价管理</a>
					<a href="">我的足迹</a>
				</div>
				
				<div id="middle_right_top">
					<div id="middle_right_top_left">
						<a href="">所有订单</a>
						<a href="">待付款</a>
						<a href="">待发货</a>
						<a href="">待收货</a>
						<a href="">待评价</a>
					</div>
					
				</div>
				
				
				
				
				<div id="middle_right_bottom">
					<table>
				
						<tr id="table_top">
							<td id="row1" colspan="2">宝贝</td>
							
							<td id="row3" >商品属性</td>
							<td id="row4">单价</td>
							<td id="row5">数量</td>
							<td id="row6">实付款</td>
						</tr>	
					</table>
					<c:forEach var="car" items="${List }">
					<table id="table1">
					
						<tr>
							<td id="row1" >
								<img src="${car.pimage }">
							</td>
							    
							<td id="row2">
								${car.pname }
							</td>
								
							<td id="row3">
								${car.color}<br>${car.size}  
								
							</td>								
							<td id="row4">￥${car.price }</td>
							<td id="row5">${car.num }</td>
							<td id="row6">￥${car.money }</td>
					</tr>					
					</table>
					</c:forEach>					
				</div>	
				
				
					
			</div>	
			
			<div id="bottom">
			<img src="img/orderlogo.png">
			</div>		
		</div>
	</body>
</html>