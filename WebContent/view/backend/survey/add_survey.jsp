<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm khảo sát</title>
<link rel="stylesheet"
	href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/WebCNM/css/backend/subject.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/WebCNM/static/plugin/ckeditor/ckeditor.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		var i = 3;
		
		$("a#add_ans").click(function () {
			var html = "<input type='text' class='form-control' placeholder='Nhập nội dung...' id='" + i + "' name='ans'>";
			$("#ans").append("<p>Lựa chọn " + i + ": " + html + "</p>");
			i++;
		});
		
		var total_ans = "<input type='hidden' value='" + i + "' name='total_ans'>";
		$("form#add_sv").append(total_ans);
	});
</script>


</head>
<body>
	<div class="container-fluid">
		<div class="row header">
			<%@include file="../components/header.jsp"%>
		</div>
		
		<div class="row content">
			<div id="title">Thêm khảo sát</div>
			<div id="form-add"  style="width: 50%">

				<form action="survey" method="POST" id="add_sv">
					<p><%@include file="../notify/error.jsp" %></p>
					<div class="form-group">
						<label for="">Tiêu đề</label> <input type="text"
							class="form-control" id="" name="title" required>
					</div>
					<div class="form-group">
						<label for="pwd">Nội dung</label>
						<input type="text"
							class="form-control" id="" name="content" required>
					</div>
					<div class="form-group">
						<div id="ans">
							<label for="pwd">Đáp án</label>
							<p>Lựa chọn 1: <input type='text' class='form-control' placeholder='Nhập nội dung...' id='1' name='ans' required></p>
							<p>Lựa chọn 2: <input type='text' class='form-control' placeholder='Nhập nội dung...' id='2' name='ans' required></p>
						</div>
						<a href="#" id="add_ans">Thêm lựa chọn</a>
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