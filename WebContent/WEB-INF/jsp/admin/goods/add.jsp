<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
body {
	background-color: #f2f2f2;
}

.good_description {
	width:;
}

.adddiv {
	padding-left: 100px;
}

</style>

</head>
<body>
	<div class="adddiv">
		<h1>添加商品</h1>
		
		<form action="${path }/admin/addGoods" method="post" enctype="multipart/form-data" style="width: 800px">
			商品名称：<input style="width: 200px; height: 20px;" type="text" name="goodsName" /><br /> <br/>
			商品图片：<input type="file" name="pic" accept="image/*" /><br /> <br/>
			商品单价：<input style="width: 200px; height: 20px;" type="text" name="goodsPrice" />元<br /><br/>
			
			<br /> <br/>
			<input type="submit" value="提交" style="width: 69px" /> 
			<input type="reset" value="重置" style="width: 69px">
		</form>
	</div>
</body>
</html>