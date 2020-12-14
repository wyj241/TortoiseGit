<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import = "com.tmall.bean.User"  %>
     <%@page import = "com.tmall.bean.Address"  %>
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
	Address address = (Address)request.getAttribute("address");
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
					<a href="">天猫首页</a>
					<a href="">购物车</a>
					<a href="">我的订单</a>
					<a href="">收藏夹</a>
					<a href="">收货地址</a>
					<a href="">支付宝绑定设置</a>
					<a href="">微博绑定设置</a>
					<a href="">旺旺网页版设置</a>
				</div>
				
             <form action="addressUpdate.do?id=<%=address.getId()%>" method="post">
				<div id="middle_right">
					<p>收货地址</p>
					<div id="middle_add">
						<p>新增收货地址</p>
						
						<div id="middle_add_input">
							<div id="receiver">
								<p>收货人姓名：</p>
								<input type="text" name="name" id="" value="<%=address.getName() %>" placeholder="长度不超过25个字符" />
							</div>

							<div id="telphone">
								<p>手机号码：</p>
								<input type="text" name="phone" id="" value="<%=address.getPhone() %>" placeholder="请输入正确的手机号" />
							</div>

							<div id="addressmsg">
								<p>地址信息：</p>
								<input type="text" name="area" id="" value="<%=address.getArea() %>" placeholder="请填写省/市/区/街道" />
							</div>

							<div id="addressadd">
								<p>详细地址：</p>
								<input type="text" name="address_lable" id="" value="<%=address.getAddress_lable() %>" placeholder="请输入详细地址信息,
								                                 如道路、门牌号、小区、楼栋号、单元等信息" />
							</div>
						</div>
                       
						<button type="submit">保存</button>
					</div>
				</div>
				
				</form>
				</div>
				</div>

</body>
</html>