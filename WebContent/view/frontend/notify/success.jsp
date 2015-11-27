<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
		String message = (String) session.getAttribute("success");
		if(message != null) { %>
			<div class="alert alert-success" style="background-color: #167ac6;margin-top: -15px;">
				<p style="color: white;">
				<span class="glyphicon glyphicon-ok"></span> <%=message %>
				</p>
			</div>
			<% }
		session.removeAttribute("success");
	%>