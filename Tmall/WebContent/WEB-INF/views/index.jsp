<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import = "com.tmall.bean.User"  %>
     <%@page import = "com.tmall.bean.Product"  %>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
	</head>
	<body>
	<%
    User user = (User)request.getSession().getAttribute("user");
	Product product =(Product)request.getSession().getAttribute("product");
     %>
	
		<div id="index">
			
			
			
			<!--顶部-->
			<div id="header">
				<div id="header1">
					<p>喵,欢迎来天猫</p>
					<a href="login.do"><%=user.getUsername() %></a>
					<a href="register.do">免费注册</a>
				</div>
				<div id="header2">
					<a href="userlist.do">个人中心</a>
					<a href="order.do">我的订单</a>
					<a href="car.do">购物车</a>
				</div>
			</div>

			<!--中部-->
			<div id="middle">
				<div id="indexlogo">
					<img src="img/indexlogo.png">
				</div>

				<!--搜索栏-->
				<form action="selectKind.do" method="post">
				<div id="search">
					<input type="text" name="pkind" placeholder="输入关键字搜索" />
	    			<button type="submit"  class="submit">搜 索</button>
				</div>
				</form>
			</div>
			
			<!--底部-->
			<div id="bottom">
				<!--底部左-->
				<div id="bottom_left">
					<div id="bottom_left_top">
						<p>商 品 分 类</p>
					</div>
					<!--商品-->
					<div id="bottom_left_bottom">
						<ul>
							<li>
								<a href="">女装/家居服</a>
								<ul id="women">
									<br>
									<p>当季流行></p>
									<a href="">女装新品</a>
									<a href="">商场同款</a>
									<a href="">仙女连衣裙</a>
									<a href="">时髦外套</a>
									<a href="">潮流家居服</a>
									<br><br>
									<p>精选上装></p>
									<a href="">毛呢外套</a>
									<a href="">羽绒服</a>
									<a href="">丝绒卫衣</a>
									<a href="">毛针织衫</a>
									<a href="">小西装</a>
									<br><br>
									<p>浪漫裙装></p>
									<a href="">连衣裙</a>
									<a href="">半身裙</a>
									<a href="">A字裙</a>
									<a href="">荷叶边裙</a>
									<a href="">百褶裙</a>
									<br><br>
									<p>女士下装></p>
									<a href="">休闲裤</a>
									<a href="">阔腿裤</a>
									<a href="">牛仔裤</a>
									<a href="">背带裤</a>
									<a href="">打底裤</a>
									<br><br>
									<p>特色女装></p>
									<a href="">时尚套装</a>
									<a href="">休闲套装</a>
									<a href="">日系女装</a>
									<a href="">职业套装</a>
									<a href="">精致礼服</a>
								</ul>																	
							</li>
				
							<li>
								<a href="">男装/运动户外</a>
								<ul id="men">
									<br>
									<p>当季流行></p>
									<a href="">当季新品</a>
									<a href="">商场同款</a>
									<a href="">潮流卫衣</a>
									<a href="">牛仔衬衫</a>
									<a href="">修身夹克</a>
									<br><br>
									<p>男士外套></p>
									<a href="">棒球服</a>
									<a href="">毛呢大衣</a>
									<a href="">羽绒服</a>
									<a href="">工装外套</a>
									<a href="">针织开衫</a>
									<br><br>
									<p>男士内搭></p>
									<a href="">短袖T恤</a>
									<a href="">POLO衫</a>
									<a href="">背心</a>
									<a href="">短袖衬衫</a>
									<a href="">长袖T恤</a>
									<br><br>
									<p>男士裤装></p>
									<a href="">小脚裤</a>
									<a href="">9分裤</a>
									<a href="">休闲裤</a>
									<a href="">牛仔裤</a>
									<a href="">针织裤</a>
									<br><br>
									<p>运动男装></p>
									<a href="">运动内衣</a>
									<a href="">速干T恤</a>
									<a href="">运动卫衣</a>
									<a href="">运动套装</a>
									<a href="">健身服</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">女鞋/男鞋/箱包</a>
								<ul id="shoes">
									<br>
									<p>推荐女鞋></p>
									<a href="">潮流过膝靴</a>
									<a href="">气质百搭踝靴</a>
									<a href="">流行松糕底</a>
									<a href="">英伦牛津鞋</a>
									<br><br>
									<p>潮流男鞋></p>
									<a href="">商场同款</a>
									<a href="">户外休闲</a>
									<a href="">正装皮鞋</a>
									<a href="">板鞋</a>
									<a href="">布鞋</a>
									<br><br>
									<p>潮流女包></p>
									<a href="">新品推荐</a>
									<a href="">商场同款</a>
									<a href="">女士钱包</a>
									<a href="">单肩包</a>
									<a href="">化妆包</a>
									<br><br>
									<p>精品男包></p>
									<a href="">男士钱包</a>
									<a href="">收纳包</a>
									<a href="">手提包</a>
									<a href="">斜挎包</a>
									<a href="">单肩包</a>
									<br><br>
									<p>功能箱包></p>
									<a href="">旅行箱</a>
									<a href="">万向轮箱</a>
									<a href="">旅行袋</a>
									<a href="">韩版双肩包</a>
									<a href="">铆钉双肩包</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">美妆/个人护理</a>
								<ul id="makeup">
									<br>
									<p>女士护肤></p>
									<a href="">官方直售</a>
									<a href="hufu.do">护肤套装</a>
									<a href="">乳液面霜</a>
									<a href="">面部喷雾</a>
									<a href="">T区护理</a>
									<br><br>
									<p>男士护肤></p>
									<a href="">洁面</a>
									<a href="">爽肤水</a>
									<a href="">面膜</a>
									<a href="">面部精华</a>
									<a href="">防晒</a>
									<a href="">控油</a>
									<br><br>
									<p>肤质推选></p>
									<a href="">混合偏油型</a>
									<a href="">中性偏干型</a>
									<a href="">敏感性</a>
									<a href="">干性</a>
									<a href="">油性</a>
									<a href="">中性</a>
									<br><br>
									<p>美发护发></p>
									<a href="">洗发水</a>
									<a href="">护发素</a>
									<a href="">发膜</a>
									<a href="">洗护套装</a>
									<a href="">头发造型</a>
									<br><br>
									<p>口腔护理></p>
									<a href="">牙膏</a>
									<a href="">牙刷</a>
									<a href="">漱口水</a>
									<a href="">牙线</a>
									<a href="">牙贴</a>
									<a href="">口腔美白</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">腕表/眼镜/珠宝饰品</a>
								<ul id="jewelry">
									<br>
									<p>黄金首饰></p>
									<a href="">耳钉</a>
									<a href="">黄金项链</a>
									<a href="">婚嫁首饰</a>
									<a href="">黄金对戒</a>
									<a href="">转运珠</a>
									<br><br>
									<p>钻石彩宝></p>
									<a href="">结婚钻戒</a>
									<a href="">钻石吊坠</a>
									<a href="">红蓝宝石</a>
									<a href="">绿宝石</a>
									<a href="">坦桑石</a>
									<br><br>
									<p>珍珠玉翠></p>
									<a href="">珍珠项链</a>
									<a href="">海水珍珠</a>
									<a href="">和田玉</a>
									<a href="">翡翠手镯</a>
									<a href="">琥珀手链</a>
									<br><br>
									<p>潮流饰品></p>
									<a href="">明星同款</a>
									<a href="">传统银饰</a>
									<a href="">木手串</a>
									<a href="">施华洛世奇</a>
									<a href="">银时代</a>
									<br><br>
									<p>时尚腕表></p>
									<a href="">瑞士名表</a>
									<a href="">日韩港表</a>
									<a href="">欧美手表</a>
									<a href="">经典国表</a>
									<a href="">国货精表</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">手机/数码/电脑办公</a>
								<ul id="phone">
									<br>
									<p>热门手机></p>
									<a href="">小米</a>
									<a href="">iPhone</a>
									<a href="">荣耀</a>
									<a href="">OPPO</a>
									<a href="">vivo</a>
									<a href="">华为</a>
									<br><br>
									<p>电脑整机></p>
									<a href="">笔记本</a>
									<a href="">平板电脑</a>
									<a href="">台式机</a>
									<a href="">游戏本</a>
									<a href="">iPad</a>
									<br><br>
									<p>智能数码></p>
									<a href="">智能设备</a>
									<a href="">智能手表</a>
									<a href="">VR眼镜</a>
									<a href="">智能摄像</a>
									<a href="">智能机器人</a>
									<br><br>
									<p>游戏组装></p>
									<a href="">DIY电脑</a>
									<a href="">显示器</a>
									<a href="">机械键盘</a>
									<a href="">XBOX</a>
									<a href="">游戏手柄</a>
									<br><br>
									<p>硬件存储></p>
									<a href="">固态硬盘</a>
									<a href="">CPU</a>
									<a href="">显卡</a>
									<a href="">主板</a>
									<a href="">高速U盘</a>
									<a href="">路由器</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">母婴玩具</a>
								<ul id="baby">
									<br>
									<p>童&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;装></p>
									<a href="product.do">商场同款</a>
									<a href="">套装</a>
									<a href="">裤子</a>
									<a href="">外套</a>
									<a href="">连体衣</a>
									<a href="">亲子装</a>
									<br><br>
									<p>童&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;鞋></p>
									<a href="">学步鞋</a>
									<a href="">运动鞋</a>
									<a href="">亲子鞋</a>
									<a href="">帆布鞋</a>
									<a href="">皮鞋</a>
									<a href="">雨靴</a>
									<br><br>
									<p>车床用品></p>
									<a href="">婴儿推车</a>
									<a href="">学步车</a>
									<a href="">安全座椅</a>
									<a href="">婴儿背带</a>
									<a href="">餐椅</a>
									<br><br>
									<p>喂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;养></p>
									<a href="">奶瓶</a>
									<a href="">水杯</a>
									<a href="">餐具</a>
									<a href="">消毒锅</a>
									<a href="">辅食机</a>
									<a href="">围嘴</a>
									<br><br>
									<p>玩&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具></p>
									<a href="">婴儿玩具</a>
									<a href="">儿童自行车</a>
									<a href="">毛绒玩具</a>
									<a href="">积木</a>
									<a href="">电动遥控</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">零食/茶酒/进口食品</a>
								<ul id="eat">
									<br>
									<p>进口食品></p>
									<a href="">进口零食</a>
									<a href="">进口巧克力</a>
									<a href="">进口糖果</a>
									<a href="">进口饮料</a>
									<a href="">进口牛奶</a>
									<br><br>
									<p>休闲零食></p>
									<a href="">坚果</a>
									<a href="">饼干</a>
									<a href="">蛋糕</a>
									<a href="">鸭脖</a>
									<a href="">豆干</a>
									<a href="">猪肉脯</a>
									<a href="">牛肉干</a>
									<br><br>
									<p>酒&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类></p>
									<a href="">白酒</a>
									<a href="">红酒</a>
									<a href="">洋酒</a>
									<a href="">啤酒</a>
									<a href="">黄酒</a>
									<a href="">保健酒</a>
									<a href="">葡萄酒</a>
									<br><br>
									<p>茶&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;叶></p>
									<a href="">西湖龙井</a>
									<a href="">安吉白茶</a>
									<a href="">大红袍</a>
									<a href="">铁观音</a>
									<a href="">普洱茶</a>
									<a href="">玫瑰红茶</a>
									<br><br>
									<p>粮油速食></p>
									<a href="">橄榄油</a>
									<a href="">食用油</a>
									<a href="">大米</a>
									<a href="">方便面</a>
									<a href="">意大利面</a>
									<a href="">粽子</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">生鲜水果</a>
								<ul id="fruit">
									<br>
									<p>新鲜蔬菜></p>
									<a href="">土豆</a>
									<a href="">番薯</a>
									<a href="">山药</a>
									<a href="">莲藕</a>
									<a href="">秋葵</a>
									<a href="">生姜</a>
									<a href="">南瓜</a>
									<br><br>
									<p>蛋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类></p>
									<a href="">鸡蛋</a>
									<a href="">鸭蛋</a>
									<a href="">鹅蛋</a>
									<a href="">鸽子蛋</a>
									<a href="">鹌鹑蛋</a>
									<a href="">松花皮蛋</a>
									<a href="">咸鸭蛋</a>
									<br><br>
									<p>肉&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类></p>
									<a href="">牛排</a>
									<a href="">牛腩</a>
									<a href="">牛肉</a>
									<a href="">羊排</a>
									<a href="">鸡肉</a>
									<a href="">鸡腿</a>
									<a href="">乳鸽</a>
									<a href="">鹅肉</a>
									<br><br>
									<p>海鲜水产></p>
									<a href="">鳕鱼</a>
									<a href="">三文鱼</a>
									<a href="">海参</a>
									<a href="">大闸蟹</a>
									<a href="">虾仁</a>
									<a href="">生蚝</a>
									<a href="">北极贝</a>
									<br><br>
									<p>新鲜水果></p>
									<a href="">奇异果</a>
									<a href="">芒果</a>
									<a href="">牛油果</a>
									<a href="">火龙果</a>
									<a href="">榴莲</a>
									<a href="">西柚</a>
									<a href="">香蕉</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">大家电/生活电器</a>
								<ul id="electric">
									<br>
									<p>平板电视></p>
									<a href="">4K超高清</a>
									<a href="">外资品牌</a>
									<a href="">智能电视</a>
									<a href="">超级大屏</a>
									<a href="">客厅首选</a>
									<br><br>
									<p>空&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;调></p>
									<a href="">节能</a>
									<a href="">智能</a>
									<a href="">变频</a>
									<a href="">挂机</a>
									<a href="">中央空调</a>
									<a href="">艺术柜机</a>
									<br><br>
									<p>冰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱></p>
									<a href="">无霜</a>
									<a href="">三门</a>
									<a href="">对开门</a>
									<a href="">电脑温控</a>
									<a href="">智能</a>
									<a href="">冷柜</a>
									<a href="">酒柜</a>
									<br><br>
									<p>厨房大电></p>
									<a href="">烟灶套装</a>
									<a href="">嵌入式烤箱</a>
									<a href="">燃气灶</a>
									<a href="">消毒柜</a>
									<a href="">洗碗机</a>
									<a href="">集成灶</a>
									<br><br>
									<p>中式厨房></p>
									<a href="">净水器</a>
									<a href="">电饭煲</a>
									<a href="">豆浆机</a>
									<a href="">电热水壶</a>
									<a href="">电磁炉</a>
									<a href="">养生壶</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">家具建材</a>
								<ul id="furniture">
									<br>
									<p>客厅餐厅></p>
									<a href="">布艺沙发</a>
									<a href="">实木沙发</a>
									<a href="">懒人沙发</a>
									<a href="">茶几</a>
									<a href="">鞋柜</a>
									<a href="">玄关柜</a>
									<br><br>
									<p>卧室家具></p>
									<a href="">衣柜</a>
									<a href="">床垫</a>
									<a href="">简易衣柜</a>
									<a href="">乳胶床垫</a>
									<a href="">弹簧床垫</a>
									<a href="">实木床</a>
									<br><br>
									<p>家装主材></p>
									<a href="">强化复合地板</a>
									<a href="">瓷砖</a>
									<a href="">墙纸</a>
									<a href="">涂料</a>
									<a href="">油漆</a>
									<a href="">地板</a>
									<br><br>
									<p>厨房卫浴></p>
									<a href="">浴霸</a>
									<a href="">集成吊顶</a>
									<a href="">马桶</a>
									<a href="">淋浴花洒套装</a>
									<a href="">浴室柜组合</a>
									<br><br>
									<p>灯饰照明></p>
									<a href="">吸顶灯</a>
									<a href="">水晶吊灯</a>
									<a href="">灯泡</a>
									<a href="">壁灯</a>
									<a href="">灯具套餐</a>
									<a href="">筒灯</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">汽车/配件/用品</a>
								<ul id="car">
									<br>
									<p>座垫脚垫></p>
									<a href="">秋冬座垫</a>
									<a href="">汽车脚垫</a>
									<a href="">专用座垫</a>
									<a href="">通用座垫</a>
									<a href="">女性座垫</a>
									<br><br>
									<p>机油轮胎></p>
									<a href="">全合成机油</a>
									<a href="">半合成机油</a>
									<a href="">矿物质机油</a>
									<a href="">汽车轮胎</a>
									<a href="">雪地胎</a>
									<br><br>
									<p>电子导航></p>
									<a href="">行车记录仪</a>
									<a href="">安全预警仪</a>
									<a href="">后视镜导航</a>
									<a href="">车载导航</a>
									<a href="">GPS定位</a>
									<br><br>
									<p>车载电器></p>
									<a href="">空气净化器</a>
									<a href="">吸尘器</a>
									<a href="">车载冷暖箱</a>
									<a href="">车载MP3</a>
									<a href="">手机充电器</a>
									<br><br>
									<p>安全自驾></p>
									<a href="">安全座椅</a>
									<a href="">轮胎报警器</a>
									<a href="">充气泵</a>
									<a href="">安全锤</a>
									<a href="">应急工具</a>
								</ul>																	
							</li>
							<li>
								<a href="">家纺/家饰/鲜花</a>
								<ul id="house">
									<br>
									<p>当季热卖></p>
									<a href="">印花四件套</a>
									<a href="">羽绒被</a>
									<a href="">蚕丝被</a>
									<a href="">羊毛被</a>
									<a href="">定制窗帘</a>
									<a href="">浴巾</a>
									<br><br>
									<p>床上用品></p>
									<a href="">四件套</a>
									<a href="">枕头</a>
									<a href="">真丝枕套</a>
									<a href="">颈椎枕</a>
									<a href="">记忆枕</a>
									<a href="">婚庆床品</a>
									<br><br>
									<p>居家布艺></p>
									<a href="">卧室地毯</a>
									<a href="">沙发巾</a>
									<a href="">纯棉毛巾</a>
									<a href="">十字绣</a>
									<a href="">防尘罩</a>
									<br><br>
									<p>家居饰品></p>
									<a href="">墙贴</a>
									<a href="">壁纸</a>
									<a href="">花瓶</a>
									<a href="">相框</a>
									<a href="">闹钟</a>
									<a href="">果盘</a>
									<a href="">首饰盒</a>
									<br><br>
									<p>鲜花绿植></p>
									<a href="">红玫瑰</a>
									<a href="">香槟玫瑰</a>
									<a href="">百合</a>
									<a href="">永生花</a>
									<a href="">萌多肉</a>
									<a href="">康乃馨</a>
								</ul>																	
							</li>
							
							<li>
								<a href="">医药保健</a>
								<ul id="medical">
									<br>
									<p>保&nbsp;健&nbsp;品></p>
									<a href="">维生素C</a>
									<a href="">美容养颜</a>
									<a href="">改善睡眠</a>
									<a href="">祛黄褐斑</a>
									<a href="">安神补脑</a>
									<br><br>
									<p>滋&nbsp;补&nbsp;品></p>
									<a href="">滋补养生</a>
									<a href="">蜂蜜</a>
									<a href="">西洋参</a>
									<a href="">阿胶糕</a>
									<a href="">燕窝</a>
									<a href="">当归</a>
									<br><br>
									<p>医&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;药></p>
									<a href="">感冒咳嗽</a>
									<a href="">腰酸疼痛</a>
									<a href="">血糖仪</a>
									<a href="">保健理疗</a>
									<a href="">针灸拔罐</a>
									<br><br>
									<p>医疗器械></p>
									<a href="">体温计</a>
									<a href="">轮椅</a>
									<a href="">助听器</a>
									<a href="">口罩</a>
									<a href="">血压计</a>
									<a href="">家用器械</a>
									<br><br>
									<p>隐形眼镜></p>
									<a href="">强生美瞳</a>
									<a href="">博士伦</a>
									<a href="">海昌</a>
									<a href="">日抛</a>
									<a href="">月抛</a>
									<a href="">季抛</a>
									<a href="">年抛</a>
								</ul>
							</li>
							
							<li>
								<a href="">厨具/收纳/宠物</a>
								<ul id="cooking">
									<br>
									<p>厨房烹饪></p>
									<a href="">全球家居厨餐具</a>
									<a href="">锅组套装</a>
									<a href="">不粘锅</a>
									<a href="">平底锅</a>
									<a href="">烹饪用具</a>
									<br><br>
									<p>餐&nbsp;饮&nbsp;具></p>
									<a href="">保温杯</a>
									<a href="">水杯</a>
									<a href="">玻璃杯</a>
									<a href="">马克杯</a>
									<a href="">碗碟套装</a>
									<a href="">叉勺筷套装</a>
									<br><br>
									<p>居家礼品></p>
									<a href="">全球家居</a>
									<a href="">雨伞</a>
									<a href="">挂钟</a>
									<a href="">缝纫机</a>
									<a href="">创意礼品</a>
									<a href="">相册</a>
									<br><br>
									<p>收纳清洁></p>
									<a href="">全球家居收纳</a>
									<a href="">全球家居清洁</a>
									<a href="">晾衣架</a>
									<a href="">置物架</a>
									<a href="">旋转拖把</a>
									<br><br>
									<p>纸品清洁></p>
									<a href="">软包抽纸</a>
									<a href="">卷筒纸</a>
									<a href="">手帕纸</a>
									<a href="">湿巾纸</a>
									<a href="">洗衣液</a>
									<a href="">消毒液</a>
								</ul>
							</li>
							
							
						</ul>
					</div>
				</div>
				
				<!--底部右-->
				<div id="bottom_right">
					<div id="bottom_right_top">
						<a href="">天猫超市</a>
						<a href="">天猫国际</a>
						<a href="">天猫会员</a>
						<a href="">电器城</a>
						<a href="">喵鲜生</a>
						<a href="">医药馆</a>
						<a href="">营业厅</a>
						<a href="">魅力惠</a>
						<a href="">魅力惠</a>
						<a href="">飞猪旅行</a>
						<a href="">苏宁易购</a>
					</div>
					<div id="bottom_right_bottom">
					<img src="img/1.png" id="pic"> 	
						<script type="text/javascript">
							var i = 1;
							setInterval(function() {
								i++;
								if (i > 6) {
									i = 1;
								}
								document.getElementById('pic').src = "img/" + i + ".png";
							}, 2000);
						</script>
					</div>
				</div>
			</div>
			
			<br><br>
			<img src="img/index3.png">
			<img src="img/index1.png">
			<img src="img/index2.png">  
			
			
		</div>
	</body>
</html>