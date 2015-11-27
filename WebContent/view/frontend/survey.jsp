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
						<p>Khảo sát</p>
					</div>
					<div id="list">
						<ul>
							<li><p><a href="survey_detail.jsp">Seminar Khu vực Đông-Nam Á được lợi gì từ môi trường vệ tinh định vị đa hệ thống</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">Công ty Julie Sandlau Việt Nam tuyển dụng</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">Công ty Eastgate Software tuyển nhân viên và thực tập sinh</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">Danh sách trúng tuyển và thời khóa biểu ICT-K60</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">Công ty SmartOSC tuyển Junior .Net Developer phù hợp cho sinh viên năm cuối</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">Buổi giới thiệu học bổng Sau Đại Học của trường ĐH POSTECH - Hàn Quốc</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">Danh sách trúng tuyển và thời khóa biểu Việt Nhật-K60</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">Mời tham dự buổi tọa đàm "Chất Bách khoa trong FPT"</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">FramgiaVN-HR tuyển dụng sinh viên năm cuối ĐHBKHN</a><i>22.3.2014</i></p></li>
							<li><p><a href="#">SoftMart thông báo tuyển dụng</a><i>22.3.2014</i></p></li>
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