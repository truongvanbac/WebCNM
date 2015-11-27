<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm môn học</title>
<link rel="stylesheet"
	href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/WebCNM/css/backend/subject.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/WebCNM/static/plugin/ckeditor/ckeditor.js"></script>

<style type="text/css">
div#title {
	font-size: 25px;
	text-align: center;
	color: brown;
	margin-bottom: 100px;
}

body {
	background-image: url("/WebCNM/images/backend/body.jpg");
}
</style>




</head>
<body>
	<div class="container-fluid">
		<div class="row header">
			<%@include file="../components/header.jsp"%>
		</div>
		
		<div class="row content">
			<div id="title">Thêm môn học</div>
			<div id="form-add">

				<form action="subject" method="POST">
					<p><%@include file="../notify/error.jsp" %></p>
					<div class="form-group">
						<label for="">Tên môn học</label> <input type="text"
							class="form-control" id="" name="name" required>
					</div>
					<div class="form-group">
						<label for="pwd">Nội dung</label>
						<textarea name="ckeditor" id="ckeditor" rows="10" cols="50" required></textarea>
					</div>
					<button type="submit" class="btn btn-success">Thêm</button>
				</form>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		CKEDITOR.replace('ckeditor');
	</script>
</body>
</html>