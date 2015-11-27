<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
<title>Trang quản trị</title>

<style type="text/css">
div#title {
	font-size: 25px;
	text-align: center;
	color: brown;
	margin-bottom: 100px;
}

.content {
	
}

body {
	background-image: url("/WebCNM/images/backend/body.jpg");
}
</style>

</head>
<body>
	<div class="container-fluid">
		<div class="row header">
			<%@include file="components/header.jsp"%>
		</div>
		
		<div class="row content">
			<%@include file="notify/success.jsp" %>
			<div id="title">Trang quản lý giảng dạy, học tập cá nhân</div>
			<%@include file="components/index.jsp"%>
		</div>
	</div>
</body>
</html>