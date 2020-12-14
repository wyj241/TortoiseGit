<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import = "com.tmall.bean.Product"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>商品列表</title>
<link rel="stylesheet" type="text/css" href="css/shoppinglist.css"/>
</head>
<body>
<%
Product product = (Product)request.getSession().getAttribute("product");

%>
<div id="shoppinglist">
			<div id="top">
				<img src="img/loginlogo.png" >
				<div id="top_input">
					<input type="text" name="" id="" value="" />
					<button type="submit">搜&nbsp;索</button>
				</div>
			</div>
			<div id="header">
				<a href="index.do">首页</a>
				<span>></span>
				<a href="">童装</a>
			</div>
			<table >
			
			
			
			<c:forEach var="product" items="${List}" varStatus="status">
			<c:if test="${status.count eq 1 || (status.count-1) % 5 eq 0}">
			<tr>
			</c:if>
			<td style="width: 97px;">
			<div id="middle">						
				<div id="goods1">
					<a href="findbyid.do?pid=${product.pid }"><img src="${product.pimage }"></a> 
					<p>￥${product.price }</p>
					<span>&nbsp;</span>
					<a href="">${product.pname}</a>
				</div>
			</div>			
			</td>
			<c:if test="${status.count % 5 eq 0 || status.count eq 5}">
		
	  </c:if>
	</c:forEach>
			
			</table>
		</div>

</body>
</html>