<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import = "com.demo.bean.User"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body>
<%
    User user = (User)request.getSession().getAttribute("user");
	
     %>
     
<table>
				    <tr id="table_back">
				    
				        <th id="row1">用户id</th>
				        <th id="row2">姓名</th>
				        <th id="row3">手机号</th>
				        <th id="row4">邮箱</th>
						<th id="row5">注册时间</th>
						<th id="row5">头像</th>
				    </tr>
				    <c:forEach var="user" items="${List}">
					<tr id="table_text">
					
					    <th id="row1">${user.user_id}</th>
					    <th id="row2">${user.user_name}</th>
					    <th id="row3">${user.cellphone}</th>
					    <th id="row4">${user.email}</th>
						<th id="row5">${user.create_time}</th>
						<th id="row5"><img id="images" alt="" src="/image/${user.image}"></th>
						
					</tr>	
					</c:forEach>				
				</table>
</body>
</html>