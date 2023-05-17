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

<title>course - adding</title>
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

<style>
aside {
	display: block;
}

.pg___course-slug .cd-floating {
	position: -webkit-sticky;
	position: sticky;
	top: 75px;
	margin: 0 34px 20px auto;
	width: 332px;
}

.pg___course-slug .cd-floating__card {
	overflow: hidden;
	border-radius: 8px;
	border: 1px solid #f1f3f5;
	box-shadow: 0 1px 3px 0 rgba(33, 37, 41, .03);
	background-color: #f8f9fa;
}

.pg___course-slug .cd-floating__card--top {
	border-radius: 8px;
	border-bottom: 1px solid #f1f3f5;
	background-color: #fff;
}

.pg___course-slug .cd-floating__price.cd-floating__price--installment {
	margin-bottom: 20px;
	padding: 20px 24px 0;
}

.pg___course-slug .cd-floating__buttons {
	margin-bottom: 8px;
	padding: 0 24px;
}

.pg___course-slug .cd-floating__buttons .floating__main-button {
	font-weight: 700;
	min-width: 100%;
}

.ac-button.is-solid.is-primary {
	border-color: #00c471;
	font-weight: 700;
	background-color: #00c471;
}

.ac-button.is-solid {
	border: 1px solid;
	color: #fff;
}

.ac-button.is-lg {
	padding: 0 16px;
	height: 48px;
	line-height: 1.47;
	font-size: 15px;
	letter-spacing: -.3px;
}

.ac-button.is-primary {
	border-color: #00c471;
	font-weight: 700;
	background-color: #00c471;
}

.ac-button {
	/* position: relative; */
	display: inline-flex;
	align-items: center;
	/* justify-content: center; */
	border-radius: 4px;
	line-height: 1.47;
	/* font-weight: 500; */
	cursor: pointer;
	/* -webkit-appearance: none;s */
	padding: 0 12px;
	/* height: 40px; */
	line-height: 1.43;
	font-size: 14px;
	letter-spacing: -.3px;
	border: 1px solid;
	color: #fff;
}

.ac-button.is-outlined.is-gray {
	border-color: #d5dbe2;
	color: #495057;
	background-color: #fff;
}

.pg___course-slug .cd-floating__buttons button+button {
	margin-top: 8px;
}

.ac-button.is-outlined {
	border: 1px solid;
}

.ac-button.is-lg {
	padding: 0 16px;
	height: 48px;
	line-height: 1.47;
	font-size: 15px;
	letter-spacing: -.3px;
}

.ac-button.is-gray {
	border-color: #868e96;
	background-color: #868e96;
}

.pg___course-slug .cd-floating__sub-button {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	font-weight: 400;
	line-height: 1.43;
	letter-spacing: -.3px;
	font-size: 14px;
	position: relative;
	flex: auto;
	padding: 10px 12px;
	color: #495057;
	font-weight: 500;
	cursor: pointer;
	text-decoration: underline;
}

.pg___course-slug .cd-floating__sub-buttons {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
	padding: 0 32px;
}

.pg___course-slug .cd-floating__sub-button>.infd-icon {
	margin-right: 8px;
	width: 17px;
	height: 16px;
}

.infd-icon {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	transition: background-color .15s ease;
}

.infd-icon {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	transition: background-color .15s ease;
}

.infd-icon path {
	transition: background-color .15s ease;
}

.infd-icon path {
	transition: background-color .15s ease;
}

.pg___course-slug .cd-floating__sub-button+.cd-floating__sub-button:before
	{
	content: "";
	position: absolute;
	left: 0;
	width: 1px;
	height: 16px;
	background-color: #dee2e6;
}

.pg___course-slug .like-button--active .infd-icon, .pg___course-slug .like-button .is-like
	{
	display: none;
}

