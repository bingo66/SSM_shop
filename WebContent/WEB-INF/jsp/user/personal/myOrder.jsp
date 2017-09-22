<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function pay() {
		return confirm("确定要付款吗？");
	}
	function confirmGoods() {
		return confirm("确定要确认收货吗？");
	}
</script>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>SMART旗舰商城-个人中心</title>

<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
</style>
</head>
<body>
	<p align="center">我的订单</p>
	<table class="table table-hover table-bordered" >
		
		<c:forEach items="${orderList }" var="order">
			
			<c:forEach items="${order.orderItem }" var="orderItem">
				<tr>
					<td>
						<div>
							<img src="${path }${orderItem.goods.goodsPicture }" height="75" />
						</div>
					</td>
					<td>商品名称：${orderItem.goods.goodsName }</td>
					<td>单价：${orderItem.goods.goodsPrice }</td>
					<td>数量：${orderItem.goodsCount }</td>
					<td>小计：${orderItem.goodsCount*orderItem.goods.goodsPrice }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5">订单号：${order.orderId }&nbsp;&nbsp;
					下单时间：${order.orderTime }&nbsp;&nbsp; 订单金额：${order.orderPrice }&nbsp;&nbsp;
					订单状态：<c:choose>
						<c:when test="${order.orderState == 1 }">
							<a
								href="${path }/order/pay?orderId=${order.orderId}"
								onclick="pay()">等待付款</a>
						</c:when>
						<c:when test="${order.orderState == 2 }">
							<b>等待发货</b>
						</c:when>
						<c:when test="${order.orderState == 3 }">
							<a
								href="${path }/order/confirm?orderId=${order.orderId}"
								onclick="confirmGoods()">确认收货</a>
						</c:when>
						<c:otherwise>成功</c:otherwise>
					</c:choose><br /> 收件人号码：${order.orderPhone } 收件人地址：${order.orderAddress }
				</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>