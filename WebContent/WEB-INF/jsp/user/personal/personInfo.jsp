<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="ssm.shop.entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>SMART旗舰商城-个人中心</title>
<link type="text/css" rel="stylesheet" href="${path }/static/style/reset.css">
<link type="text/css" rel="stylesheet" href="${path }/static/style/main.css">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="${path }/static/css/offcanvas.css" rel="stylesheet">
</head>
<body>
	<%@ include file="/nav.jsp"%>

	<div class="container">
		<!-- <div class="row row-offcanvas row-offcanvas-right"> -->

			<div class="col-xs-12 col-sm-9">
				<!-- <p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p> -->
				<!-- <div class="jumbotron"> -->
					<iframe frameborder="0" src="${path }/user/myOrder"
						name="body" id="information" style="height: 2400px; width: 100%;"></iframe>
				<!-- </div> -->

			</div>
		</div>
	<!-- </div> -->
</body>
</html>