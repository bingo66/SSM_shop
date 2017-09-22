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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${path}/static/css/menu/menu.js"></script>
<link rel="stylesheet" href="${path}/static/css/menu/menu.css" type="text/css"
	media="all">
<script language="javascript">
	var bar1 = new MenuBar("bar1", "商城后台管理");
	function load() {
		bar1.colorStyle = 2;
		bar1.config.imgDir = "${path}/static/css/menu/img/";
		bar1.config.radioButton = false;
		bar1.add("商品管理", "添加商品", "${path}/admin/addGoodsPage", "body");
		
		bar1.add("商品管理", "查询商品", "${path}/admin/selectAllGoods", "body");

		bar1.add("订单管理", "查看所有订单", "${path}/admin/getAllOrder", "body");
		bar1.add("订单管理", "查看未付款订单", "${path}/admin/selectNoPayedOrder", "body");
		bar1.add("订单管理", "查看已付款订单", "${path}/admin/selectPayedOrder", "body");
	

		var d = document.getElementById("menu");
		d.innerHTML = bar1.toString();
	}
</script>

</head>

<body onload="load()" style="margin: 0px; background: #ffffff;">
	<div id="menu"></div>

</body>
</html>
