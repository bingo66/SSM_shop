<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function sendGoods(){
		return confirm("确定发货？");
	}
</script>
<style>
.head {
	background-color: #EFF4FB;
	border: #A9CBEE 1px solid;
	height: 80px;
	width: 1024px;
	margin: auto;
	margin-bottom: 10px;
}

.head h3 {
	width: 320px;
	font-size: 20px;
	padding-top: 15px;
	padding-left: 30px;
}

.head ul {
	float: left;
	padding-left: 320px;
	text-align: center;
}

.head li {
	width: 233px;
	height: 20px;
	float: left;
	font-size: 15px;
}

table {
	background-color: #ffffff;
	border: #CCCCCC 1px solid;
	width: 1024px;
	margin: auto;
}
</style>
<body>

	<table class="table table-hover table-bordered">
		<tr>
			<th colspan="5">已付款订单</th>
		</tr>
		<c:forEach items="${orderList }" var="order">
		<tr>
			<td colspan="5">订单号：${order.orderId }&nbsp;&nbsp;
			下单时间：${order.orderTime }&nbsp;&nbsp;
			订单金额：${order.orderPrice }&nbsp;&nbsp;
			订单状态：<c:choose>
					<c:when test="${order.orderState == 1 }">
						<b>等待付款</b>
					</c:when>
					<c:when test="${order.orderState == 2 }"><a href="${path }/order/sendGoods?orderId=${order.orderId}" onclick="sendGoods()">等待发货</a></c:when>
					<c:when test="${order.orderState == 3 }">
						<b>等待收货</b>
					</c:when>
					<c:otherwise>成功</c:otherwise>
				</c:choose><br/>
			收件人号码：${order.orderPhone }
			收件人地址：${order.orderAddress }
			</td>
			
		</tr>
		<c:forEach items="${order.orderItem }" var="orderItem">
		<tr>
			<td width="15%">
				<div><img src="${path }${orderItem.goods.goodsPicture }" height="75"/></div>
			</td>
			<td>商品名称：${orderItem.goods.goodsName }</td>
			<td>单价：${orderItem.goods.goodsPrice }</td>
			<td>数量：${orderItem.goodsCount }</td>
			<td>小计：${orderItem.goodsCount*orderItem.goods.goodsPrice }</td>
		</tr>
		</c:forEach>
		</c:forEach>
		
	</table>

</body>
</html>