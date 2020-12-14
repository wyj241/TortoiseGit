<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import = "com.tmall.bean.Product"  %>
    <%@page import = "com.tmall.bean.User"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>商品信息展示</title>
<script src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
<link href="${APP_PATH }/static/bootstrap-3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${APP_PATH }/static/bootstrap-3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/hufushow.css"/>
</head>
<body>
<%
Product product = (Product)request.getSession().getAttribute("product");
User user = (User)request.getSession().getAttribute("user");
%>

<form action="addcar.do?userid=${user.userid }&&pid=${product.pid}" method="post">
<div id="shoppingshow">
			<div id="top">
				<img src="img/loginlogo.png" >
				<div id="top_input">
					<input type="text" name="" id="" placeholder="搜索 天猫 商品/品牌/店铺" />
					<button type="submit">搜天猫</button>
				</div>
			</div>
			
			<div id="middle">
				
				
				<!--显示衣服的DIV-->
				<div id="small">
					<img src="${product.pimage }" >
					<!--显示需要查看的放大区域-->
					<div id="search">
						
					</div>
				</div>
				<!--显示放大区域-->
				<div id="big">
					
				</div>
				
				
				<div id="middle_right">
					<p>${product.pname}</p><br><br>
					<div id="hufulogo">
						
						<span>此商品正在参加聚划算，&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;后结束，请尽快购买！</span>
						<p>1天3小时</p>
					</div>
					
					<div id="middle_right_middle">
						<div id="price">
							<p>价格</p><span>￥${product.price}</span><br>
							<img src="img/hufulogo1.png" >
						</div>
						<div id="edition">
							<p>版本</p>
							<div id="edition1">
								<input type="radio" name="size" value="嫩肤补水套装【适合所有年龄段】" /><span>嫩肤补水套装【适合所有年龄段】</span><br><br>
							</div>
							
							<div id="edition2">
								<input type="radio" name="size" value="亮肤补水套装【适合18-30岁】" /><span>亮肤补水套装【适合18-30岁】</span><br><br>
							</div>
							
							<div id="edition3">
								<input type="radio" name="size" value="抗皱紧致套装【推荐23-50岁女性】" /><span>抗皱紧致套装【推荐23-50岁女性】</span><br>
							</div>
							
						</div>
		
						<div id="color">
							<p>分类</p>
							<div id="color1">
								<input type="radio" name="color" value="水乳霜(滋润型)" /><span>水乳霜(滋润型)</span>
							</div>
							
							<div id="color2">
								<input type="radio" name="color" value="水乳霜(清爽型)" /><span>水乳霜(清爽型)</span>
							</div>
						</div>
						
						<div class="collect">
							<button type="button" class="btn btn-default" id="btn_collect">
								<span class="glyphicon glyphicon-star-empty" id="btn_collect_icon" aria-hidden="true"></span>收藏
							</button>
									
						</div>
						
						<div id="caradd">
							<button type="submit" onclick="myFunction()">
								<img src="img/caraddlogo.png" >
								<span>加入购物车</span>
							</button>
							<script type="text/javascript">
				function myFunction(){
					alert("添加成功！");
				}
			</script>
						</div>
					</div>
				</div>				
			</div>
		</div>
</form>
<script type="text/javascript">
		$("#btn_collect").click(function() {
			var classname = $("#btn_collect_icon").attr("class");
			$("#btn_collect_icon").removeClass("glyphicon-star-empty glyphicon-star");
			if (classname == "glyphicon glyphicon-star-empty") {
				$("#btn_collect_icon").addClass("glyphicon glyphicon-star");
				alert("收藏成功");
			} else {
				$("#btn_collect_icon").addClass("glyphicon glyphicon-star-empty");
				alert("取消收藏");
			}
		});
		
	</script>

<script type="text/javascript">
		var small = document.getElementById("small");
		var big = document.getElementById("big");
		var search = document.getElementById("search");
		//鼠标移入small时显示search和big
		small.onmouseover = function() {
			big.style.display = "block";
			search.style.display = "block";
		}
		//鼠标移出small时隐藏search和big
		small.onmouseout = function() {
			big.style.display = "none";
			search.style.display = "none";
		}
		small.onmousemove = function() {
			var evt = event || arguments[0];
			//获取当前鼠标坐标
			var x = evt.clientX - small.offsetLeft - search.offsetWidth / 2;
			var y = evt.clientY - small.offsetTop - search.offsetHeight / 2;
			//判断当前位置search显示框不能移出small框
			if (x < 0) {
				search.style.left = 0 + "px";
			} else if (x >= small.offsetWidth - search.offsetWidth) {
				search.style.left = small.offsetWidth - search.offsetWidth + "px";
			} else {
				search.style.left = x + "px";
			}
			if (y < 0) {
				search.style.top = 0 + "px";
			} else if (y >= small.offsetHeight - search.offsetHeight) {
				search.style.top = small.offsetHeight - search.offsetHeight + "px";
			} else {
				search.style.top = y + "px";
			}
			//计算放大比例，这个比例是大图片和小图片的比例
			var w = 400 / 200;
			//显示放大区域
			big.style.backgroundPosition = (-search.offsetLeft) * w + "px" + " " + (-search.offsetTop) * w + "px";
		}
	</script>

</body>
</html>