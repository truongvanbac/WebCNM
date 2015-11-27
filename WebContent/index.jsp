<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
<script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
<script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
<title>Khởi tạo website giảng dạy miễn phí cho giáo viên</title>

<style type="text/css">
.header {
	margin-bottom: 0px;
}

.header .navbar {
	margin-bottom: 0px;
}

.main-content {
	background-image: url("/WebCNM/images/frontend/content-bg.jpg");
	height: 550px;
}

.footer {
	height: 80px;
	background-color: black;
	color: white;
	text-align: center;
}
</style>

<script>
$(document).ready(function(){
    $("a#login").click(function(){
        $("#modalLogin").modal();
    });
    
    $("a#signup").click(function(){
        $("#modalSignup").modal();
    });
});

</script>

</head>
<body>

<div class="container-fluid">
	
	<!-- ==================== HEADER ====================== -->
		<div class="row header">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">TEAM COPY CODE</a>
				</div>
				<div>
					<ul class="nav navbar-nav navbar-right">
				        <li><a href="#" id="login"><span class="glyphicon glyphicon-user"></span> Đăng nhập</a></li>
				        <li><a href="#" id="signup"><span class="glyphicon glyphicon-log-in"></span> Đăng ký</a></li>
				   	</ul>
				</div>
			</div>
			</nav>
		</div>

		<!-- ==================== MAIN ====================== -->
	<div class="row main-content">
		<p style="text-align: center;"><img src="/WebCNM/images/frontend/kid.png" style="margin-top: 30px;margin-bottom: 10px;"></p>
		<p style="color: white;text-align: center;margin-bottom: 30px;">BẠN LÀ GIÁO VIÊN, GIẢNG VIÊN BÁCH KHOA HÀ NỘI?</p>
		<p style="color: white;font-size: 30px;margin-bottom: 30px;text-align: center;">Hãy khởi tạo website cá nhân cho chính mình</p>
		<p style="text-align: right;margin-right: 300px;color: white;">
			<a href="#" id="signup"><i style="color: chartreuse;">Tạo tài khoản</i></a> ngay bây giờ, hoặc 
			<a href="#" id="login"><i style="color: chartreuse;">đăng nhập</i></a></p>
	</div>
	
	<!-- ==================== FOOTER ====================== -->
	<div class="row footer">
		<p style="margin-top: 10px;font-size: 20px;">Trường Đại Học Bách Khoa Hà Nội</p>
		<p><i>&copy CopyRight by Kay</i></p>
	</div>
	
	
	<!-- Modal LOGIN-->
		<div class="modal fade" id="modalLogin" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content" style="width: 400px;margin: 0 auto;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Đăng nhập</h4>
					</div>
					<div class="modal-body">
						<p>
							<form role="form" id="form-login" title="Đăng nhập">
								<div class="form-group">
									<label for="">Tên đăng nhập: </label> 
									<input type="text" class="form-control" id="" required>
								</div>
								<div class="form-group">
									<label for="">Mật khẩu:</label> 
									<input type="password" class="form-control" id="" required>
								</div>
								<center><button type="submit" class="btn btn-default" id="login">Đăng nhập</button></center>
							</form>
						</p>
						
					</div>
				</div>

			</div>
		</div>
		
		
	<!-- Modal SIGNUP-->
		<div class="modal fade" id="modalSignup" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content" style="width: 400px;margin: 0 auto;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Đăng ký</h4>
					</div>
					<div class="modal-body">
						<p>
							<form role="form" id="form-signup" title="Đăng nhập">
								<div class="form-group">
									<label for="">Tên đăng nhập </label> 
									<input type="text" class="form-control" id="" required>
								</div>
								<div class="form-group">
									<label for="">Mật khẩu</label> 
									<input type="password" class="form-control" id="" required>
								</div>
								<div class="form-group">
									<label for="">Họ tên</label> 
									<input type="text" class="form-control" id="" required>
								</div>
								<div class="form-group">
									<label for="">Chức vị</label> 
									<input type="text" class="form-control" id="">
								</div>
								<div class="form-group">
									<label for="">Địa chỉ cơ quan</label> 
									<input type="text" class="form-control" id="">
								</div>
								
								<center><button type="submit" class="btn btn-default" id="login">Đăng ký</button></center>
							</form>
						</p>
						
					</div>
				</div>

			</div>
		</div>
		
		
	</div>

</body>
</html>