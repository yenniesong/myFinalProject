<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>Teacher In Detail</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${path}/resources/assets/img/favicon.png" rel="icon">
<link href="${path}/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${path}/resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="${path}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="${path}/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${path}/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="${path}/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${path}/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${path}/resources/assets/css/style.css" rel="stylesheet">

<!-- my template -->
<link href="${path}/resources/assets/css/tutorsStylesheet.css" rel="stylesheet">

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
	        <li><a class="nav-link scrollto " href="#hero">Home</a></li>
	        <li><a class="nav-link scrollto" href="#about">About</a></li>
	        <li><a class="nav-link scrollto" href="#services">Services</a></li>
	        <li><a class="nav-link   scrollto" href="#portfolio">Portfolio</a></li>
	        <li><a class="nav-link scrollto" href="#team">Team</a></li>
	        <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
	          <ul>
	            <li><a href="#">Drop Down 1</a></li>
	            <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
	              <ul>
	                <li><a href="#">Deep Drop Down 1</a></li>
	                <li><a href="#">Deep Drop Down 2</a></li>
	                <li><a href="#">Deep Drop Down 3</a></li>
	                <li><a href="#">Deep Drop Down 4</a></li>
	                <li><a href="#">Deep Drop Down 5</a></li>
	              </ul>
	            </li>
	            <li><a href="#">Drop Down 2</a></li>
	            <li><a href="#">Drop Down 3</a></li>
	            <li><a href="#">Drop Down 4</a></li>
	          </ul>
	        </li>
	        <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
	        <li><a class="getstarted scrollto" href="#about">Get Started</a></li>
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
		      <li>Teacher</li>
		    </ol>
		    <h2>Teacher</h2>
		
		  </div>
		</section><!-- End Breadcrumbs -->
		
		<section class="inner-page">
		  <div class="container">
		    <div class="jsx-722889332 content">
		      <div class="jsx-1629185219 search-layout">
		        
		        <div class="jsx-1629185219 title">
		          <h4 class="jsx-1629185219">TEACHER</h4>
		          <p class="jsx-1629185219">
		            누가 나와 잘 맞는 선생님일까?
		          </p>
		        </div>
		
		        
		      </div>
		      <div class="jsx-3239872667 main-card">
		        <div class="jsx-1020960270 message">
		          <div class="jsx-1020960270 title">
		            <span class="jsx-1020960270">제니김 선생님</span>
		            <p class="jsx-1020960270"></p>
		          </div>
		          <div class="jsx-1020960270 rating">
		            <span class="jsx-1020960270 score">
		              <span class="jsx-1020960270">7.6</span> 
		              / 10
		            </span>
		            <div class="jsx-2007872434 stars">
		              <div class="jsx-2007872434 star star-2"></div>
		              <div class="jsx-2007872434 star star-2"></div>
		              <div class="jsx-2007872434 star star-2"></div>
		              <div class="jsx-2007872434 star star-2"></div>
		              <div class="jsx-2007872434 star star-0"></div>
		            </div>
		          </div>
		        </div>
		
		        <div class="jsx-216214598 content">
		          <div class="jsx-216214598 flex-left">
		            <div class="jsx-216214598 profile">
		              <span class="jsx-216214598 rank">랭킹외</span>
		              <div class="jsx-216214598 tutor-image" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=480&amp;f=webp&quot;);">
		              </div>
		            </div>
		
		            <div class="jsx-216214598 btn-box">
		              <button class="jsx-3857673807 btn-follow" type="button">
		                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
		                  <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
		                </svg>
		                <span class="jsx-216214598">팔로우하고 더 많은 자료보기</span>
		              </button>
		              <button class="jsx-3857673807 btn-enroll" type="button">
		                <span class="jsx-216214598">수강신청하기</span>
		              </button>
		            </div>
		          </div>
		
		          <div class="jsx-216214598 flex-right">
		            <div class="jsx-216214598 title">
		              <h3 class="jsx-216214598">
		                <span class="jsx-216214598">실시간</span>
		                평가
		              </h3>
		              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="#dfdfdf" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative; margin-top: 3px;">
		                <polygon points="11 5 6 9 2 9 2 15 6 15 11 19 11 5"></polygon>
		                <path d="M15.54 8.46a5 5 0 0 1 0 7.07"></path>
		              </svg>
		              <button class="jsx-3857673807 btn-evaluation" type="button">평가하기
		                <img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_page/icon_writing01.png" alt="" class="jsx-216214598">
		              </button>
		            </div>
		
		            <div class="jsx-2255129348 real-time-evaluation">
		              <div class="jsx-2255129348 scroll-box">
		                <ul class="jsx-2255129348">
		                  <li class="jsx-2255129348">
		                    <h4 class="jsx-2255129348">베스트 리뷰</h4>
		                  </li>
		                  <li class="jsx-3839070939 tutor">
		                    <div class="jsx-3839070939 board-item">
		                      <div class="jsx-3839070939 title">
		                        <h4 class="jsx-3839070939">인강은 안 들어서 모르겠지만 다락원 교재로 공부했습니다</h4>
		                      </div>
		                    </div>
		                    <div class="jsx-3839070939 sub">
		                      <span class="jsx-3839070939 tags">#best 강사리뷰</span>
		                    </div>
		                      <img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/transfer_board/icon_emotion01_on@2x.png?f=webp" alt="" class="jsx-3839070939 emotion-img">
		                  </li>
		                  <li class="jsx-2255129348 horizontal-rule"></li>
		                  <li class="jsx-2255129348">
		                    <h4 class="jsx-2255129348">전체 리뷰</h4>
		                  </li>
		                  <li class="jsx-1434886323 ">
		                    <div class="jsx-1434886323 board-item">
		                      <div class="jsx-1434886323 title">
		                        <h4 class="jsx-1434886323">인강은 안 들어서 모르겠지만 다락원 교재로 공부했습니다</h4>
		                      </div>
		                    </div>
		                    <div class="jsx-1434886323 sub">
		                      <span class="jsx-1434886323 tags">#강사리뷰</span>
		                    </div>
		                    <img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/transfer_board/icon_emotion01_off@2x.png?f=webp" alt="" class="jsx-1434886323 emotion-img">
		                  </li>
		                </ul>
		              </div>
		            </div>
		
		          </div>
		        </div>
		      </div>
		
		      <div class="jsx-245464177 flex-box">
		        <div class="jsx-4119538605 container" style="padding: 0px;">
		          
		          <div class="jsx-4119538605 review-area">
		            <div class="jsx-4149508951 review-tab">
		              <div class="jsx-1546215327 tabs">
		                <ul class="jsx-1546215327">
		                  <li class="jsx-1546215327 on">
		                    <button class="jsx-1546215327">수강생 리뷰</button>
		                  </li>
		                </ul>
		
		                <div class="jsx-1546215327 content">
		                  <div title="강사리뷰" class="jsx-4149508951">
		                    <div class="jsx-4149508951 review-box">
		                      <div class="jsx-644785032 review-item">
		                        <div class="jsx-644785032 title">
		                          <div class="jsx-3913025517 badges-box">
		                            <span class="jsx-3913025517 box border-primary">긍정적인 리뷰</span>
		                          </div>
		                          <h4 class="jsx-644785032">
		                            “ 
		                            <span class="jsx-644785032">인강은 안 들어서 모르겠지만 다락원 교재로 공부했습니다</span>
		                            ”
		                          </h4>
		                        </div>
		                        <div class="jsx-644785032 ">
		                          <div class="jsx-644785032 info">
		                            <div class="jsx-644785032">
		                              <div class="jsx-1397353033 avatar">
		                                <div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);">
		                                </div>
		                              </div>
		                            </div>
		                            <span class="jsx-644785032 nickname">아*****</span>
		                            <span class="jsx-644785032 sub">TEPS 문법</span>
		                          </div>
		                          <div class="jsx-644785032 content">
		                            <div class="jsx-644785032 access-not" style="height: 236px;">
		                              <img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_bestrv01.png?w=394&amp;f=webp" alt="best강사리뷰 blur 이미지" class="jsx-644785032">
		                            </div>
		                          </div>
		                          <div class="jsx-644785032 rating-btn-box">
		                            <div class="jsx-644785032 star-box">
		                              <span class="jsx-644785032">7.6</span>
		                              <div class="jsx-2704879397 stars">
		                                <div class="jsx-2704879397 star star-2"></div>
		                                <div class="jsx-2704879397 star star-2"></div>
		                                <div class="jsx-2704879397 star star-2"></div>
		                                <div class="jsx-2704879397 star star-2"></div>
		                                <div class="jsx-2704879397 star star-0"></div>
		                              </div>
		                            </div>
		                            <button type="button" class="jsx-1625922102 button--voteup">
		                              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#8f8f8f" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative; vertical-align: top;">
		                                <path d="M14 9V5a3 3 0 0 0-3-3l-4 9v11h11.28a2 2 0 0 0 2-1.7l1.38-9a2 2 0 0 0-2-2.3zM7 22H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h3"></path>
		                              </svg>
		                              <span class="jsx-1625922102 count">0</span>
		                            </button>
		                            <button type="button" class="jsx-2143764412 ">답글
		                              <span class="jsx-644785032 comment-number">0</span>
		                            </button>
		                          </div>
		                        </div>
		                      </div>
		
		                      <!-- 로그인이 안되어있을 경우 뜨는 팝업 -->
		                      <div class="jsx-4149508951 auth-popup">
		                        <div class="jsx-133251687 content">
		                          <h5 class="jsx-133251687">로그인하고 전체보기</h5>
		                          <div class="jsx-133251687 btn-box">
		                            <div class="jsx-133251687 btn-join">
		                              <button type="button" class="jsx-520855050 ">회원가입</button>
		                            </div>
		                            <div class="jsx-133251687 btn-login">
		                              <button type="button" class="jsx-1487464557 ">로그인</button>
		                            </div>
		                          </div>
		                        </div>
		                      </div>
		                    </div>
		
		                    <div class="jsx-4119538605 review-area">
		                      <div class="jsx-4149508951 review-tab">
		                        <div class="jsx-1546215327 tabs">
		                          <ul class="jsx-1546215327">
		                            <li class="jsx-1546215327 on">
		                              <button class="jsx-1546215327">수강생 리뷰</button>
		                            </li>
		                          </ul>
		
		                          <!-- 후기가 없을때 -->
		                          <div class="jsx-1546215327 content">
		                            <div title="강사리뷰" class="jsx-4149508951">
		                              <div class="jsx-4149508951 review-box">
		                                <div class="jsx-644785032 review-item">
		                                  <div class="jsx-644785032 title">
		                                    
		                                    <h4 class="jsx-644785032">
		                                      <span class="jsx-644785032">아직 후기가 없어요</span>
		                                    </h4>
		                                  </div>
		                                  <div class="jsx-644785032 ">
		                                    <div class="jsx-644785032 info">
		                                      <span class="jsx-644785032 nickname"><a href="#">후기 작성하기</a></span>
		                                    </div>
		                                  </div>
		                                </div>
		                              </div>
		                            </div>
		                          </div>
		                        </div>
		                      </div>
		                    </div>
		
		                    <div class="jsx-4119538605 review-area">
		                      <div class="jsx-4149508951 review-tab">
		                        <div class="jsx-1546215327 tabs">
		                          <ul class="jsx-1546215327">
		                            <li class="jsx-1546215327 on">
		                              <button class="jsx-1546215327">수강생 리뷰</button>
		                            </li>
		                            <!-- <li class="jsx-1546215327 ">
		                              <button class="jsx-1546215327">환승후기</button>
		                            </li> -->
		                          </ul>
		
		                          <!-- 후기가 없을때 -->
		                          <div class="jsx-1546215327 content">
		                            <div title="강사리뷰" class="jsx-4149508951">
		                              <div class="jsx-4149508951 review-box">
		                                <div class="jsx-644785032 review-item">
		                                  <!-- 후기 작성할 폼 -->
		                                  <div class="jsx-1546215327 content">
		                                    <div title="강사리뷰" class="jsx-4149508951">
		                                      
		                                      <form action="" method="post">
		                                        <div class="jsx-4149508951 review-box">
		                                          <div class="jsx-644785032 review-item">
		                                            <div class="jsx-644785032 title">
		                                              <div class="jsx-644785032 info">
		                                                <div class="jsx-644785032">
		                                                  <div class="jsx-1397353033 avatar">
		                                                    <div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);">
		                                                    </div>
		                                                  </div>
		                                                </div>
		                                                <span class="jsx-644785032 nickname">아*****</span>
		                                              </div>
		
		                                              <!-- 해당 수강생이 답글 작성하기 눌렀을 때 -->
		                                                <div class="adminArea mb-3">
		                                                  <form action="" method="post">
		                                                    <div class="input-group mb-3">
		                                                      <input type="text" class="form-control" placeholder="답글 쓰기" aria-label="Recipient's username" aria-describedby="button-addon2">
		                                                      <button class="btn btn-outline-secondary gap-2 col-2 mx-auto" type="button" id="button-addon2">작성</button>
		                                                    </div>
		                                                  </form>
		                                                </div>
		
		                                              </div>
		                                              
		                                            </div>
		                                          </div>
		                                        </form>
		                                      </div>
		                                    </div>
		                                  </div>
		                                </div>
		                              </div>
		                            </div>
		                          </div>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
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
	

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Vendor JS Files -->
<script src="${path}/resources/assets/vendor/aos/aos.js"></script>
<script src="${path}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="${path}/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="${path}/resources/assets/vendor/php-email-form/validate.js"></script>
<script src="${path}/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="${path}/resources/assets/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Template Main JS File -->
<script src="${path}/resources/assets/js/main.js"></script>
</html>