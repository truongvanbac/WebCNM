<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.webcnm.helper.StringHelper" %>
<%@ page import="com.webcnm.modal.Subject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách sinh viên</title>
<link rel="stylesheet"
	href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/WebCNM/css/backend/subject.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$("#checkAll").click(function() {
			if (this.checked) {
				$("button#del").show(100);
				$('.case').each(function() {
					this.checked = true;
				});
			} else {
				$("button#del").hide(100);
				$('.case').each(function() {
					this.checked = false;
				});
			}
		});

		var ckbox = $('.case');
		$('input.case').on('click', function() {
			if (ckbox.is(':checked')) {
				$("button#del").show(100);
				$("button#edit").show(100);
			} else {
				$("button#del").hide(100);
				$("button#edit").hide(100);
			}
		});
		
		
		
		
	});
</script>

</head>
<body>
	<div class="container-fluid">
		<div class="row header">
			<%@include file="../components/header.jsp"%>
		</div>
		<div class="row error"><p><%@include file="../notify/success.jsp" %></p></div>
		<div class="row content">
			<div id="title">Danh sách sinh viên</div>
			
			<form action="student" method="POST" id="act">
				<div id="action">
					<button type="submit" value="del" class="btn btn-default" id="del" name="delSt"> <span class="glyphicon glyphicon-remove"></span> Xóa</button>
					
					<!--  <a href="" class="btn btn-default" id="active"><span class="glyphicon glyphicon-eye-open"></span> Active</a> 
					<a href="" class="btn btn-default" id="deactive"><span class="glyphicon glyphicon-eye-close"></span> Deactive</a>-->
				</div>

				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th><input type="checkbox" id="checkAll" /></th>
							<th>ID</th>
							<th width="30%">Tên đang nhập</th>
							<th width="40%">Họ tên</th>
							<th width="20%">Lớp</th>
							<th width="10%">Action</th>
						</tr>
					</thead>
					<tbody>
						<% StringHelper h = new StringHelper(); %>
						<c:forEach items="${listStudents }" var="sj">
							<tr>
								<td style="vertical-align: middle;" align="center">
									<input class="case" type="checkbox" name="checkbox" value="${sj.id }" />
								</td>
								<td style="vertical-align: middle;" align="center"><c:out value="${sj.id }" /></td>
								<td style="vertical-align: middle;"><c:out value="${sj.username }" /></td>
								<td style="vertical-align: middle;"><c:out value="${sj.fullname }" /></td>
								<td style="vertical-align: middle;"><c:out value="${sj.classroom }" /></td>
								<td style="vertical-align: middle;">
									<a href="" data-toggle="modal" data-target="#dell${sj.id }" class="btn btn-default"><span class="glyphicon glyphicon-remove"></span> Xóa</a>
									
									<!-- Modal -->
									<div class="modal fade" id="dell${sj.id }" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">Xác nhận</h4>
												</div>
												<div class="modal-body">
													<p>Bạn có muốn xóa không?</p>
													<c:out value="${sj.id }" />
												</div>
												<div class="modal-footer">
													<a href="student?ref=del&st_id=${sj.id }" class="btn btn-danger" id="del"> <span class="glyphicon glyphicon-remove"></span> Xóa</a>
													<a href="" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle"></span> Đóng</a>
												</div>
											</div>
										</div>
									</div>
									<!-- End modal -->
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>

			<div id="pagination">
				<%--For displaying Previous link except for the 1st page --%>
				<c:if test="${currentPage != 1}">
					<ul class="pagination">
						<li><a href="student?ref=list&page=${currentPage - 1}"><< Trang trước</a></li>
					</ul>
				</c:if>

				<%--For displaying Page numbers. The when condition does not display a link for the current page--%>
						<c:forEach begin="1" end="${noOfPages}" var="i">
							<c:choose>
								<c:when test="${currentPage eq i}">
									<ul class="pagination">
									<li class="disabled"><a href="" style="background-color: #98bf21;">${i}</a></li>
								</ul>
								</c:when>
								<c:otherwise>
								<ul class="pagination">
									<li><a href="student?ref=list&page=${i}">${i}</a></li>
								</ul>
								</c:otherwise>
							</c:choose>
						</c:forEach>

				<%--For displaying Next link --%>
				<c:if test="${currentPage < noOfPages}">
					<ul class="pagination">
						<li><a href="student?ref=list&page=${currentPage + 1}">Trang sau >></a></li>
					</ul>
				</c:if>
			</div>

		</div>
	</div>
</body>
</html>