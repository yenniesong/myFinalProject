<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>아이디 찾기</title>
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
 <link href="../resources/css/findId.css" rel="stylesheet">
  <!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  
  <script>                                                                                                                    
var path = "${pageContext.request.contextPath }";                                                                           
                                                                                            
$(document).ready(function() {                                                                                            
                                                                                            
});                                                                                                                       
                                                                                            
</script>                                                                                                                   
            
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
          	<li><a class="nav-link scrollto active" href="#hero">홈</a></li>
          	<li><a class="nav-link scrollto" href="#about">학원정보</a></li>
          	<li><a class="nav-link scrollto" href="#services">취업게시판</a></li>
          	<li><a class="nav-link scrollto" href="#portfolio">지식 공유</a></li>
          	<li><a class="nav-link scrollto" href="#team">문의 게시판</a></li>
          	<li><a class="nav-link scrollto" href="/member/join">회원가입</a></li>
          	<li><a class="getstarted scrollto" href="/member/login">로그인</a></li>
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
          <li><a href="index.html">Home</a></li>
          <li>FindFW</li>
        </ol>
        <h2>FindFW</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
     	<div class="text-center">
					<h1 class="h4 text-gray-900 mb-2"><strong>PW찾기 조회 결과</strong></h1>
				</div>
				<br>
				<hr>
				<br>
				<c:if test="${not empty member}">
					<div class="text-center">
						<p class="mb-4">
							회원님의 비밀번호는 <strong>[ ${member.password} ]</strong> 입니다.
						</p>
					</div>
				</c:if>
				
				<c:if test="${not empty bootcamp}">
					<div class="text-center">
						<p class="mb-4">
							회원님의 비밀번호는 <strong>[ ${bootcamp.password} ]</strong> 입니다.
						</p>
					</div>
				</c:if>

				<c:if test="${not empty company}">
					<div class="text-center">
						<p class="mb-4">
							회원님의 비밀번호는 <strong>[ ${company.password} ]</strong> 입니다.
						</p>
					</div>
				</c:if>

				<div class="text-center">
					<a class="small" href="/member/join"><strong>[ 회원가입 ]</strong></a> 
					<a class="small" href="/member/login"><strong>[ 로그인 ]</strong></a>
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
  <script src="../resources/js/findId.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>