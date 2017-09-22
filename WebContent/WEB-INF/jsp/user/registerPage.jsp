<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="${path }/static/css/signin.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<form class="form-signin" action="${path }/user/register" method="post">
			<h3 class="form-signin-heading">请输入注册信息</h3>
			<label for="user_name" class="sr-only">用户名：</label> 
			<input type="text" name="userName" class="form-control" placeholder="用户名：" required autofocus> 
			
			<label for="user_password" class="sr-only">密码：</label> 
			<input type="password" name="userPassword" class="form-control" placeholder="密码：" required>
			
			<label for="user_phone" class="sr-only">手机号码：</label> 
			<input type="text" name="userPhone" class="form-control" placeholder="手机号码：" required>
			
			<label for="user_address" class="sr-only">收货地址：</label> 
			<input type="text" name="userAddress" class="form-control" placeholder="收货地址：" required>
			
			<br/>
			<button class="btn btn-lg btn-success btn-block" type="submit">注册</button>
	
		</form>
	</div>
</body>
</html>