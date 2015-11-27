<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa thông tin cá nhân</title>
<link rel="stylesheet"
	href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/WebCNM/css/backend/subject.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/WebCNM/static/plugin/ckeditor/ckeditor.js"></script>



</head>
<body>
	<div class="container-fluid">
		<div class="row header">
			<%@include file="../components/header.jsp"%>
		</div>

		<div class="row content">
			<div id="title">Sửa thông tin cá nhân</div>


			<div id="form-add" style="width: 40%;">

				<form action="teacher" method="POST" enctype="multipart/form-data">
					<p><%@include file="../notify/error.jsp" %></p>
					<div class="form-group">
						<label for="">Họ tên</label> <input type="text"
							class="form-control" id="" value="${teacher.fullname }" name="fullname" required>
					</div>
					<div class="form-group">
						<label for="">Chức vị</label> <input type="text"
							class="form-control" id="" value="${teacher.regency }" name="regency">
					</div>
					<div class="form-group">
						<label for="">Di động</label> <input type="text"
							class="form-control" id="" value="${teacher.mobile_number }" name="mobile">
					</div>
					<div class="form-group">
						<label for="">Điện thoại cơ quan</label> <input type="text"
							class="form-control" id="" value="${teacher.phone_com }" name="phone_com">
					</div>
					<div class="form-group">
						<label for="">Địa chỉ nhà</label> <input type="text"
							class="form-control" id="" value="${teacher.add_home }" name="add_home">
					</div>
					<div class="form-group">
						<label for="">Địa chỉ cơ quan</label> <input type="text"
							class="form-control" id="" value="${teacher.add_com }" name="add_com">
					</div>
					<div class="form-group">
						<label for="">Avatar</label> <input type="file"
							class="form-control" id="" value="" name="file">
					</div>
					<button type="submit" class="btn btn-success">OK</button>
				</form>

			</div>
		</div>
	</div>
</body>
</html>