<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập quản trị</title>
    <link rel="stylesheet" href="/WebCNM/plugin/bootstrap/css/bootstrap.min.css">
    <script src="/WebCNM/static/js/jquery-2.1.1.js"></script>
    <script src="/WebCNM/plugin/bootstrap/js/bootstrap.min.js"></script>
    <style>
        .error {
            color: red;
            font-size: 13px;
            margin-top: 5px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">ĐĂNG NHẬP QUẢN TRỊ</div>
                <p><%@include file="notify/error.jsp" %></p>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="auth">
                        <div class="form-group">
                            <label class="col-md-4 control-label">Username</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="username" value="" autofocus required="required">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Password</label>
                            <div class="col-md-6">
                                <input type="password" class="form-control" name="password" required="required">
                            </div>
                        </div>
						<!--
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember"> Remember Me
                                    </label>
                                </div>
                            </div>
                        </div>
                        -->
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>