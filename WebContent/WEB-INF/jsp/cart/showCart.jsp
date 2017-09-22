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
<link href="${path }/static/css/offcanvas.css" rel="stylesheet">
</head>
<body>
	<%@ include file="/nav.jsp"%>
	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div class="jumbotron">
					<h4 align="center">购物车</h4>
					<table class="table">
							<th>商品名称</th><th>单价</th><th>数量</th><th>操作</th>
							<c:forEach items="${sessionScope.cart }" var="cart">
								<tr>
									<td>${cart.key.goodsName}</td><td>${cart.key.goodsPrice}</td><td>${cart.value}</td>
								</tr>
								
								<c:set var="totalPrice" value="${cart.key.goodsPrice*cart.value+totalPrice }"></c:set>
							</c:forEach>
							<tr>
								<td colspan="3" align="right" style="color: red">总计：${totalPrice }元</td>
							</tr>
							<tr><td colspan="3" align="right" ><a href="${path }/order/createOrder?price=${totalPrice}"><button class="btn btn btn-primary">立即下单</button></a></td></tr>
					</table>
					
					
				</div>

			</div>
		</div>
	</div>
</body>
</html>