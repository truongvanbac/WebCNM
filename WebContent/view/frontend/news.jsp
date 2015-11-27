<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Trang chủ</title>
<link rel="stylesheet" href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/WebCNM/css/frontend/news.css">
<link rel="stylesheet" href="/WebCNM/css/frontend/contact.css">
<link rel="stylesheet" href="/WebCNM/css/frontend/student_idea.css">
<link rel="stylesheet" href="/WebCNM/css/frontend/subject.css">
<link rel="stylesheet" href="/WebCNM/css/frontend/survey.css">
<link rel="stylesheet" href="/WebCNM/css/frontend/index.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
	a.not_active {
		pointer-events: none;
		cursor: default;
		background-color: black;
	}
</style>

</head>
<body>

	<div class="container wapper">

		<!-- ======================== START HEADER ============================ -->

		<div class="row">
			<div id="header">
				<%@include file="components/header.jsp"%>
			</div>
		</div>

		<!-- ======================== END HEADER ============================ -->

		<!-- ======================== START MENU ============================ -->

		<div class="row">
			<div id="menu">
				<%@include file="components/menu.jsp"%>
			</div>
		</div>

		<!-- ======================== END MENU ============================ -->

		<!-- ======================== START CONTENT ============================ -->

		<div class="row">
			<div id="content">
				<!-- ===================== START MAIN CONTENT =================== -->

				<div class="col-md-9">
					<div id=title>
						<p>Thông báo</p>
					</div>
					<div id="list">
						<ul>
							<c:forEach items="${listNews }" var="n">
								<li><p><a href=""><c:out value="${n.title }"/></a><i><c:out value="${n.time_created }"/></i></p></li>
							</c:forEach>
						</ul>
					</div>
					<div id="pagination">
						<%@include file="components/pagination.jsp"%>
					</div>
				</div>
				<!-- ===================== END MAIN CONTENT =================== -->

				<!-- ===================== START BOX RIGHT =================== -->
				<div class="col-md-3">
					<%@include file="components/box_right.jsp"%>
				</div>
				<!-- ===================== END BOX RIGHT =================== -->
			</div>
		</div>

		<!-- ======================== END CONTENT ============================ -->

		<!-- ======================== START FOOTER ============================ -->

		<div class="row">
			<div id="footer">
				<%@include file="components/footer.jsp"%>
			</div>
		</div>

		<!-- ======================== END FOOTER ============================ -->
	</div>

</body>
</html>