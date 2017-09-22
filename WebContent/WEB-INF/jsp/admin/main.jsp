<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Insert title here</title>
<style type="text/css">
* {
	font-size: 10pt;
}

body {
	text-align: center;
	margin: 0px;
}

.table {
	width: 100%;
	height: 100%;
	border: 1px solid gray; /*固定边框,1像素*/
	border-collapse: collapse; /*单线的列表边框*/
}

.table td {
	border: 1px solid gray; /*固定边框,1像素*/
}

iframe {
	width: 100%;
	height: 100%;
	
}
.iframe{
	height:580px;
	
}
</style>
</head>

<body>
	<table class="table" align="center" >
		<tr style="background: rgb(78, 78, 78); height: 120px;">
			<td colspan="2" align="center"><iframe frameborder="0" src="${path }/admin/top" name="top"></iframe></td>
		</tr>
		<tr >
			<td width="265" style="padding: 5px;" align="center" valign="top">
				<iframe frameborder="0" width="120" src="${path }/admin/left" name="left" class="iframe"></iframe>
			</td> 
			<td><iframe frameborder="0" src="${path }/admin/body" name="body" class="iframe"></iframe>
			</td>
		</tr>
	</table>
</body>
</html>