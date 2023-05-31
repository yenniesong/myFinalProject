<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String alertScript = request.getParameter("alertScript");
%>
<%
	if (alertScript != null) {
%>
<%=alertScript%>
<%
	}
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>학원 페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../resources/img/favicon.png" rel="icon">
  <link href="../resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../resources/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../resources/css/style.css" rel="stylesheet">
<link href="../resources/css/mypage.css" rel="stylesheet">
<script src="../resources/js/mypage.js"></script>
  <!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">
  <h1 class="logo me-auto"><a href="index.html">SOUPIE</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
         <ul>
          	<li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          	<li><a class="nav-link scrollto" href="#about">학원정보</a></li>
          	<li><a class="nav-link scrollto" href="#services">취업게시판</a></li>
          	<li><a class="nav-link   scrollto" href="#portfolio">지식 공유</a></li>
          	<li><a class="nav-link scrollto" href="#team">문의 게시판</a></li>
          	<li class="dropdown"><a href="#"><span>마이페이지</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
            <li><a href="#">${userId}님 페이지</a></li>
            	<!-- 회원 -->
            	<c:if test="${loginFG == 'm'}" > 
	              <li><a href="#">이력서</a></li>
	              <li><a href="/member/MembermyPage">내 정보</a></li>
	              <li><a href="/member/mylist">내 글 목록</a></li>
	              <li><a href="/member/myComment">내 댓글 목록</a></li>
              </c:if>
              <c:if test="${loginFG == 'b'}" > 
	              <!-- 학원 -->              
	              <li><a href="/member/BootcampmyPage">내 정보</a></li>
	               <li><a href="/member/mylist">내 글 목록</a></li>
	                <li><a href="/member/myComment">내 댓글 목록</a></li>
              </c:if>
              <c:if test="${loginFG == 'c'}" > 
	              <!-- 기업 -->
              	<li><a href="/member/CompanymyPage">내 정보</a></li>
              	<li><a href="/member/mylist">내 글 목록</a></li>
              	 <li><a href="/member/myComment">내 댓글 목록</a></li>
              </c:if>
              <c:if test="${loginFG == 'a'}" > 
              <!-- 관리자-->
              <li><a href="#">관리자 페이지</a></li>
              </c:if>
            </ul>
          </li>
          <li><a class="getstarted scrollto" href="/member/logout">로그아웃</a></li>
        </ul>
        
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
        </br>
          <li><a href="index">Home</a></li>
          <li>Mypage</li>
        </ol>
        <h2>마이 페이지</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
      <div class="container">
      <div class="header">
			<div class="user-info">		
				<p>[ <strong> ${bootcamp.userid} </strong>님 마이페이지 ]</p>
			</div>
		</div>
			<div class="menu">
				<ul>
					<li><a href="/member/BootcampmyPage">내 정보</a></li>
					<li><a href="/member/DeleteView">회원 탈퇴</a></li>
				</ul>
			</div>
			
		<div class="content_my-info">
		<hr>
			<div class="container">
				<!-- 학원 회원 내정보 수정 -->
					<form action="/member/updatebootcamp" method="post">
					<table id="bootcamp-fields">
						<tr>
							<td><label for="userid">아이디</label></td>
							<td><input type="text" name="userid" id="userid"
								class="userid-input" readonly value="${bootcamp.userid}"></td>
						</tr>
						<tr>
							<td><label for="name">이름</label></td>
							<td><input type="text" id="name" name="name" required
								value="${bootcamp.name}"></td>
						</tr>
						<tr>
							<td><label for="nickname">닉네임</label></td>
							<td><input type="text" id="nickname" name="nickname"
								required value="${bootcamp.nickname}"></td>
						</tr>
						<tr>
							<td><label for="email">이메일</label></td>
							<td><input type="email" id="email" name="email"
								onclick="checkemail()" value="${bootcamp.email}"></td>
						</tr>
						<tr>
							<td><label for="password">비밀번호</label></td>
							<td><input type="password" id="password" class="password"
								name="password" placeholder="8자리 이상 써주세요"></td>
						</tr>
						<tr>
							<td><label for="password_confirm">비밀번호 확인</label></td>
							<td><input type="password" id="password_confirm"
								class="password_confirm" name="password_confirm" required>
								<br>
								<span id="password_check_result" class="password_check_result"></span>
								<br>
								<button type="button" onclick="checkPassword()">비밀번호 확인</button>
							</td>
						</tr>
						<tr>
							<td><label for="tel">전화번호</label></td>
							<td><input type="tel" id="tel" name="tel" required
								value="${bootcamp.tel}"></td>
						</tr>
						<tr>
							<td><label for="bootcamp_name">학원명</label></td>
							<td><input type="text" id="bootcamp_name"
								name="bootcamp_name" required
								value="${bootcamp.bootcamp_name}"></td>
						</tr>
						<tr>
							<td><label for="representative">대표자명</label></td>
							<td><input type="text" id="representative"
								name="representative" required
								value="${bootcamp.representative}"></td>
						</tr>
						<tr>
							<td><label for="bootcamp_manager">담당자명</label></td>
							<td><input type="text" id="bootcamp_manager"
								name="bootcamp_manager" required
								value="${bootcamp.bootcamp_manager}"></td>
						</tr>
						<tr>
							<td><label for="bootcamp_add">주소</label></td>
							<td><input type="text" name="bootcamp_add" id="bootcamp_add"
								required value="${bootcamp.bootcamp_add}"></td>
						</tr>
						<tr>
							<td><label for="bootcamp_site">사이트</label></td>
							<td><input type="text" id="bootcamp_site"
								name="bootcamp_site" required
								value="${bootcamp.bootcamp_site}"></td>
						</tr>
						<tr>
							<td><label for="manager_email">담당자 이메일</label></td>
							<td><input type="email" name="manager_email"
								id="manager_email" required value="${bootcamp.manager_email}"></td>
						</tr>
					</table>
					<input type="submit" value="수정"> 
					<input type="button" value="확인" onclick="goToHomePage()">
				</form>
		</div>
      </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Arsha</h3>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>

    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="../resources/vendor/aos/aos.js"></script>
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../resources/vendor/php-email-form/validate.js"></script>
  <script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="../resources/js/main.js"></script>
  
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" defer src="../resources/js/join.js"></script>

</body>

</html>