<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@page import = "com.tmall.bean.User"  %>
 <%@page import = "com.tmall.bean.Car"  %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>天猫网站</title>
		
<style>
* {
	margin: 0;
	padding: 0;
}

ul, ol {
	list-style: none;
}

body {
	font-family: "Helvetica Neue", Helvetica, Arial, "Lucida Grande",
		sans-serif;
}

.tab-head {
	float: left;
	margin-top: -30px;
}

.tab-content {
	clear: left;
	display: none;
}

h2 {
	width: 200px;
	height: 25px;
	margin: 0;
	float: left;
	text-align: center;
	font-size: 16px;
}

.selected {
	color: #FFFFFF;
	background-color: #02aaf1;
}

.show {
	clear: left;
	display: block;
}

.hidden {
	display: none;
}

.new-btn-login-sp {
	padding: 1px;
	display: inline-block;
	width: 75%;
}

.new-btn-login {
	background-color: #02aaf1;
	color: #FFFFFF;
	font-weight: bold;
	border: none;
	width: 100%;
	height: 30px;
	border-radius: 5px;
	font-size: 16px;
}

#main {
	width: 100%;
	margin: 0 auto;
	margin-top:80px;
	font-size: 14px;
}

.red-star {
	color: #f00;
	width: 10px;
	display: inline-block;
}

.null-star {
	color: #fff;
}

.content {
	margin-top: 5px;
}

.content dt {
	width: 100px;
	display: inline-block;
	float: left;
	margin-left: 20px;
	color: #666;
	font-size: 13px;
	margin-top: 8px;
}

.content dd {
	margin-left: 120px;
	margin-bottom: 5px;
}

.content dd input {
	width: 85%;
	height: 28px;
	border: 0;
	-webkit-border-radius: 0;
	-webkit-appearance: none;
}

#foot {
	margin-top: 10px;
	position: absolute;
	bottom: 15px;
	width: 100%;
}

.foot-ul {
	width: 100%;
}

.foot-ul li {
	width: 100%;
	text-align: center;
	color: #666;
}

.note-help {
	color: #999999;
	font-size: 12px;
	line-height: 130%;
	margin-top: 5px;
	width: 100%;
	display: block;
}

#btn-dd {
	margin: 20px;
	text-align: center;
}

.foot-ul {
	width: 100%;
}

.one_line {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid #eeeeee;
	width: 100%;
	margin-left: 20px;
}

.am-header {
	display: -webkit-box;
	display: -ms-flexbox;
	display: box;
	width: 100%;
	position: relative;
	padding: 7px 0;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	background: #1D222D;
	height: 50px;
	text-align: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	box-pack: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	box-align: center;
}

.am-header h1 {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	box-flex: 1;
	line-height: 18px;
	text-align: center;
	font-size: 18px;
	font-weight: 300;
	color: #fff;
}

.topbar-info a{
	margin-left:10px;
	padding:5px;
	color:#FF6700;
	font-weight:bolder;
	border:2px solid orange;
	border-radius:5px;	
}

