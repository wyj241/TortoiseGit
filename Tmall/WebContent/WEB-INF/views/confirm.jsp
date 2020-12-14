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
		<title>确认订单</title>
		<link rel="stylesheet" type="text/css" href="css/confirm.css"/>
		
		<link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/ionicons/2.0.1/css/ionicons.min.css" />
		
		<script src="js/jquery-1.4.3.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
	<%
    User user = (User)request.getSession().getAttribute("user");
	
     %>
		<div id="confirm">
			<div id="top">
				<img src="img/confirmlogo.png" >
			</div>
			
			<div id="header">
				<p>选择收货地址</p>
				<a href="address.do">管理收货地址</a>
				<c:forEach var="address" items="${addressList}">
				<div class="style" id="choose_color">
					<button type="button">
						<span>${address.area}(${address.name})</span><br>
							${address.address_lable}
							${address.phone}						
					</button>
							  
				</div>
				</c:forEach>
				
				
			</div>	
			
			<div id="middle">
				<p>确认订单信息</p>
				<c:forEach var="car" items="${List}">
				<table>
					<tr id="table_top">
						<td id="row1" colspan="2">店铺宝贝</td>
						
						<td id="row3">商品属性</td>
						<td id="row4">单价</td>
						<td id="row5">数量</td>
						<td id="row6">小计</td>	
					</tr>	
					
					
					<tr id="table_middle">
						<td id="row1" >
							<img src="${car.pimage }">
						</td>
						    
						<td id="row2">
							${car.pname }
						</td>
							
						<td id="row3">
							${car.color} <br> ${car.size}
						</td>
							
						<td id="row4">￥${car.price }</td>
						<td id="row5">${car.num }</td>
						<td id="row6">￥${car.money }</td>
					</tr>
										
						
					<tr id="table_bottom">
						<td colspan="4">
							<span>给卖家留言：</span>							
							<textarea placeholder="选填,请先和商家协商一致"></textarea>
					
						</td>
						
						<td colspan="2" id="table_bottom_total">
							<span>店铺合计</span><p>￥${car.money }</p>
						</td>	
					</tr>			
				</table>
					</c:forEach>			
																			
			</div>
			
			<div id="bottom">
				<div id="bottom_bottom">
					<button type="submit" onclick="location.href='pay.do'">
						提交订单
					</button>					
					<a href="car.do" class="icon ion-reply">&nbsp;返回购物车</a>
					
				</div>
			</div>
			
		</div>
		<script>
		  var color;
		  function getPro(){
		    //颜色取值
		    $("#choose_color button").each(function (i, item) {
		      if ($(this).hasClass("borderChange")) {
		        color = $(this).val();
		      }
		    })
		
		  }
		       $("#choose_color button").each(function (i, item) {
		            $(this).click(function () {
		                $(this).addClass("borderChange")
		                if ($(this).siblings().addClass("borderChange")) {
		                    $(this).siblings().removeClass("borderChange")
		                }
		                var color = $(this).val();
		                console.log(color)
		            })
		        })
		</script>
	</body>
</html>