.pg___course-slug .cd-floating__sub-button+.cd-floating__sub-button:before
	{
	content: "";
	position: absolute;
	left: 0;
	width: 1px;
	height: 16px;
	background-color: #dee2e6;
}

.content.jsx-245464177 {
	width: 924px;
}

.review-tab.jsx-4149508951 {
	display: flex;
	flex-direction: column;
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(223, 223, 223);
}

.review-box.jsx-4149508951 {
	position: relative;
	display: flex;
	overflow: hidden;
}

.auth-popup.jsx-4149508951 {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.badges-box.jsx-3913025517 {
	display: flex;
}

.box.border-primary.jsx-3913025517 {
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(93, 126, 233);
	color: rgb(93, 126, 233);
	font-weight: 700;
}

h4.jsx-644785032 {
	display: flex;
	width: 100%;
	font-size: 17px;
	margin-top: 12px;
}

h4.jsx-644785032>span.jsx-644785032 {
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	padding: 0px 5px;
}

.avatar.jsx-1397353033 {
	position: relative;
	width: 24px;
	height: 24px;
	margin: 0px auto;
}

.circle.jsx-1397353033 {
	position: relative;
	clear: both;
	width: 100%;
	height: 100%;
	border-radius: 50%;
	overflow: hidden;
	background-size: cover;
	background-color: rgb(238, 239, 244);
	background-position: center center;
	background-repeat: no-repeat;
}

button.jsx-520855050 {
	font-size: 14px;
	padding: 0px;
	width: 120px;
	min-width: 120px;
	height: 42px;
	line-height: 40px;
	border-radius: 26px;
	background-color: rgba(0, 0, 0, 0);
	color: rgb(33, 33, 33);
	border: 1px solid rgb(223, 223, 223);
	transition: background-color 0.3s ease 0s;
}

button.jsx-1487464557 {
	font-size: 14px;
	padding: 0px;
	width: 120px;
	min-width: 120px;
	height: 42px;
	line-height: 40px;
	border-radius: 26px;
	background-color: rgb(63, 96, 204);
	color: rgb(255, 255, 255);
	border: none;
	transition: background-color 0.3s ease 0s;
}

.ac-ct-12 {
	display: flex;
	flex-direction: column;
	background-color: rgb(255, 255, 255);
	/* border: 1px solid rgb(223, 223, 223); */
}

.ac-ct-12 .cd-floating {
	position: -webkit-sticky;
	position: fixed;
	top: 840px;
	/* margin: 0 34px 20px auto; */
	/* margin: 20px; */
}

.flex-box.jsx-4119538605 {
	display: flex;
	margin-bottom: 8px;
}

.flex-box.jsx-4119538605 {
	position: relative;
	display: flex;
	margin-bottom: 8px;
}

.flex-half.right.jsx-4119538605 {
	width: 100%;
	margin-right: 10px;
}

.flex-half.jsx-4119538605 {
	width: 50%;
}

.flex-half.jsx-4119538605:last-child, .flex-triple.jsx-4119538605:last-child
	{
	margin-right: 0px;
}

.bar-charts-tab.jsx-1816741517 {
	background-color: rgb(255, 255, 255);
	height: 212px;
	border: 1px solid rgb(223, 223, 223);
}

.board-box.jsx-3810764099 {
	position: relative;
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
}

.content-box.jsx-2656936329 {
	overflow: hidden;
	width: 100%;
	display: flex;
	flex-direction: column;
}

.card-box.jsx-2656936329 {
	position: relative;
	padding: 48px 94px;
	width: 100%;
	height: 100%;
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(223, 223, 223);
}

.write-comment-box.jsx-4129687755 {
	margin-top: 24px;
}

.write-comment-wrap.jsx-394409708 {
	display: flex;
	flex-direction: column;
	background-color: rgb(255, 255, 255);
}

.write-comment.jsx-394409708 {
	background-color: rgb(255, 255, 255);
	padding: 16px;
	border: 1px solid rgb(223, 223, 223);
}

.textarea.jsx-4265535288 {
	position: relative;
	display: block;
	overflow: hidden;
}

textarea.jsx-4265535288 {
	display: block;
	font-size: 14px;
	width: 100%;
	height: 60px;
	border: none;
	color: rgb(33, 33, 33);
	padding: 0px;
	resize: none;
	appearance: none;
}

textarea {
	resize: none;
	height: 400px;
}

textarea {
	resize: vertical;
}

.buttons.jsx-394409708 {
	display: flex;
	align-items: flex-end;
	margin: 8px;
}

.btn-view-list.jsx-654986024 {
	padding: 0px 12px;
	height: 28px;
	font-size: 14px;
	border: 1px solid rgb(223, 223, 223);
	border-radius: 14px;
	transition: background-color 0.3s ease 0s;
}

.btn-view-list.jsx-654986024 svg {
	display: none;
}

.buttons.jsx-394409708 .button--post {
	border-radius: 16px;
	margin-left: auto;
	height: 28px;
}
</style>
<style id="__jsx-1629185219">
.search-layout.jsx-1629185219 {
	display: flex;
	flex-direction: column;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(223, 223, 223);
	padding: 48px 94px;
}

.title.jsx-1629185219 {
	text-align: center;
	margin-bottom: 28px;
	padding-bottom: 16px;
	border-bottom: 1px solid rgb(102, 102, 102);
}
</style>
<style id="__jsx-3239872667">
.main-card.jsx-3239872667 {
	background-color: #ffffff;
	padding: 40px 40px 32px;
	border: 1px solid #dfdfdf;
	margin-bottom: 8px;
}

@media ( max-width :1199px) {
	.main-card.jsx-3239872667 {
		padding: 12px 16px 16px;
		margin-top: 8px;
		border: 0;
	}
	.main-card.jsx-3239872667 .btn-evaluation {
		position: fixed;
		right: 16px;
		bottom: 20px;
		z-index: 51;
		width: auto;
		min-width: auto;
		height: 42px;
		line-height: 40px;
		padding: 0 24px;
		background-color: #3f60cc;
		box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2);
		border: 0;
		font-size: 14px;
		color: #ffffff;
	}
	.main-card.jsx-3239872667 .btn-evaluation:hover, .main-card.jsx-3239872667 .btn-evaluation:focus
		{
		background-color: #2c428d;
	}
}
</style>
<style id="__jsx-216214598">
.content.jsx-216214598 {
	display: flex;
	border-bottom: 1px solid rgb(236, 236, 236);
	padding-bottom: 24px;
}