</style>
</head>
<body text=#000000 bgColor="#ffffff" leftMargin=0 topMargin=4>
<%
    User user = (User)request.getSession().getAttribute("user");
	
	Car car =(Car)request.getSession().getAttribute("car");
     %>
	<div class="site-header site-mini-header">
			<div class="container">
				
				<div class="header-title has-more" id="J_miniHeaderTitle">
					
					<img src="img/loginlogo.png"><br>
					<p>温馨提示：请确认信息后再下单支付哦</p>
				</div>
				
			</div>
	</div>
	<div id="main">
		<div id="tabhead" class="tab-head" style="padding-left:180px;">
			<h2 id="tab1" class="selected" name="tab">付 款</h2>
			<h2 id="tab2" name="tab">交 易 查 询</h2>
			<h2 id="tab3" name="tab">退 款</h2>
			<h2 id="tab4" name="tab">退 款 查 询</h2>
			<h2 id="tab5" name="tab">交 易 关 闭</h2>
		</div>
		<form name=alipayment action=alipay.trade.page.pay.do method=post target="_blank">
		<c:forEach var="car" items="${List}">
			<div id="body1" class="show" name="divcontent" style="padding-top:40px;">
				<dl class="content" style="padding-left:280px;padding-right:280px;">
					<dt>商户订单号 ：</dt>
					<dd>
						<input id="WIDout_trade_no" name="WIDout_trade_no" />
					</dd>
					<hr class="one_line">
					<dt>订单名称 ：</dt>
					<dd>
						<input id="WIDsubject" name="WIDsubject" value="天猫"/>
					</dd>
					<hr class="one_line">
					<dt>付款金额 ：</dt>
					<dd>
						<input id="WIDtotal_amount" name="WIDtotal_amount" value="${car.money }"/>
					</dd>
					<hr class="one_line">
					<dt>商品描述：</dt>
					<dd>
						<input id="WIDbody" name="WIDbody" value="${car.num}"/>
					</dd>
					<hr class="one_line">
					<dt></dt>
					<dd id="btn-dd" style="margin-top:40px;">
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">付 款</button>
						</span> <span class="note-help">如果您点击“付款”按钮，即表示您同意该次的执行操作。</span>
					</dd>
				</dl>
			</div>
			</c:forEach>
		</form>
		<form name=tradequery action=alipay.trade.query.do method=post
			target="_blank">
			<div id="body2" class="tab-content" name="divcontent" style="padding-top:40px;">
				<dl class="content" style="padding-left:280px;padding-right:280px;">
					<dt>商户订单号 ：</dt>
					<dd>
						<input id="WIDTQout_trade_no" name="WIDTQout_trade_no" />
					</dd>
					<hr class="one_line">
					<dt>支付宝交易号 ：</dt>
					<dd>
						<input id="WIDTQtrade_no" name="WIDTQtrade_no" />
					</dd>
					<hr class="one_line">
					<dt></dt>
					<dd id="btn-dd" style="margin-top:40px;">
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">交 易 查 询</button>
						</span> <span class="note-help">商户订单号与支付宝交易号二选一，如果您点击“交易查询”按钮，即表示您同意该次的执行操作。</span>
					</dd>
				</dl>
			</div>
		</form>
		<form name=traderefund action=alipay.trade.refund.do method=post
			target="_blank">
			<div id="body3" class="tab-content" name="divcontent" style="padding-top:40px;">
				<dl class="content" style="padding-left:280px;padding-right:280px;">
					<dt>商户订单号 ：</dt>
					<dd>
						<input id="WIDTRout_trade_no" name="WIDTRout_trade_no" />
					</dd>
					<hr class="one_line">
					<dt>支付宝交易号 ：</dt>
					<dd>
						<input id="WIDTRtrade_no" name="WIDTRtrade_no" />
					</dd>
					<hr class="one_line">
					<dt>退款金额 ：</dt>
					<dd>
						<input id="WIDTRrefund_amount" name="WIDTRrefund_amount" />
					</dd>
					<hr class="one_line">
					<dt>退款原因 ：</dt>
					<dd>
						<input id="WIDTRrefund_reason" name="WIDTRrefund_reason" />
					</dd>
					<hr class="one_line">
					<dt>退款请求号 ：</dt>
					<dd>
						<input id="WIDTRout_request_no" name="WIDTRout_request_no" />
					</dd>
					<hr class="one_line">
					<dt></dt>
					<dd id="btn-dd" style="margin-top:40px;">
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">退 款</button>
						</span> <span class="note-help">商户订单号与支付宝交易号二选一，如果您点击“退款”按钮，即表示您同意该次的执行操作。</span>
					</dd>
				</dl>
			</div>
		</form>
		<form name=traderefundquery action=alipay.trade.fastpay.refund.query.do method=post target="_blank">
			<div id="body4" class="tab-content" name="divcontent" style="padding-top:40px;">
				<dl class="content" style="padding-left:280px;padding-right:280px;">
					<dt>商户订单号 ：</dt>
					<dd>
						<input id="WIDRQout_trade_no" name="WIDRQout_trade_no" />
					</dd>
					<hr class="one_line">
					<dt>支付宝交易号 ：</dt>
					<dd>
						<input id="WIDRQtrade_no" name="WIDRQtrade_no" />
					</dd>
					<hr class="one_line">
					<dt>退款请求号 ：</dt>
					<dd>
						<input id="WIDRQout_request_no" name="WIDRQout_request_no" />
					</dd>
					<hr class="one_line">
					<dt></dt>
					<dd id="btn-dd" style="margin-top:40px;">
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">退 款 查 询</button>
						</span> <span class="note-help">商户订单号与支付宝交易号二选一，如果您点击“退款查询”按钮，即表示您同意该次的执行操作。</span>
					</dd>
				</dl>
			</div>
		</form>
		<form name=tradeclose action=alipay.trade.close.do method=post target="_blank">
			<div id="body5" class="tab-content" name="divcontent" style="padding-top:40px;">
				<dl class="content" style="padding-left:280px;padding-right:280px;">
					<dt>商户订单号 ：</dt>
					<dd>
						<input id="WIDTCout_trade_no" name="WIDTCout_trade_no" />
					</dd>
					<hr class="one_line">
					<dt>支付宝交易号 ：</dt>
					<dd>
						<input id="WIDTCtrade_no" name="WIDTCtrade_no" />
					</dd>
					<hr class="one_line">
					<dt></dt>
					<dd id="btn-dd" style="margin-top:40px;">
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">交 易 关 闭</button>
						</span> <span class="note-help">商户订单号与支付宝交易号二选一，如果您点击“交易关闭”按钮，即表示您同意该次的执行操作。</span>
					</dd>
				</dl>
			</div>
		</form>
		
</body>
<script language="javascript">
	var tabs = document.getElementsByName('tab');
	var contents = document.getElementsByName('divcontent');
	
	(function changeTab(tab) {
	    for(var i = 0, len = tabs.length; i < len; i++) {
	        tabs[i].onmouseover = showTab;
	    }
	})();
	
	function showTab() {
	    for(var i = 0, len = tabs.length; i < len; i++) {
	        if(tabs[i] === this) {
	            tabs[i].className = 'selected';
	            contents[i].className = 'show';
	        } else {
	            tabs[i].className = '';
	            contents[i].className = 'tab-content';
	        }
	    }
	}
	
	function GetDateNow() {
		var vNow = new Date();
		var sNow = "";
		sNow += String(vNow.getFullYear());
		sNow += String(vNow.getMonth() + 1);
		sNow += String(vNow.getDate());
		sNow += String(vNow.getHours());
		sNow += String(vNow.getMinutes());
		sNow += String(vNow.getSeconds());
		sNow += String(vNow.getMilliseconds());
		document.getElementById("WIDout_trade_no").value =  sNow;
	}
	GetDateNow();
</script>
</html>