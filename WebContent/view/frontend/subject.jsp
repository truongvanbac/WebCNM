<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<p>Môn học đang giảng dạy</p>
					</div>
					
					<div id="list">
						<% for(int i = 0; i < 4; i++) { %>
						<% if(i % 2 == 0) { %>
						<div class="col-md-6">
							<div class="col-md-5">
								<div id="logo">
									<img alt="Subject" src="/WebCNM/images/frontend/logo_subject.jpg">
								</div>
							</div>
							<div class="col-md-7">
								<div id="subject-content">
									<div id="subject-header">Lập trình hướng đối tượng</div>
									<div id="subject-summary">
										<p>Cung cấp các kiến thức về kỹ thuật lập trình hướng đối
											tượng</p>
									</div>
									<p>
										<a href="subject_detail.jsp">Read more...</a>
									</p>
								</div>
							</div>
						</div>
						<% } else { %>
						<div class="col-md-6">
							<div class="col-md-5">
								<div id="logo">
									<img alt="Subject" src="/WebCNM/images/frontend/logo_subject.jpg">
								</div>
							</div>
							<div class="col-md-7">
								<div id="subject-content">
									<div id="subject-header">Lập trình hướng đối tượng</div>
									<div id="subject-summary">
										<p>Cung cấp các kiến thức về kỹ thuật lập trình hướng đối
											tượng</p>
									</div>
									<p>
										<a href="#">Read more...</a>
									</p>
								</div>
							</div>
						</div>
						<% } %>
						<% } %>
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