.content.jsx-216214598 .btn-enroll {
	background-color: rgb(223, 223, 223);
}

.content.jsx-216214598 .btn-follow, .content.jsx-216214598 .btn-enroll {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 100%;
	height: 52px;
	border-radius: 4px;
}

.content.jsx-216214598 .btn-evaluation img {
	margin-left: 4px;
}

.content.jsx-216214598 .btn-evaluation {
	border-radius: 32px;
	color: rgb(63, 96, 204);
	border: 1px solid rgb(223, 223, 223);
	width: auto;
	min-width: auto;
	height: 42px;
	line-height: 40px;
	padding: 0px 24px;
	margin-left: auto;
	transition: background-color 0.3s ease 0s;
	background-color: rgb(255, 255, 255);
}

.flex-left.jsx-216214598 {
	min-width: 265px;
	margin-right: 20px;
}
/* .flex-right.jsx-216214598 {
          width: 100%;
      } */
.profile.jsx-216214598 {
	position: relative;
	width: 500px;
	height: 100%;
	padding: 0px 20px;
	background-color: rgb(238, 239, 244);
	margin-bottom: 16px;
}

.rank.jsx-216214598 {
	position: absolute;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	font-size: 14px;
	color: rgb(255, 255, 255);
	font-weight: 700;
	border-radius: 50%;
	background-color: rgb(102, 102, 102);
}

