<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font-size: 10pt;
}

.icon {
	margin: 30px;
	border: none;
	width: 160px;
	height: 180px;
	text-align: center;
	float: left;
	
}
</style>
</head>

<body>
	<c:forEach items="${goodsList }" var="goods">
		
		<div class="icon" >
			<img src="${path }${goods.goodsPicture }" width="160px" height="180px">
			${goods.goodsName}<br/>
			<a href="${path }/admin/removeGoods?goodsId=${goods.goodsId}"><button>删除</button></a>
			<a href="${path }/admin/editPage?goodsId=${goods.goodsId}"><button>修改</button></a>
		</div>
	</c:forEach>
</body>

</html>