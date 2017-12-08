<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理系统</title>
<link type="text/css" rel="stylesheet" href="${contextpath }/static/css/backgroundstyle.css" />
<script type="text/javascript" src="${contextpath }/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${contextpath }/static/js/menu.js"></script>
	<style type="text/css">
		.book{font-weight:bold;font-size:150%;}
	</style>
</head>

<body>

<div class="top"></div>
<div id="header">
	<div class="logo">Yummy后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="#">${admin.realName }</a></li>
			<li><a href="bgadminupdate.jsp?">修改信息</a></li>
			<li><a href="${contextpath }/admin/loginout.do">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none">
            <a href="background.jsp?realname=${param.realName }">最新公告</a>
          </div>
        </li>
        <li>
          <h4 class="M7"><span></span>订单处理</h4>
          <div class="list-item none">
            <a href="bgorder.jsp?realname=${param.realname }">查看订单</a>
           </div>
        </li>
        <li>
          <h4 class="M9"><span></span>图书管理</h4>
          <div class="list-item none">
            <a href="bgbook.jsp?realname=${param.realname }">图书信息</a>
            <a href="bgbookadd.jsp?realname=${param.realname }">新增图书</a>
            <a href="bgbookupdate.jsp?realname=${param.realname }">修改图书信息</a>
          </div>
        </li>
				<li>
          <h4 class="M10"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href="bguser.jsp?realname=${param.realname }">用户信息</a>
            <a href="bguseradd.jsp?realname=${param.realname }">新增用户</a>
            <a href="bguserupdate.jsp?realname=${param.realname }">修改用户信息</a>
          </div>
        </li>
				<li>
          <h4 class="M10"><span></span>管理员管理</h4>
          <div class="list-item none">
            <a href="bgadmin.jsp?realname=${param.realname }">管理员信息</a>
            <a href="bgadminadd.jsp?realname=${param.realname }">新增管理员</a>
            <a href="bgadminupdate.jsp?realname=${param.realname }">修改管理员信息</a>
          </div>
          </li>
  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">最新公告</a></li>
						</ul>
			</div>
			<div class="main">
				<p class="book">&nbsp;&nbsp;本店上新9款蛋糕，欢迎抢购</p>
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有 京ICP备05019125号-10</p></div>
<script>navList(12);</script>
</body>
</html>