<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
		String error = (String) session.getAttribute("error");
		if(error != null) { %>
			<div class="alert alert-danger">
				<strong>Whoops!</strong> Có lỗi xảy ra.<br>
				<br>
				<p style="color: red; font-weight: bold;">
				<span class="glyphicon glyphicon-remove"></span> <%=error %>
				</p>
			</div>
	<% }
		session.removeAttribute("error");
	%>