<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<div class="row">
	<div class="col-md-9"></div>
	<div class="col-md-3" id="nav-fun">
			<a href="#" id="login" style="margin-right: 5px;color: white;"><span
					class="glyphicon glyphicon-user"></span> Đăng nhập</a></li>
			<a href="#" id="signup" style="color: white;"><span
					class="glyphicon glyphicon-log-in"></span> Đăng ký</a></li>
	</div>
</div>
<div class="row">
	<div class="col-md-2" id="logo">
		<img alt="Logo Bách Khoa Hà Nội" src="/WebCNM/images/frontend/logo_bk.png">
	</div>
	<div class="col-md-8" id="banner">
		<h2>Ha Noi University of Science and Technology</h2>
		<p>School of Information and Communication Technology</p>
		<br>
		<br>
		<p>
			<marquee direction="left">Ha Noi University of Science and
				Technology</marquee>
		</p>
	</div>
	<div class="col-md-2"></div>
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