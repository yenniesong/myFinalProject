<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.io.PrintWriter"%>
    <%@page import="com.human.java.*"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%
    
    String admin = null;
    String student = null;
    String company = null;
    String educator = null;
    
    String userId = null;
    String userNick = null;
    
    if (session.getAttribute("userId") != null) {
     
		if (session.getAttribute("admin") != null ) {
			admin = (String) session.getAttribute("admin"); 
		} else if (session.getAttribute("student") != null ) {
			student = (String) session.getAttribute("student"); 
		} else if (session.getAttribute("company") != null ) {
			company = (String) session.getAttribute("company"); 
		} else if (session.getAttribute("educator") != null) {
			educator = (String) session.getAttribute("educator");	
		}
	
    }
    	
    if (session.getAttribute("userNick") != null) {
    	userNick = (String) session.getAttribute("userNick");
    }

    %> 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" >
  <title>Soupie</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/img/soupie.png" rel="icon">
  <link href="resources/img/soupie.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/css/style.css" rel="stylesheet">

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

      <h1 class="logo me-auto"><a href="main.do"><img src="resources/img/soupie.png" style="margin-right: 10px; margin-bottom: 10px;">Soupie</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
<!--       <a href="mainWeb" class="logo me-auto"><img src="resources/img/soupie.png" alt="" class="img-fluid"></a> -->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="main.do">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li class="dropdown"><a class="nav-link scrollto" href="#announcements"><span>Announcements</span><i class="bi bi-chevron-down"></i></a>
           <ul>
              <li><a href="adminBoard.do">공지사항</a></li>
              <li><a href="faqsBoard">FAQs</a></li>
            </ul>
          </li>
<!--           <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li> -->
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
<!--           <li><a class="nav-link scrollto" href="#contact">Contact</a></li> -->
           <%
    	if (userId == null) {
    	
    		%>
          <li class="dropdown"><a href="#"><span>Get online</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/member/login">로그인</a></li>
              <li><a href="/member/join">회원가입</a></li>
            </ul>
          </li>
        <% } else { %>
        <% if (admin.equals("admin") ) { %>
          
          <li class="dropdown" id="getonline"><a href="#"><span>Get Online</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="badComment">신고글 관리페이지</a></li>
              <li><a href="logoutAction">로그아웃</a></li>
            </ul>
          </li>
          <% } else { %>
          
           <li class="dropdown" id="getonline"><a href="#"><span>Get Online</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#"><%=userNick %>페이지</a></li>
              <li><a href="logoutAction">로그아웃</a></li>
            </ul>
          </li>
          	<%} %>
          <%} %>
<!--           <li><a class="getstarted scrollto" href="#about">Get Started</a></li> -->
        </ul>
<!--         <i class="bi bi-list mobile-nav-toggle"></i> -->
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1>Better Solutions For Your Information</h1>
          <h2>We are team of talented developers making 국비지원교육 more accessible to you</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="#about" class="btn-get-started scrollto">Get Started</a>
            <a href="https://www.youtube.com/watch?v=pSUydWEqKwE" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="resources/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">


    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About Us</h2>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              	We, the Soupie Family, are team of talented junior developers who studied and completed a full-stack course through 국비교육지원 시스템.
              	This is a website we made for our final project. I hope you guys find it interesting and useful for your future decision. 
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Soupie는 국비지원교육을 통해 코딩을 배우고 싶은 사람들을 위한 정보를 제공한다.</li>
              <li><i class="ri-check-double-line"></i> 각 지역 마다 국비지원을 제공하는 학원의 강사들의 대한 정보도 알수있다.</li>
              <li><i class="ri-check-double-line"></i> 이미 배웠던 학생들의 후기도 알수있고, 구직정보까지 공유할수있다.</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              	Soupie은 국의 soup 비의 bie를 합쳐서 soupie가 됐고 팀에 5명이 있어서 eeeee로 5명을 표현했다.
              	
            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->


    <!-- ======= Services Section ======= -->
    <section id="announcements" class="announcements section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Announcements</h2>
          <p>Soupie를 이용하는 모든 학생분들과 강사분들에게 보다 빠르고 정확한 공지사항을 
          	전달하기 위한 공간!</p><br>
          	<p style="font-size: 13px;">** 가장 최근 공지사항들 입니다 **</p>
        </div>
        
        <c:forEach items="${list}">
        <div class="row">
          <div class="col-xl-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="">공지사항</a></h4>
              <p>${list.get(0).postTitle}</p>
            </div>
          </div>

          <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4><a href="">공지사항</a></h4>
              <p>${list.get(0).postTitle}</p>
            </div>
          </div>

          <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4><a href="">공지사항</a></h4>
              <p>${list.get(0).postTitle}</p>
            </div>
          </div>

          <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in" data-aos-delay="400">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-layer"></i></div>
              <h4><a href="">공지사항</a></h4>
              <p>${list.get(0).postTitle}</p>
            </div>
          </div>
        </div>
		</c:forEach>
      </div>
    </section><!-- End Services Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Team</h2>
          <p>Accomplished junior developers are managing this website. They are all experienced in Front-End and Back-End education through 국비지원교육.  </p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="100">
              <div class="pic"><img src="resources/img/pea.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>YeonSu Kim</h4>
                <span>Back-End Developer</span>
                <p>she good</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4 mt-lg-0">
            <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="200">
              <div class="pic"><img src="resources/img/pea.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>MiNa Seo</h4>
                <span>Front-End Developer</span>
                <p>she cool</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="300">
              <div class="pic"><img src="resources/img/pea.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Yennie Song</h4>
                <span>Back-End Developer</span>
                <p>she slay</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="400">
              <div class="pic"><img src="resources/img/pea.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>HyeJin Jeon</h4>
                <span>Back-End Developer</span>
                <p>she sub sub</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>
          
           <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="400">
              <div class="pic"><img src="resources/img/pea.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>DaYeon Jeong</h4>
                <span>Back-End Developer</span>
                <p>she bam</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Soupie</h3>
            <p>
                    123-45 Soupie-gil<br>
              	Soupie-dong, Soupie-si 16167<br>
               Gyeongki-do <br><br>
              <strong>Phone:</strong> +82 031 000 0000<br>
              <strong>Email:</strong> admin@soupie.com<br>
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
            <p>You can explore more about Soupie!</p>
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
  <script src="resources/vendor/aos/aos.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/vendor/php-email-form/validate.js"></script>
  <script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/js/main.js"></script>

</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</html>