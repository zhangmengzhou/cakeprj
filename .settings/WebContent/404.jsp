<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Yummy</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="${contextpath }/static/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="${contextpath }/static/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="${contextpath }/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${contextpath }/static/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="${contextpath }/static/js/simpleCart.min.js"> </script>
<!-- cart -->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="${contextpath }/index.jsp">Yummy</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="${contextpath }/index.jsp" class="active">首页</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">生日蛋糕<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>按对象</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value2=朋友">送朋友</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value2=恋人">送恋人</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value2=长辈">送长辈</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value2=领导">送领导</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value2=客户">送客户</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value2=儿童">送儿童</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>按材料</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value3=巧克力">巧克力蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value3=水果">欧式水果蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value3=奶油">奶油蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value3=慕斯">慕斯蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value3=彩虹">彩虹蛋糕</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>按造型</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value4=心形">心形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value4=圆形">圆形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value4=方形">方形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value4=生肖">生肖蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value4=层">多层蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&value4=艺术">艺术蛋糕</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>按价格</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&price1=0&price2=200">0-200</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&price1=200&price2=400">200-400</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&price1=400&price2=600">400-600</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&price1=600&price2=1000">600-1000</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=生日&price1=1000&price2=10000">1000-10000</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">爱情蛋糕<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">																	
									<div class="col-sm-3">
										<h4>按材料</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value3=巧克力">巧克力蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value3=水果">欧式水果蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value3=奶油">奶油蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value3=慕斯">慕斯蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value3=彩虹">彩虹蛋糕</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>按造型</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value4=心形">心形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value4=圆形">圆形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value4=方形">方形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value4=生肖">生肖蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value4=层">多层蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&value4=艺术">艺术蛋糕</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>按价格</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&price1=0&price2=200">0-200</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&price1=200&price2=400">200-400</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&price1=400&price2=600">400-600</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&price1=600&price2=1000">600-1000</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=爱情&price1=1000&price2=10000">1000-10000</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">婚礼蛋糕<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">																
									<div class="col-sm-3">
										<h4>按材料</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value3=巧克力">巧克力蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value3=水果">欧式水果蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value3=奶油">奶油蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value3=慕斯">慕斯蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value3=彩虹">彩虹蛋糕</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>按造型</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value4=心形">心形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value4=圆形">圆形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value4=方形">方形蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value4=生肖">生肖蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value4=层">多层蛋糕</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&value4=艺术">艺术蛋糕</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>按价格</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&price1=0&price2=200">0-200</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&price1=200&price2=400">200-400</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&price1=400&price2=600">400-600</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&price1=600&price2=1000">600-1000</a></li>
											<li><a class="list" href="${contextpath }/cake/list.do?value1=婚礼&price1=1000&price2=10000">1000-10000</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>				
					</ul>
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form" action="${contextpath }/cake/list.do">
							<input type="text" class="form-control" name="value" >
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								搜索
							</button>
						</form>
					</div>	
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">        
						<c:if test="${user.username != null }">
							<form id="loginForm">
							<br>
							<h3>欢迎您，<a class="sign" href="#">${user.username }</a>！<span><a href="${contextpath }/user/loginout.do">注销</a></span></h3>
							<br>
							<h4><span><a href="${contextpath }/information.jsp">修改个人信息</a></span></h4>
							</form>
						</c:if>
						<c:if test="${user.username == null }">
							<form id="loginForm" action="${contextpath }/user/login.do" method="post">
								<fieldset id="body">
								<h4>${fails }</h4>
									<fieldset>
										<label for="email">用户名</label>
										<input type="text" name="username" id="email">
									</fieldset>
									<fieldset>
										<label for="password">密码</label>
										<input type="password" name="password" id="password">
									</fieldset>
									<input type="submit" id="login" value="登录">
									<label for="checkbox"><input type="checkbox" id="checkbox"> <i>记住我</i></label>
								</fieldset>
								<p>新用户 ? <a class="sign" href="${contextpath }/account.jsp">注册</a> <span><a class="sign" href="${contextpath }/password.jsp">忘记密码?</a><a href="${contextpath }/adminlogin.jsp">店长登录</a></span></p>
							</form>
						</c:if>
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<p><a href="${contextpath }/cartiteam/show.do?cartid=${user.cart.cartid}" >查看购物车</a></p>
						<p><a href="${contextpath }/order/show.do?userid=${user.id }" >查看订单</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<div class="container">
			<h2 class="hdng"><span>4</span>0<span>4</span>，敬请<span>期待</span></h2>
			<p>Our best cakes make your day special</p>
			<div class="banner-text">			
				<img src="${contextpath }/static/images/2.png" alt=""/>	
			</div>
		</div>
	</div>			
	<!--//banner-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p>
		</div>
	</div>
</body>
</html>