<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.human.java.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Soupie</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${path}/resources/img/soupie.png" rel="icon">
<link href="${path}/resources/img/soupie.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${path}/resources/vendor/aos/aos.css" rel="stylesheet">
<link href="${path}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="${path}/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${path}/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="${path}/resources/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${path}/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${path}/resources/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto">
				<a href="main.do">
					<img src="${path}/resources/img/soupie.png" style="margin-right: 10px; margin-bottom: 10px;">Soupie</a>
			</h1>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" href="main.do">Home</a></li>
					<li><a class="nav-link scrollto" href="#about">About</a></li>
					<li class="dropdown">
						<a class="nav-link scrollto" href="#announcements">
							<span>Announcements</span>
							<i class="bi bi-chevron-down"></i>
						</a>
						<ul>
							<li><a href="adminBoard.do">공지사항</a></li>
							<li><a href="faqsBoard">FAQs</a></li>
						</ul>
					</li>

					<li class="dropdown">
						<a href="#">
							<span>Teacher | Course</span> 
							<i class="bi bi-chevron-down"></i>
						</a>
						<ul>
							<li><a href="/teacher/getTeacherList.do">Teacher</a></li>
							<li><a href="/course/getCourseList.do">Course</a></li>
							<li><a href="/qnaBoard/getQnAList.do">Teacher | Course Q&A</a></li>
						</ul>
					</li>
 
					<!--           <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li> -->
					<li><a class="nav-link scrollto" href="#team">Team</a></li>
					<c:if test="${userId != null}">
						<li class="dropdown"><a href="#"><span>마이페이지</span> <i class="bi bi-chevron-down"></i></a>
							<ul>
								<li><a href="#">${userId}님 페이지</a></li>
								<!-- 회원 -->
								<c:if test="${loginFG == 'm'}">
									<li><a href="#">이력서</a></li>
									<li><a href="MembermyPage">내 정보</a></li>
									<li><a href="mylist">내 글 목록</a></li>
									<li><a href="myComment">내 댓글 목록</a></li>
								</c:if>
								<c:if test="${loginFG == 'b'}">
									<!-- 학원 -->
									<li><a href="BootcampmyPage">내 정보</a></li>
									<li><a href="mylist">내 글 목록</a></li>
									<li><a href="myComment">내 댓글 목록</a></li>
									<li><a href="#">수강생 목록</a></li>

								</c:if>
								<c:if test="${loginFG == 'c'}">
									<!-- 기업 -->
									<li><a href="CompanymyPage">내 정보</a></li>
									<li><a href="mylist">내 글 목록</a></li>
									<li><a href="myComment">내 댓글 목록</a></li>
								</c:if>
								<c:if test="${loginFG == 'a'}">
									<!-- 관리자-->
									<li><a href="#">관리자 페이지</a></li>
								</c:if>
							</ul>
						</li>
						<li><a class="getstarted scrollto" href="member/logout">로그아웃</a></li>
					</c:if>
					<c:if test="${userId == null}">
						<li class="dropdown"><a class="getstarted scrollto" href="#">로그인</a>
							<ul>
						       <li><a href="login">로그인</a></li>
						       <li><a href="join">회원가입</a></li>
							</ul>
			          	</li>
					</c:if>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<div id="preloader"></div>
	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="${path}/resources/vendor/aos/aos.js"></script>
	<script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="${path}/resources/vendor/php-email-form/validate.js"></script>
	<script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="${path}/resources/vendor/waypoints/noframework.waypoints.js"></script>

	<!-- Template Main JS File -->
	<script src="${path}/resources/js/main.js"></script>

</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</html>