.top-rank.jsx-216214598, .rank.jsx-216214598 {
	width: 64px;
	height: 64px;
	top: 16px;
	right: 12px;
}

.tutor-image.jsx-216214598 {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-position: center bottom;
	background-size: contain;
}

.title.jsx-216214598 {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	margin-bottom: 14px;
}

.title.jsx-216214598 h3.jsx-216214598 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 22px;
	margin-right: 8px;
}

.title.jsx-216214598 h3.jsx-216214598>span.jsx-216214598 {
	color: rgb(63, 96, 204);
	margin-right: 4px;
}
</style>
<style id="__jsx-2255129348">
.real-time-evaluation.jsx-2255129348 {
	border: 1px solid rgb(223, 223, 223);
	background-color: rgb(238, 239, 244);
	overflow-y: auto;
	height: 352px;
	width: 410px;
	position: relative;
	/* right: -362px; */
}

.scroll-box.jsx-2255129348 {
	padding: 12px;
}

ul.jsx-2255129348 {
	overflow: hidden;
}

li.jsx-2255129348>h4.jsx-2255129348 {
	margin-bottom: 8px;
}

.horizontal-rule.jsx-2255129348 {
	width: 100%;
	height: 1px;
	background-color: rgb(223, 223, 223);
	margin: 12px 0px;
}
</style>
<style id="__jsx-3839070939">
.board-item.jsx-3839070939 {
	width: 100%;
	height: 100%;
	display: block;
}

.title.jsx-3839070939 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

h4.jsx-3839070939 {
	max-width: 402px;
	font-weight: normal;
	margin-right: 4px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.sub.jsx-3839070939 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	margin-top: 5px;
}

li.tutor.jsx-3839070939 .tags.jsx-3839070939 {
	color: rgb(255, 51, 102);
}

li.jsx-3839070939 {
	position: relative;
	background-color: rgb(255, 255, 255);
	border-radius: 4px;
	margin-bottom: 8px;
	padding: 12px;
	cursor: pointer;
}
</style>
<style id="__jsx-1434886323">
li.jsx-1434886323:last-child {
	margin-bottom: 0px;
}

li.jsx-1434886323 {
	position: relative;
	background-color: rgb(255, 255, 255);
	border-radius: 4px;
	margin-bottom: 8px;
	padding: 12px;
	cursor: pointer;
}

.board-item.jsx-1434886323 {
	width: 100%;
	height: 100%;
	display: block;
}

.title.jsx-1434886323 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

