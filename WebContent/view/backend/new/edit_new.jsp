<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa thông báo</title>
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
			<div id="title">Sửa thông báo</div>


			<div id="form-add">

				<form action="new" method="POST">
					<p><%@include file="../notify/error.jsp" %></p>
					<input type="hidden" name="nid" value="${oldSj.id }">
					<div class="form-group">
						<label for="">Tiêu đề</label> <input type="text"
							class="form-control" id="" value="${oldSj.title }" name="title">
					</div>
					<div class="form-group">
						<label for="pwd">Nội dung</label>
						<textarea name="ckeditor" id="ckeditor" rows="10" cols="50">${oldSj.content }</textarea>
					</div>
					
					<button type="submit" class="btn btn-success">OK</button>
				</form>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		CKEDITOR.replace('ckeditor');
	</script>
</body>
</html>