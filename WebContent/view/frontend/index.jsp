<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.webcnm.helper.StringHelper" %>
<%@ page import="com.webcnm.modal.Subject" %>
<%@page import="java.util.List"%>
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


<style type="text/css">
	
</style>

</head>
<body>

	<div class="container wapper">

		<!-- ======================== START HEADER ============================ -->

		<div class="row">
			<div id="header">
				<%@include file="components/header.jsp" %>
			</div>
		</div>

		<!-- ======================== END HEADER ============================ -->

		<!-- ======================== START MENU ============================ -->

		<div class="row">
			<div id="menu">
				<%@include file="components/menu.jsp" %>
			</div>
		</div>

		<!-- ======================== END MENU ============================ -->

		<!-- ======================== START CONTENT ============================ -->

		<div class="row">
			<div id="content">
				<!-- ===================== START MAIN CONTENT =================== -->
				
				<div class="col-md-9">
				<%@ include file="notify/success.jsp" %>
					<!-- ============== START SLIDE SHOW =================== -->
					<div class="row">
						<div id="slide_show">
							<%@include file="components/slideshow.jsp" %>
						</div>
					</div>
					<!-- ============== END SLIDE SHOW =================== -->
					
					<div class="row" style="padding-left: 10px;">
						<div class="col-md-4" style="border-right: solid thin #ccc;">
							<h4 style="text-align: center;margin-bottom: 25px;">Giới thiệu</h4>
							<div id="contact-image">
								<img alt="Image" src="/WebCNM/uploads/${teacher.avatar }">
							</div>
							<div id="infor">
								<p style="font-weight: bold; font-size: 15px;text-align: center;"><c:out value="${teacher.regency }. ${teacher.fullname }" /></p>
							</div>
						</div>

						<div class="col-md-8">
							<h4 style="text-align: center;margin-bottom: 25px;">Môn học đang giảng dạy</h4>
								<!-- ===================== START MAIN CONTENT =================== -->

								<div id="list-subject">
									<c:forEach items="${listSj }" var="sj" varStatus="sjIndex">
										<c:choose>
										    <c:when test="${sjIndex.index % 2 == 0}">
										    	<div class="col-md-6" style="border-right: dotted thin #ccc;">
														<div id="logo">
															<img alt="Subject"
																src="/WebCNM/images/frontend/logo_subject.jpg">
														</div>
														<div id="subject-content">
															<div id="subject-header"><c:out value="${sj.name }" /></div>
															<div id="subject-summary">
																<p>
																	<% StringHelper h = new StringHelper(); %>
																	<% String s = ""; %>
																	<c:set var="sumary" value="${sj.sumary }" scope="request"/>
																	<% s = (String) request.getAttribute("sumary"); %>
																	<% String outp =  h.printText(s); %>
																	<%= h.printLimitChar(outp, 100) %>
																</p>
															</div>
															<p id="read-more">
																<a href="subject?unam=${admin }&sj_id=${sj.id}">Read more...</a>
															</p>
														</div>
												</div>
										    </c:when>    
										    <c:otherwise>
										    	<div class="col-md-6">
														<div id="logo">
															<img alt="Subject"
																src="/WebCNM/images/frontend/logo_subject.jpg">
														</div>
														<div id="subject-content">
															<div id="subject-header"><c:out value="${sj.name }" /></div>
															<div id="subject-summary">
																<p>
																	<% StringHelper h = new StringHelper(); %>
																	<% String s = ""; %>
																	<c:set var="sumary" value="${sj.sumary }" scope="request"/>
																	<% s = (String) request.getAttribute("sumary"); %>
																	<% String outp =  h.printText(s); %>
																	<%= h.printLimitChar(outp, 100) %>
																</p>
															</div>
															<p id="read-more">
																<a href="subject?unam=${admin }&sj_id=${sj.id}">Read more...</a>
															</p>
														</div>
												</div>
										    </c:otherwise>
										</c:choose>
									</c:forEach>
							</div>
							<!-- ===================== END MAIN CONTENT =================== -->
						</div>
					</div>
					</div>
				</div>
				<!-- ===================== END MAIN CONTENT =================== -->

				

				<!-- ===================== START BOX RIGHT =================== -->
				<div class="col-md-3">
					<%@include file="components/box_right.jsp" %>
				</div>
				<!-- ===================== END BOX RIGHT =================== -->
			</div>
		</div>

		<!-- ======================== END CONTENT ============================ -->

		<!-- ======================== START FOOTER ============================ -->

		<div class="row">
			<div id="footer">
				<%@include file="components/footer.jsp" %>
			</div>
		</div>

		<!-- ======================== END FOOTER ============================ -->
	</div>

</body>
</html>