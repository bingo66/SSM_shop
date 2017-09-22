<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="${path }/static/css/signin.css" rel="stylesheet">
</head>
<body>
<body>
	<div class="container">
		<form class="form-signin" action="${path }/user/login" method="post">
			<h2 class="form-signin-heading">请登录</h2>
			<label for="用户名：" class="sr-only">用户名：</label> <input
				type="text" name="userName" class="form-control"
				placeholder="用户名：" required autofocus> <label
				for="密码：" class="sr-only">密码：</label> <input
				type="password" name="userPassword" class="form-control"
				placeholder="密码：" required>
				
				
			<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
		<button class="btn btn-lg btn-success btn-block" onClick="location.href='${path}/user/registerPage'">注册</button>
			
		</form>

	</div>
	<!-- /container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</body>

</html>