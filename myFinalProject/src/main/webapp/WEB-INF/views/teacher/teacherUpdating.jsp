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
<title>Update Teacher Info</title>
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
                <li>Q&A</li>
                </ol>
                <h2>Q & A</h2>

            </div>
        </section><!-- End Breadcrumbs -->

        <section class="inner-page">
            <div class="container">
                <div class="jsx-722889332 content">
                    <div class="jsx-3810764099 board-box">
                        <div class="jsx-2656936329 content-box">
                            <div class="jsx-2656936329 card-box"> 
                                <div class="jsx-1629185219 title mb-3">
                                    <h4 class="jsx-1629185219">TEACHER</h4>
                                    <p class="jsx-1629185219">
                                       	우리 학원의 선생님을 소개해주세요
                                    </p>
                                </div>

                                <div class="jsx-401750031 board-header">

                                    <div class="jsx-216214598 content">
                                        <div class="jsx-216214598 flex-left">
                                            <div class="jsx-216214598 profile">
                                                <img id="preview" src="#" alt="미리보기" style="width: 300px;"> 
                                                <input type="file" id="fileloads" name="fileloads" style="display: block;" accept="image/*" onchange="previewImage(event);" required="required"> 
                                            </div>
                                            <div class="jsx-216214598 btn-box">
                                                <input type="hidden"><!-- value 여기에 해당 선생님의 id 적어주기  -->
                                                <button class="jsx-3857673807 btn-follow" type="button">
                                                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
                                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                                  </svg>
                                                  <span class="jsx-216214598">대표학원명</span>
                                                  <span class="jsx-216214598"></span>
                                                </button>
                                            </div>
                          
                                        </div>
                          
                                        <div class="jsx-216214598 flex-right">
                                            <div class="jsx-2255129348 real-time-evaluation">
                                                <div class="jsx-2255129348 scroll-box">
                                                    <ul class="jsx-2255129348">
                                                        <li class="jsx-2255129348">
                                                            <h4 class="jsx-2255129348">선생님의 이름</h4>
                                                        </li>
                                                        <li class="jsx-3839070939 tutor">
                                                            <div class="jsx-3839070939 board-item">
                                                                <div class="jsx-3839070939 title">
                                                                <h4 class="jsx-3839070939">이름 작성란</h4>
                                                                </div>
                                                            </div>
                                                            <div class="jsx-3839070939 sub">
                                                                <span class="jsx-3839070939 tags">#best 강사리뷰</span>
                                                            </div>
                                                        </li>
                                                        <li class="jsx-2255129348 horizontal-rule"></li>
                                                        <li class="jsx-2255129348">
                                                            <h4 class="jsx-2255129348">선생님의 한마디</h4>
                                                        </li>
                                                        <li class="jsx-3839070939 tutor">
                                                            <div class="jsx-3839070939 board-item">
                                                                <div class="jsx-3839070939 title">
                                                                <h4 class="jsx-3839070939">좌우명 혹은 뭐 그런거 작성</h4>
                                                                </div>
                                                            </div>
                                                            <div class="jsx-3839070939 sub">
                                                                <span class="jsx-3839070939 tags">#best 강사리뷰</span>
                                                            </div>
                                                        </li>
                                                        <li class="jsx-2255129348 horizontal-rule"></li>
                                                        <li class="jsx-2255129348">
                                                            <h4 class="jsx-2255129348">강의 명</h4>
                                                        </li>
                                                        <li class="jsx-1434886323 ">
                                                            <div class="jsx-1434886323 board-item">
                                                                <div class="jsx-1434886323 title">
                                                                <h4 class="jsx-1434886323">강의명 작성란</h4>
                                                                </div>
                                                            </div>
                                                            <div class="jsx-1434886323 sub">
                                                                <span class="jsx-1434886323 tags">#강사리뷰</span>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                
                                <div class="jsx-4064263859 comment">
                                    
                                    <div class="jsx-4129687755 write-comment-box">
                                        <div class="jsx-394409708 write-comment-wrap">
                                            <div class="jsx-394409708 write-comment">
                                                <label class="jsx-4265535288 textarea">
                                                    <textarea class="jsx-4265535288 " placeholder="간단한 강의 설명" style="height: 200px;"></textarea>
                                                </label>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jsx-394409708 buttons">
                                        <button type="button" class="jsx-654986024 btn-view-list">
                                            <span class="jsx-654986024 hide-on-mobile">목록보기</span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#8f8f8f" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
                                                <line x1="8" y1="6" x2="21" y2="6"></line>
                                                <line x1="8" y1="12" x2="21" y2="12"></line>
                                                <line x1="8" y1="18" x2="21" y2="18"></line>
                                                <line x1="3" y1="6" x2="3" y2="6"></line>
                                                <line x1="3" y1="12" x2="3" y2="12"></line>
                                                <line x1="3" y1="18" x2="3" y2="18"></line>
                                            </svg>
                                        </button>
                                        <button class="jsx-3240274678 button--post" type="button">
                                            <span class="jsx-654986024">등록</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main><!-- End #main -->

	<!-- modal -->	<!-- ajax로 하기 -->
	<form action="chkPwd.do" method="post">
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <p style="text-align: center;">비밀번호 입력</p>
		        <input type="password" name="password" title="비밀번호 입력" placeholder="비밀번호를 입력해 주세요." class="jsx-599077571 password" value="" style="width: 300px;">
		        <input type="hidden" name="question_id" id='hidden_question_id'>
		        <input type="hidden" name="userId" value="${qna.userId}" id='hidden_userId'>
		      </div>
		      <div class="modal-footer">
		        <button type="submit" class="btn btn-primary">확인</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>
	
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