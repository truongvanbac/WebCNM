<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- ============================ START BOX RIGHT ============================ -->

	<div id="box-right">
		<div id="box-header">
			<span class="glyphicon glyphicon-pushpin"></span> <span>Tin
				tức mới nhất</span>
		</div>
		<div id="box-content">
			<ul>
				<c:forEach items="${listNews}" var="n">
					<li><a href="new?unam=${admin }&nid=${n.id }"><c:out value="${n.title }" /></a></li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<div id="box-right">
		<div id="box-header">
			<span class="glyphicon glyphicon-link"></span> <span>Khảo sát sinh viên</span>
		</div>
		<div id="box-content">
			<ul>
				<c:forEach items="${listSv}" var="sv">
					<li><a href="survey?unam=${admin }&sv_id=${sv.id }"><c:out value="${sv.title }" /></a></li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<div id="box-right">
		<div id="box-header">
			<span class="glyphicon glyphicon-phone-alt"></span> <span>Liên
				hệ</span>
		</div>
		<div id="box-content">
			<ul>
				<li>Địa chỉ: <c:out value="${teacher.add_com }"/></li>
				<li>Điện thoại: <c:out value="${teacher.phone_com }"/></li>
				<li>Di động: <c:out value="${teacher.mobile_number }"/></li>
			</ul>
		</div>
	</div>


<!-- ===================== END BOX RIGHT =================== -->