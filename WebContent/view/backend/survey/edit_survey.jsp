<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa khảo sát</title>
<link rel="stylesheet"
	href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/WebCNM/css/backend/subject.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/WebCNM/static/plugin/ckeditor/ckeditor.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		
		$("a#add_ans").click(function () {
			var html = "<input type='text' class='form-control' placeholder='Nhập nội dung...' id='' name='ans'>";
			$("#ans").append("<p>Lựa chọn : " + html + "</p>");
		});
	});
</script>


</head>
<body>
	<div class="container-fluid">
		<div class="row header">
			<%@include file="../components/header.jsp"%>
		</div>
		
		<div class="row content">
			<div id="title">Sửa khảo sát</div>
			<div id="form-add"  style="width: 50%">

				<form action="survey" method="POST" id="add_sv">
					<input type="hidden" name="sv_id" value="${oldSv.id }">
					<p><%@include file="../notify/error.jsp" %></p>
					<div class="form-group">
						<label for="">Tiêu đề</label> <input type="text"
							class="form-control" id="" name="title" required value="${oldSv.title }">
					</div>
					<div class="form-group">
						<label for="pwd">Nội dung</label>
						<input type="text"
							class="form-control" id="" name="content" required value="${oldSv.ask }">
					</div>
					<div class="form-group">
						<div id="ans">
							<label for="pwd">Đáp án</label>
							<c:forEach items="${oldSv.ans }" var="ans">
								<p>Lựa chọn : <input type='text' class='form-control' placeholder='Nhập nội dung...' id='' name='ans'  value="${ans.content }"></p>
							</c:forEach>
						</div>
						<a href="#" id="add_ans">Thêm lựa chọn</a>
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