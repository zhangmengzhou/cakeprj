<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
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
						<li><a href="${contextpath }/index.jsp" class="active">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Birthday<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Friend</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Lover</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Sister</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Brother</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Kids</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Chocolate</a></li>
											<li><a class="list" href="products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="products.jsp">Butterscotch</a></li>
											<li><a class="list" href="products.jsp">Strawberry</a></li>
											<li><a class="list" href="products.jsp">Vanilla</a></li>
											<li><a class="list" href="products.jsp">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Heart shaped</a></li>
											<li><a class="list" href="products.jsp">Cartoon Cakes</a></li>
											<li><a class="list" href="products.jsp">2-3 Tier Cakes</a></li>
											<li><a class="list" href="products.jsp">Square shape</a></li>
											<li><a class="list" href="products.jsp">Round shape</a></li>
											<li><a class="list" href="products.jsp">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">1 kG</a></li>
											<li><a class="list" href="products.jsp">1.5 kG</a></li>
											<li><a class="list" href="products.jsp">2 kG</a></li>
											<li><a class="list" href="products.jsp">3 kG</a></li>
											<li><a class="list" href="products.jsp">4 kG</a></li>
											<li><a class="list" href="products.jsp">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Wedding<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Friend</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Lover</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Sister</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Brother</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Kids</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Chocolate</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Butterscotch</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Strawberry</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Vanilla</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Heart shaped</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Cartoon Cakes</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">2-3 Tier Cakes</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Square shape</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Round shape</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">1 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">1.5 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">2 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">3 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">4 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Special Offers <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Friend</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Lover</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Sister</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Brother</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Kids</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Chocolate</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Butterscotch</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Strawberry</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Vanilla</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Heart shaped</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Cartoon Cakes</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">2-3 Tier Cakes</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Square shape</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Round shape</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">1 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">1.5 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">2 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">3 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">4 kG</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Store<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-4">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Friend</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Lover</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Sister</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Brother</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Kids</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-4">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Chocolate</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Butterscotch</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Strawberry</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Vanilla</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Eggless Cakes</a></li>
										</ul>
									</div>								
									<div class="col-sm-4">
										<h4>Specials</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${contextpath }/products.jsp">Ice cream cake</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Swiss roll</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Ruske kape</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Cupcakes</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Muffin</a></li>
											<li><a class="list" href="${contextpath }/products.jsp">Merveilleux</a></li>										
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
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>	
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">        
						<c:if test="${username != null }">
							<form id="loginForm">
							<br>
							<h3>Hello，<a class="sign" href="#">${username }</a> <span><a href="${contextpath }/user/loginout">log off</a></span></h3>
							<br>
							<h4><span><a href="${contextpath }/information.jsp">Modifying personal information</a></span></h4>
							</form>
						</c:if>
						<c:if test="${username == null }">
							<form id="loginForm" action="${contextpath }/user/login" method="post">
								<fieldset id="body">
								<h4>${fails }</h4>
									<fieldset>
										<label for="email">UserName</label>
										<input type="text" name="username" id="email">
									</fieldset>
									<fieldset>
										<label for="password">PassWord</label>
										<input type="password" name="password" id="password">
									</fieldset>
									<input type="submit" id="login" value="Sign in">
									<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
								</fieldset>
								<p>New User ? <a class="sign" href="${contextpath }/account.jsp">Sign Up</a> <span><a href="${contextpath }/password.jsp">Forgot your password?</a></span></p>
							</form>
						</c:if>
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.jsp">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>) 
						</a></h4>
						<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
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
			<h2 class="hdng">Yummy <span>Cakes</span> for u</h2>
			<p>Our best cakes make your day special</p>
			<a href="${contextpath }/products.jsp">SHOP NOW</a>
			<div class="banner-text">			
				<img src="${contextpath }/static/images/2.png" alt=""/>	
			</div>
		</div>
	</div>			
	<!--//banner-->
	<!--gallery-->
	<div class="gallery">
		<div class="container">
			<div class="gallery-grids">
				<div class="col-md-8 gallery-grid glry-one">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g1.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid glry-two">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g2.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info galrr-info-two">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g3.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g4.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g5.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g6.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g7.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g8.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g9.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${contextpath }/products.jsp"><img src="${contextpath }/static/images/g10.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${contextpath }/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<!--//gallery-->
	<!--subscribe-->
	<div class="subscribe">
		 <div class="container">
			 <h3>Newsletter</h3>
			 <form>
				 <input type="text" class="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
				 <input type="submit" value="Subscribe">
			 </form>
		 </div>
	</div>
	<!--//subscribe-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="${contextpath }/products.jsp">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="${contextpath }/contact.jsp">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>Connect with Us</h4>
					<ul>
						<li><a href="#"><img src="${contextpath }/static/images/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="${contextpath }/static/images/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="${contextpath }/static/images/i3.png" alt=""/>Follow us on Google-plus</a></li>
						<li><a href="#"><img src="${contextpath }/static/images/i4.png" alt=""/>Follow us on Pinterest</a></li>
					</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p>
		</div>
	</div>
</body>
</html>