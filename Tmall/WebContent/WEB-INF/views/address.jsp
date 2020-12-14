<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import = "com.tmall.bean.User"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>收货地址</title>
		<link rel="stylesheet" type="text/css" href="css/address.css" />
	</head>
	
	<body>
	<%
    User user = (User)request.getSession().getAttribute("user");
	
     %>
		<div id="address">
			<div id="top">
			
				<div id="top_input">
					<input type="text" name="" id="" value="" />
					<button type="submit" onclick="#">搜索</button>
				</div>
			</div>

			<div id="middle">
				<div id="middle_left">
					<p>账号管理</p>
					<a href="index.do">天猫首页</a>
					<a href="car.do">购物车</a>
					<a href="order.do">我的订单</a>
					<a href="">收藏夹</a>
					<a href="">支付宝绑定设置</a>
					<a href="">微博绑定设置</a>
					<a href="">旺旺网页版设置</a>
				</div>
				
             <form action="addAddress.do?userid=<%=user.getUserid()%>" method="post">
				<div id="middle_right">
					<p>收货地址</p>
					<div id="middle_add">
						<p>新增收货地址</p>
						<div id="middle_add_input">
							<div id="receiver">
								<p>收货人姓名：</p>
								<input type="text" name="name" id="" placeholder="长度不超过25个字符" />
							</div>

							<div id="telphone">
								<p>手机号码：</p>
								<input type="text" name="phone" id="" placeholder="请输入正确的手机号" />
							</div>

							<div id="addressmsg">
								<p>地址信息：</p>
								<input type="text" name="area" id="" placeholder="请填写省/市/区/街道" />
							</div>

							<div id="addressadd">
								<p>详细地址：</p>
								<input type="text" name="address_lable" id="" placeholder="请输入详细地址信息,
								                                 如道路、门牌号、小区、楼栋号、单元等信息" />
							</div>
						</div>

						<button type="submit">保存</button>
					</div>
				</div>
				</form>
				<div id="middle_img">
					
					<img src="img/address.png" >
					<p>已保存的收货地址</p>
				</div>
				
			
				<table>
				    <tr id="table_back">
				        <th id="row1">收货人</th>
				        <th id="row2">所在地区</th>
				        <th id="row3">详细地址</th>
				        <th id="row4">电话/手机</th>
						<th id="row5">操作</th>
				    </tr>
				    <c:forEach var="address" items="${List}">
					<tr id="table_text">
					    <th id="row1">${address.name }</th>
					    <th id="row2">${address.area}</th>
					    <th id="row3">${address.address_lable}</th>
					    <th id="row4">${address.phone}</th>
						<th id="row5"><a href="findById.do?id=${address.id }">修改</a><a href="deleteAddress.do?id=${address.id }">删除</a></th>
					</tr>	
					</c:forEach>				
				</table>
				
				
			</div>
		</div>
	</body>
</html>