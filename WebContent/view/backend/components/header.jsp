<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%
	String username = (String) session.getAttribute("username");
%>    
    
<nav class="navbar navbar-inverse" style="border-radius: 0px;background-color: darkgreen;">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar-menu">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index">Admin</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-info-sign"></span> Quản lý thông báo <b class="caret"></b></a>
                    
                    <ul class="dropdown-menu">
                        <li><a href="new?ref=list">Danh sách</a></li>
                    </ul>
                    
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-book"></span> Quản lý môn học <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="subject?ref=list">Danh sách môn học</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-list-alt"></span> Quản lý khảo sát <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="survey?ref=list">Danh sách khảo sát</a></li>
                    </ul>
                </li>
                <li><a href="student?ref=list"> <span class="glyphicon glyphicon-user"></span> Quản lý sinh viên</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false">Hi, <%=username %>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                    	<li><a href="teacher?ref=profile"> <span class="glyphicon glyphicon-cog"></span> Cập nhật thông tin</a></li>
                    	<li class="divider"></li>
                        <li><a href="logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>