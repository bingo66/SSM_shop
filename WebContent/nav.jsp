<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${path }/index.jsp">SSM_shop</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li ><a href="${path }/index.jsp">首页</a></li>
				<li><a href="${path }/goods/showGoods">商品</a></li>
				<li><a href="${path }/cart/showCart">购物车</a></li>
				<%
		Object user = session.getAttribute("user");
		if (user != null) {
	%>
				<li><a href="${path }/user/personalInfo">个人中心</a></li>
				<%}else{
					%>
				<li><a href="${path }/user/reg_Login">登录/注册</a>
				<%} %>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
