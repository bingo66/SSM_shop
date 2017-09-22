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
</head>
<body>
	
	
	
	<P align="center">${loginMSG}</P>

	<%
		if (session.getAttribute("user") != null) {
	%>
	<p align="center">2秒后跳转到首页
	<p>
		<%
			response.setHeader("refresh", "2,url=" + request.getContextPath() + "/index.jsp");
			}else{
				response.setHeader("refresh", "2,url="+request.getContextPath()+"/user/reg_Login");
				%>
				<p align="center">2秒后跳转到登录页面
				<%
			}
		%>
	
</body>
</html>