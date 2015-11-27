<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#avatar {
	
}

#avatar img {
	width: 200px;
	height: 250px;
	border: 3px solid darkcyan;
	margin-bottom: 10px;
}

#infor {
	
}

#address-com {
	
}
</style>

<center>
	<div class="col-md-6" style="border-right: solid thin #ccc;">
		<p style="font-size: 18px; font-style: initial;">Thông tin cá nhân</p>
		<div id="avatar">
			<img alt="Image" src="/WebCNM/uploads/${teacher.avatar }">
		</div>
		<div id="infor">
			<p style="font-weight: bold; font-size: 18px;"><c:out value="${teacher.regency } ${teacher.fullname }"/> </p>
			<p style="font-style: italic;">Di động: <c:out value="${teacher.mobile_number }"/></p>
		</div>
	</div>
	<div class="col-md-6" id="address-com" style="font-style: italic;">
		<p style="font-size: 18px; font-style: initial;">Địa chỉ cơ quan</p>
		<p>Địa chỉ: <c:out value="${teacher.add_com }"/></p>
		<p>Điện thoại: <c:out value="${teacher.phone_com }"/></p>
	</div>
</center>