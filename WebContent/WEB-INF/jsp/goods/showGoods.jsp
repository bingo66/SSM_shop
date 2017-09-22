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
<style type="text/css">
.icon {
	margin: 30px;
	border: /* solid 1px black; */;
	width: 160px;
	height: 200px;
	text-align: center;
	float: left;
}
</style>
<script>
	function createXMLHttpRequest() {
		try {
			return new XMLHttpRequest();
		} catch (e) {
			try {
				return new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				return new ActiveXObject("Microsoft.XMLHTTP");
			}
		}
	}

	function send(obj) {

		var xmlHttp = createXMLHttpRequest();

		xmlHttp.open("POST", "${path}/cart/addGoods", true);
		xmlHttp.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");

		var goodsId = document.getElementById(obj.id).value;

		xmlHttp.send("goodsId=" + goodsId);

	}
</script>
</head>
<body>
	<%@ include file="/nav.jsp"%>
	<div class="container">
		<!-- <div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div class="jumbotron"> -->

		<c:forEach items="${goodsList }" var="goods">

			<div class="icon">
				<img src="${path }${goods.goodsPicture }" width="155px"
					height="175px"> ${goods.goodsName }/<span style="color: red">${goods.goodsPrice }元</span><br />
				<button class="btn btn-default btn-xs" onclick="send(this)"
					value="${goods.goodsId }" id="${goods.goodsId }"">加入购物车</button>
			</div>

		</c:forEach>
	</div>


</body>
</html>