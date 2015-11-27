<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.webcnm.helper.StringHelper" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách thông báo</title>
<link rel="stylesheet" href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
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
				$("button#edit").hide(100);
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
				var numberOfChecked = $('input:checkbox:checked').length;
				if(numberOfChecked == 1) {
					$("button#del").show(100);
					$("button#edit").show(100);
				} else {
					$("button#del").show(100);
					$("button#edit").hide(100);
				}
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
			<div id="title">Danh sách thông báo</div>
			
			<form action="new" method="POST" id="act">
				<div id="action">
					<a href="new?ref=add" class="btn btn-default" id="add"> <span class="glyphicon glyphicon-plus"></span> Thêm</a>
					<button type="submit" value="del" class="btn btn-default" id="del" name="delNew"> <span class="glyphicon glyphicon-remove"></span> Xóa</button>
					<button type="submit" value="edit" class="btn btn-default" id="edit" name="editNew"> <span class="glyphicon glyphicon-edit"></span> Sửa</button>
					
					 
					<!--  <a href="" class="btn btn-default" id="active"><span class="glyphicon glyphicon-eye-open"></span> Active</a> 
					<a href="" class="btn btn-default" id="deactive"><span class="glyphicon glyphicon-eye-close"></span> Deactive</a>-->
				</div>

				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th style="vertical-align: middle;"><input type="checkbox" id="checkAll" /></th>
							<th style="vertical-align: middle;">ID</th>
							<th width="20%">Tiêu đề</th>
							<th width="40%">Nội dung</th>
							<th width="10%">Thời gian</th>
							<th width="10%">Cập nhật</th>
							<th width="15%">Action</th>
						</tr>
					</thead>
					<tbody>
						<% StringHelper h = new StringHelper(); %>
						<c:forEach items="${listNews }" var="sj">
							<tr>
								<td style="vertical-align: middle;" align="center">
									<input class="case" type="checkbox" name="checkbox" value="${sj.id }" />
								</td>
								<td style="vertical-align: middle;">
									<c:out value="${sj.id }" />
								</td>
								<td style="vertical-align: middle;">
									<a href="" data-toggle="modal" data-target="#${sj.id }"><c:out value="${sj.title }" /></a>
								</td>
								<td>
									<% String s = ""; %>
									<c:set var="content" value="${sj.content }" scope="request"/>
									<% s = (String) request.getAttribute("content"); %>
									<% String outp =  h.printText(s); %>
									<%= h.printLimitChar(outp, 150) %>
								</td>
								<td style="vertical-align: middle;" align="center">
									<c:out value="${sj.time_created }" />
								</td>
								<td style="vertical-align: middle;" align="center">
									<c:out value="${sj.time_updated }" />
								</td>
								<td style="vertical-align: middle;">
									<a href="new?ref=edit&nid=${sj.id }" class="btn btn-default" id="edit"> <span class="glyphicon glyphicon-edit"></span> Sửa</a>
									
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
													<a href="new?ref=del&nid=${sj.id }" class="btn btn-danger" id="del"> <span class="glyphicon glyphicon-remove"></span> Xóa</a>
													<a href="" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle"></span> Đóng</a>
												</div>
											</div>
										</div>
									</div>
									<!-- End modal -->
								</td>
							</tr>
	
							<!-- Modal -->
	
							<div id="${sj.id }" class="modal fade" role="dialog">
								<div class="modal-dialog" >
	
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title" style="color: red">
												<c:out value="${sj.title }" />
											</h4>
										</div>
										<div class="modal-body" style="background-color: aliceblue;">
											<p>
												<c:out value="${sj.content }" escapeXml="false" />
											</p>
										</div>
										<div class="modal-footer">
											<a href="new?ref=edit&nid=${sj.id }" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Sửa</a> <a href=""
												class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle"></span> Đóng</a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</tbody>
				</table>
			</form>

			<div id="pagination">
				<%--For displaying Previous link except for the 1st page --%>
				<c:if test="${currentPage != 1}">
					<ul class="pagination">
						<li><a href="new?ref=list&page=${currentPage - 1}"><< Trang trước</a></li>
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
									<li><a href="new?ref=list&page=${i}">${i}</a></li>
								</ul>
								</c:otherwise>
							</c:choose>
						</c:forEach>

				<%--For displaying Next link --%>
				<c:if test="${currentPage < noOfPages}">
					<ul class="pagination">
						<li><a href="new?ref=list&page=${currentPage + 1}">Trang sau >></a></li>
					</ul>
				</c:if>
			</div>

		</div>
	</div>
</body>
</html>