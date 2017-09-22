<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${path}/static/js/user-defined/main.js" type="text/javascript"
	charset="utf-8"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="margin: 0px;">
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="jumbotron">
					<h2 style="text-align: center;">欢迎进入卖家管理服务平台！</h2>
					<p>
						本平台服务于SMART旗舰商城，可供进驻SMART旗舰商城的卖家或厂商管理自己的店铺。<br />请点击右侧选项，开始管理店铺。
					</p>
					<p style="font-size: 14px;">
						提示：本平台主要服务于已在SMART旗舰商城实名注册并通过认证的卖家。一般买家无法进入本平台。本系统所有权归XXXX公司所有。</p>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>