h4.jsx-1434886323 {
	max-width: 402px;
	font-weight: normal;
	margin-right: 4px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.sub.jsx-1434886323 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	margin-top: 5px;
}
</style>

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
	        <li>Course</li>
	      </ol>
	      <h2>COURSE</h2>
	
	    </div>
	  </section><!-- End Breadcrumbs -->
	
	  <section class="inner-page">
	    <div class="container">
	      <div class="jsx-722889332 content">
	        
	        <div class="jsx-1629185219 search-layout">
	          <div class="jsx-1629185219 title">
	            <h4 class="jsx-1629185219">COURSE</h4>
	            <p class="jsx-1629185219">
	              어떤 수업이 나와 잘 맞는 과정일까?
	            </p>
	          </div>
	
	          <div class="jsx-2373216897 search-page">
	
	            <!-- 해시태그 -->
	            <ul class="jsx-786344230 sort-list">
	              <li class="jsx-786344230">
	                <div class="jsx-2595981909 filter filter--institute">
	                  <h4 class="jsx-2595981909">지역</h4>
	                  <button type="button" class="jsx-2595981909 btn-all on">전체</button>
	                  <ul class="jsx-2595981909">
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                      <span class="jsx-3824006232 logo">
	                        <img src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logoff255b4a3648f56d5f02f5ec5574716fafaed957d169c7f2d6825b3e2b44a174?w=128&amp;f=webp" alt="해커스 온라인" class="jsx-3824006232">
	                      </span>
	                        <div class="jsx-3824006232 name">서울</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo">
	                          <img src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logof6914b8a882ed9c5d2cc9de5bdd177d4e8d38f4a63a331104cb2599c6c299cbc?w=128&amp;f=webp" alt="EBSi-고등" class="jsx-3824006232">
	                        </span>
	                        <div class="jsx-3824006232 name">경기도</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo">
	                          <img src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logof5b37142b9d1cc3cd1a31876ca4c2c0d6e457351f4ec8474aa6b9244723940d0?w=128&amp;f=webp" alt="eck교육" class="jsx-3824006232">
	                        </span>
	                        <div class="jsx-3824006232 name">인천</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logoe4e65a50a30230aca0d856559b5bf45aef7f8b1972b3d72baf2d41a7ae9aa3af7d7c9a3b573002ae48a7ccbc47619514?w=128&amp;f=webp"
	                            alt="리더스어학원" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">대전</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo">
	                          <img src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logoe449ccd618c1bf386e7c63bb5b0a8a5b1bba061361c5461eee95dd9fdfac4e3f?w=128&amp;f=webp" alt="기술단기" class="jsx-3824006232">
	                        </span>
	                        <div class="jsx-3824006232 name">세종</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logoe08d1e70ba0164a87a58989d4c69557e7e911c5b4ea7f4563d925c43b8bf5476?w=128&amp;f=webp"
	                            alt="분당시대인재" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">충청도</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logodcc52c87049fb7ef9e9678f06e71ec7d89c1d51eeb58a50842fe8c35a39f6cd5?w=128&amp;f=webp"
	                            alt="박정어학원(PJ어학원)" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">광주</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 "><span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logod8f8364e085378aab48a651585abf4de894d01857ef0c569484f41a3d7419143?w=128&amp;f=webp"
	                            alt="YBM어학원" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">전라도</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logobf1e94559b1e63b7a6966b0a7890e415eb71515aa16ed8521512768906014497?w=128&amp;f=webp"
	                            alt="민병철어학원" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">대구</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logobf0c2f6922111dc0c91309e22578b1f0de906ef2d7855aa36408b4d972626d5a?w=128&amp;f=webp"
	                            alt="파고다" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">부산</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logobe33aa7cf72abae0e9a913e6a23e2949eba82446b5eb45b23a52f98f91cdfae8?w=128&amp;f=webp"
	                            alt="YBM어학원" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">울산</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logoab7a957366d38045e51ff9e25fb596a3023a2f63366589a1a9ec8f9958392b77?w=128&amp;f=webp"
	                            alt="EDM 아이엘츠" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">경상도</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logoa974d639e4860f3c42de2172261763839b69d07e591b50f0de3455c74d0cfe02?w=128&amp;f=webp"
	                            alt="파고다" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">강원도</div>
	                      </button>
	                    </li>
	                    <li class="jsx-3824006232">
	                      <button type="button" class="jsx-3824006232 ">
	                        <span class="jsx-3824006232 logo"><img
	                            src="https://d1ta1myjmiqbpz.cloudfront.net/institute/logoa974d639e4860f3c42de2172261763839b69d07e591b50f0de3455c74d0cfe02?w=128&amp;f=webp"
	                            alt="파고다" class="jsx-3824006232"></span>
	                        <div class="jsx-3824006232 name">제주도</div>
	                      </button>
	                    </li>
	                    <li class="jsx-2595981909">
	                      <button type="button" class="jsx-2595981909 btn-more">
	                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#5d7ee9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative; margin: auto;">
	                          <line x1="12" y1="5" x2="12" y2="19"></line>
	                          <line x1="5" y1="12" x2="19" y2="12"></line>
	                        </svg>
	                      </button>
	                    </li>
	                  </ul>
	                </div>
	              </li>
	              <li class="jsx-786344230">
	                <div class="jsx-2595981909 filter">
	                  <h4 class="jsx-2595981909">과목</h4>
	                  <button type="button" class="jsx-2595981909 btn-all on">전체</button>
	                  <ul class="jsx-2595981909">
	                    <li class="jsx-2749561681"><button type="button" class="jsx-2749561681 ">프론트엔드</button></li>
	                    <li class="jsx-2749561681"><button type="button" class="jsx-2749561681 ">백엔드</button></li>
	                    <li class="jsx-2749561681"><button type="button" class="jsx-2749561681 ">풀스택</button></li>
	                  </ul>
	                </div>
	              </li>
	            </ul>
	            
	          </div>
	        </div>
	
	        <!-- 검색 결과 -->
	        <div class="jsx-1629185219 search-result">
	          
	          <div class="jsx-1629185219 content">
	            <div class="jsx-2875758176 sections">
	              
	              <div class="jsx-283961174 section section--search">
	
	                <div class="jsx-283961174 title">
	                  <h2 class="jsx-283961174">COURSE&nbsp;</h2>
	                </div>
	
	                <div class="jsx-786344230 btn-add-teacher mb-3">
	                  <span class="jsx-786344230">찾으시는 과정이 없으신가요?</span>
	                  <button type="button" class="jsx-3375816330 ">
	                    <img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_plus01.png" alt="" class="jsx-786344230 addCourse">과정 추가하기
	                  </button>
	                </div>
	
	                <ul class="jsx-2875758176 tutors">
	                  <li class="jsx-2875758176">
	                    <a class="jsx-2875758176" href="/testenglish/tutors/4752">
	                      <div tabindex="0" class="jsx-445560552 card">
	                        <div class="jsx-445560552 content">
	                          <div class="jsx-445560552 info">
	                            <h3 class="jsx-445560552">제니김</h3>
	                            <p class="jsx-445560552">다락원</p>
	                          </div>
	                          <div class="jsx-445560552 star-box">
	                            <span class="jsx-445560552">7.6</span>
	                            <div class="jsx-2704879397 stars">
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                            </div>
	                          </div>
	                          <div class="jsx-445560552 profile-image tutor">
	                            <span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=280&amp;f=webp&quot;);"></span>
	                          </div>
	                        </div>
	                      </div>
	                    </a>
	                  </li>
	
	                  <li class="jsx-2875758176">
	                    <a class="jsx-2875758176" href="/abroad/tutors/4767">
	                      <div tabindex="0" class="jsx-445560552 card">
	                        <div class="jsx-445560552 content">
	                          <div class="jsx-445560552 info">
	                            <h3 class="jsx-445560552">이안</h3>
	                            <p class="jsx-445560552">EDM 아이엘츠</p>
	                          </div>
	                          <div class="jsx-445560552 star-box">
	                            <span class="jsx-445560552">7.8</span>
	                            <div class="jsx-2704879397 stars">
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                            </div>
	                          </div>
	                          <div class="jsx-445560552 profile-image tutor">
	                            <span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/tutor/profileebf999414689238cc8254416a99c661116eeaf75b2a3395047d1476c9d69e5f2?w=280&amp;f=webp&quot;);"></span>
	                          </div>
	                        </div>
	                      </div>
	                    </a>
	                  </li>
	
	                  <li class="jsx-2875758176">
	                    <a class="jsx-2875758176" href="/abroad/tutors/114342">
	                      <div tabindex="0" class="jsx-445560552 card">
	                        <div class="jsx-445560552 content">
	                          <div class="jsx-445560552 info">
	                            <h3 class="jsx-445560552">정사랑</h3>
	                            <p class="jsx-445560552">이완호토플아이엘츠학원</p>
	                          </div>
	                          <div class="jsx-445560552 star-box">
	                            <span class="jsx-445560552">9.9</span>
	                            <div class="jsx-2704879397 stars">
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                            </div>
	                          </div>
	                          <div class="jsx-445560552 profile-image tutor">
	                            <span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=280&amp;f=webp&quot;);"></span>
	                          </div>
	                        </div>
	                      </div>
	                    </a>
	                  </li>
	
	                  <li class="jsx-2875758176">
	                    <a class="jsx-2875758176" href="/abroad/tutors/425">
	                      <div tabindex="0" class="jsx-445560552 card">
	                        <div class="jsx-445560552 content">
	                          <div class="jsx-445560552 info">
	                            <h3 class="jsx-445560552">이완호</h3>
	                            <p class="jsx-445560552">민병철어학원</p>
	                          </div>
	                          <div class="jsx-445560552 star-box">
	                            <span class="jsx-445560552">7.3</span>
	                            <div class="jsx-2704879397 stars">
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-1"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                            </div>
	                          </div>
	                          <div class="jsx-445560552 profile-image tutor">
	                            <span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher02_06@2x.png?w=280&amp;f=webp&quot;);"></span>
	                          </div>
	                        </div>
	                      </div>
	                    </a>
	                  </li>
	                    
	                  <li class="jsx-2875758176">
	                    <a class="jsx-2875758176" href="/abroad/tutors/4750">
	                      <div tabindex="0" class="jsx-445560552 card">
	                        <div class="jsx-445560552 content">
	                          <div class="jsx-445560552 info">
	                            <h3 class="jsx-445560552">조</h3>
	                            <p class="jsx-445560552">권혁미 서일어학원</p>
	                          </div>
	                          <div class="jsx-445560552 star-box">
	                            <span class="jsx-445560552">0.0</span>
	                            <div class="jsx-2704879397 stars">
	                              <div class="jsx-2704879397 star star-0"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                            </div>
	                          </div>
	                          <div class="jsx-445560552 profile-image tutor">
	                            <span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_01@2x.png?w=280&amp;f=webp&quot;);"></span>
	                          </div>
	                        </div>
	                      </div>
	                    </a>
	                  </li>
	
	                  <li class="jsx-2875758176">
	                    <a class="jsx-2875758176" href="/abroad/tutors/113531">
	                      <div tabindex="0" class="jsx-445560552 card">
	                        <div class="jsx-445560552 content">
	                          <div class="jsx-445560552 info">
	                            <h3 class="jsx-445560552">Sophia Lee</h3>
	                            <p class="jsx-445560552">EDM 아이엘츠</p>
	                          </div>
	                          <div class="jsx-445560552 star-box">
	                            <span class="jsx-445560552">7.7</span>
	                            <div class="jsx-2704879397 stars">
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-2"></div>
	                              <div class="jsx-2704879397 star star-0"></div>
	                            </div>
	                          </div>
	                          <div class="jsx-445560552 profile-image tutor">
	                            <span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/tutor/profile3ab2c8bb693e26d4b660933408ab054edd4720922eabf302502c811d80ec445b?w=280&amp;f=webp&quot;);"></span>
	                          </div>
	                        </div>
	                      </div>
	                    </a>
	                  </li>
	                </ul>
	
	                <div class="jsx-786344230 btn-view-more">
	                  <button type="button" class="jsx-1662442796 ">더보기</button>
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

<script>
	  console.log($('#hidden_userId').val());
  $(document).ready(function() {
    $('div.jsx-989812570.col-title > a').click(function() {
      q_id = $(this).parent().prev().prev().text();
      $('#hidden_question_id').val(q_id);
      $("#staticBackdrop").modal("show");
      
    });
  });
  
  $(document).ready(function() {
    $('.goSearch').click(function() {
    	alert('1');
    });
  });

  let goWriting = document.querySelector('.btn-writing');
  
  goWriting.addEventListener("click", function () {
    location.href='qnaWriting.do';
  });
</script>
</html>