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
		<title>购物车</title>
		<link rel="stylesheet" type="text/css" href="css/shoppingcar.css" />
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	</head>
	<body>
	<%
    User user = (User)request.getSession().getAttribute("user");
	Product product=(Product)request.getSession().getAttribute("product");
	Car car =(Car)request.getSession().getAttribute("car");
     %>
		<div id="shoppingcar">
			<div id="top">
				<a href="index.do"><img src="img/shoppingcarlogo.png"></a>
				<div id="top_input">
					<button type="submit">搜&nbsp;索</button>
					<input type="text" name="" id="" value="" />
				</div>

			</div>

			<div id="middle">
				<div id="middle_top">
					<p>全部商品</p>
					<a href="index.do">返回首页</a>
				</div>

				<table>
					<tr id="table_top">
						<td id="row1"><input class="ckbox" type="checkbox" />
							<p>全选</p>
						</td>
						<td id="row2">商品信息</td>
						<td id="row3"></td>
						<td id="row4">单价</td>
						<td id="row5">数量</td>
						<td id="row6">金额</td>
						<td id="row7">操作</td>
					</tr>                   
                    <c:forEach var="car" items="${List }">
					<tr id="table_middle">
						<td id="row1"><input class="ckbtn" type="checkbox" />
							<img src="${car.pimage }" style="width: 50px;height:50px;"></td>
							
						<td id="row2">${car.pname }</td>
						
						<td id="row3">${car.color} <br> ${car.size}</td>
						
						<td><span class="price" data-price='${car.price }'>￥${car.price }</span></td>
						
						<td class="btn">
						<button class="btnleft">-</button>
						<input class="txt" type="text" value="${car.num }"/>
						<button class="btnright">+</button></td>
						<input class=goodsId style="display:none;" type="text" value="${car.pid }"/>			
						<td><span class="totle" data-totle='${car.price }'>￥${car.price }</span></td>
							
						<td id="row7">
							<a href="deletecar.do?pid=${car.pid }">删除</a></td>	
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					</c:forEach>
					<tr id="table_bottom">
						<td id="row1"><input type="checkbox" class="ckbox"/>
						<p>全选</p></td>
						<td colspan="3"></td>
						<td>已选商品&nbsp;<span class="number">0</span>&nbsp;件</td>
						<td>合计：<span class="totleprice">0.00</span></td>
						<td><button type="submit" onclick="location.href='confirm.do'">结&nbsp;算</button></td>
					</tr>

				</table>
			</div>
			
		</div>
		
		<script>
				var btnck = document.getElementsByClassName("ckbox");
				var ckall = document.getElementsByClassName("ckbtn");
				var count=0;
				for (var i = 0; i < ckall.length; i++) {
				    ckall[i].onclick = function () {
				       if(this.checked){
				           count++;
				       }
				        else{
				           count--;
				       }
				        if(count==ckall.length)
				        {
				            btnck[0].checked=true;
				            btnck[1].checked=true;
				        }
				        else{
				            btnck[0].checked=false;
				            btnck[1].checked=false;
				        }
				        addtotle();
				    }
				}
				for (var index in btnck) {
				    btnck[index].index = index;
				    btnck[index].onclick = function () {
				        btnck[this.index == 0 ? 1 : 0].checked = !btnck[this.index == 0 ? 1 : 0].checked;
				        if(this.checked)
				        {
				            for (var i = 0; i < ckall.length; i++) {
				                ckall[i].checked = true;
				            }
				        }
				        else{
				            for (var i = 0; i < ckall.length; i++) {
				                ckall[i].checked = false;
				            }
				            count=0;
				        }
				        addtotle();
				    }
				}
				
				var btnleft = document.getElementsByClassName("btnleft");
				var btnright = document.getElementsByClassName("btnright");
				var goodsId = document.getElementsByClassName("goodsId");
				console.log(goodsId);				
				var txt = document.getElementsByClassName("txt");
				console.log(txt);
				var price = document.getElementsByClassName("price");
				var totle = document.getElementsByClassName("totle");
				var tprice = document.getElementsByClassName("totleprice");
				var num=document.getElementsByClassName("number");
				for (var i = 0; i < btnleft.length; i++) {
				    btnleft[i].index = i;
				    btnleft[i].onclick = function () {
				        var val = txt[this.index].value;
				        var pid = goodsId[this.index].value;
				        val--;
				        if (val < 1) {
				            val = 1;
				        }
				        
				        txt[this.index].value = val;
				        addprice(this.index, val);
				        var totalprice = price[this.index].getAttribute("data-price") * val;
				        addtotle();
				        
				        console.log("当前数量是："+val);
				        console.log("当前商品总价是："+totalprice);
				        console.log("当前商品id是："+pid);
				        $.ajax({
				            type: "post",
				            url: "updatenum.do",
				            data: {
				                num: val,
				                pid: pid,
				                money: totalprice
				            },
				            success: function(updatenum){
				            	console.log(updatenum);
				               	if(updatenum == "更新成功"){
				            	   console.log("更新成功");
				               	}else{
				               		console.log("更新失败");
				               	}                           
				            },
				            error: function(msg){
				                console.log(msg);
				            }    
				        })
				    }
				    btnright[i].index = i;
				    btnright[i].onclick = function () {
				        var val = txt[this.index].value;
				        var pid = goodsId[this.index].value;
				        val++;
				        
				        txt[this.index].value = val;
				        addprice(this.index, val);
				        var totalprice = price[this.index].getAttribute("data-price") * val;
				        addtotle();
				        console.log("当前数量是："+val);
				        console.log("当前商品总价是："+totalprice);
				        console.log("当前商品id是："+pid);
				        $.ajax({
				            type: "post",
				            url: "updatenum.do",
				            data: {
				                num: val,
				                pid: pid,
				                money: totalprice
				            },
				            success: function(updatenum){
				            	console.log(updatenum);
				               	if(updatenum == "更新成功"){
				            	   console.log("更新成功");
				               	}else{
				               		console.log("更新失败");
				               	}                           
				            },
				            error: function(msg){
				                console.log(msg);
				            }    
				        })
				    }
				}
				
				function addprice(index, value) {
				    totle[index].innerHTML = "￥" +(price[index].getAttribute("data-price") * value).toFixed(2);
				    totle[index].setAttribute("data-totle", (price[index].getAttribute("data-price") * value).toFixed(2));				    			   				   				    
				}
				
				function addtotle() {
				    var totleprice = 0;
				    var number=0;
				    for (var i = 0; i < ckall.length; i++) {
				        if (ckall[i].checked) {
				            totleprice += parseFloat(totle[i].getAttribute("data-totle"));
				            number+=parseInt(txt[i].value);
				        }
				    }
				    tprice[0].innerHTML = "￥" +totleprice.toFixed(2);
				    num[0].innerHTML=number;
				}
			</script>
	</body>
</html>