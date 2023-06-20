<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	HttpSession bootSession = request.getSession();
	int bootcamp_id = (Integer) bootSession.getAttribute("bootcamp_id");
	String bootcamp_name = (String) bootSession.getAttribute("bootcamp_name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>course - in detail</title>
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
<link href="${path}/resources/css/style.css" rel="stylesheet">

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

.fname_en {
	width: 460px;
	height: 386px;
}

.on {
	display: none;
}

.popup_on {
	display: none;
}

.contentsOn {
	display: none;
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
<style id="__jsx-2704879397">
.star-2.jsx-2704879397 {
	background-image:
		url("https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_card_star01_normal01_on.png");
}

.star.jsx-2704879397 {
	float: left;
	width: 12px;
	height: 12px;
	overflow: hidden;
	margin-right: 4px;
	background-size: cover;
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
	display: flex;
	align-items: center;
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
	/* width: 260px; */
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

.btn-more-box.jsx-2255129348 {
	display: flex;
	margin-top: 16px;
}

.btn-more-box.jsx-2255129348 a.jsx-2255129348 {
	font-size: 14px;
	height: 42px;
	border: 1px solid rgb(223, 223, 223);
	border-radius: 4px;
	width: 100%;
	margin-right: 8px;
	text-align: center;
	line-height: 40px;
}

.btn-more-box.jsx-2255129348 a.jsx-2255129348:last-child {
	margin-right: 0px;
}

@media ( min-width :800px) {
	.real-time-evaluation.jsx-2255129348 {
		width: 260px !important;
	}
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

.tags.jsx-3839070939 {
	font-size: 13px;
	color: rgb(63, 96, 204);
}

.emotion-img.jsx-3839070939 {
	position: absolute;
	top: 16px;
	right: 16px;
	width: 40px;
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

.tags.jsx-1434886323 {
	font-size: 13px;
	color: rgb(63, 96, 204);
}

.emotion-img.jsx-1434886323 {
	position: absolute;
	top: 16px;
	right: 16px;
	width: 40px;
}
</style>
<style id="__jsx-1546215327">
.tabs.jsx-1546215327 {
	display: flex;
	flex-direction: column;
	height: 100%;
	font-size: 16px;
}

ul.jsx-1546215327 {
	display: flex;
	background-color: rgb(238, 239, 244);
}

li.jsx-1546215327 {
	width: 100%;
}

li.on.jsx-1546215327 button.jsx-1546215327 {
	background-color: rgb(255, 255, 255);
	font-weight: 700;
	color: rgb(33, 33, 33);
	border-bottom: none;
}

li.jsx-1546215327 button.jsx-1546215327 {
	width: 100%;
	height: 42px;
	line-height: 42px;
	color: rgb(102, 102, 102);
}

li.jsx-1546215327 button.jsx-1546215327 {
	width: 100%;
	height: 42px;
	line-height: 42px;
	color: rgb(102, 102, 102);
}

.content.jsx-1546215327 {
	height: 100%;
	background-color: rgb(255, 255, 255);
	padding: 0px;
}
</style>
<style id="__jsx-644785032">
.info.jsx-644785032 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	padding: 8px 0px;
	font-size: 14px;
	border-bottom: 1px solid rgb(236, 236, 236);
}

.info.jsx-644785032 .nickname.jsx-644785032 {
	color: rgb(33, 33, 33);
	margin-left: 8px;
}

.info.jsx-644785032 span.jsx-644785032 {
	color: rgb(102, 102, 102);
}

.info.jsx-644785032 .sub.jsx-644785032 {
	margin-left: auto;
}

.info.jsx-644785032 span.jsx-644785032 {
	color: rgb(102, 102, 102);
}

.content.jsx-644785032 {
	padding: 24px 0px;
}

.rating-btn-box.jsx-644785032 {
	display: flex;
}

.star-box.jsx-644785032 {
	display: flex;
	align-items: flex-end;
	margin-right: auto;
	padding-bottom: 8px;
}

.star-box.jsx-644785032>span.jsx-644785032 {
	font-size: 28px;
	font-weight: 700;
	margin-right: 4px;
	line-height: 100%;
}

.review-item.jsx-644785032:first-child.jsx-644785032::after {
	position: absolute;
	top: 24px;
	bottom: 24px;
	right: 0px;
	border-right: 1px solid rgb(223, 223, 223);
	content: "";
}

.review-item.jsx-644785032 {
	padding: 24px 32px 32px;
	width: 100%;
	cursor: pointer;
}

.title.jsx-644785032 {
	position: relative;
}
</style>
<style id="__jsx-133251687">
.content.jsx-133251687 {
	width: 400px;
	display: flex;
	text-align: center;
	flex-direction: column;
	background-color: rgb(255, 255, 255);
	border-radius: 8px;
	padding: 24px;
	box-shadow: rgba(0, 0, 0, 0.2) 0px 2px 10px;
}

h5.jsx-133251687 {
	font-size: 14px;
	margin-bottom: 16px;
}

.btn-box.jsx-133251687 {
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
}

.btn-join.jsx-133251687, .btn-login.jsx-133251687 {
	margin: 0px 8px;
}
</style>
<style id="__jsx-2891290942">
.null-set-box.jsx-2891290942 {
	position: relative;
	display: flex;
	width: 100%;
	height: 518px;
}

img.jsx-2891290942 {
	width: 100%;
}

.alert-box.jsx-2891290942 {
	text-align: center;
	width: 400px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	background-color: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0.2) 0px 2px 10px 0px;
	padding: 24px 30px 32px;
	border-radius: 8px;
}

.info-icon.jsx-2891290942 {
	display: inline-block;
	width: 24px;
	height: 24px;
	transform: rotate(180deg);
	vertical-align: top;
}

.alert-box.jsx-2891290942 p.jsx-2891290942 {
	margin-top: 8px;
	font-size: 14px;
	font-weight: 700;
}
</style>

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
							<li><a href="/qnaBorad/getQnAList.do">Teacher | Course Q&A</a></li>
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
						<li><a class="getstarted scrollto" href="logout">로그아웃</a></li>
					</c:if>
					<li class="dropdown"><a class="getstarted scrollto" href="#">로그인</a>
						<ul>
					       <li><a href="login">로그인</a></li>
					       <li><a href="join">회원가입</a></li>
						</ul>
		          	</li>
			</nav>
			<!-- .navbar -->

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
		</section>
		<!-- End Breadcrumbs -->

		<section class="inner-page">
			<div class="container">
				<div class="jsx-722889332 content">

					<!-- content 내부 title -->
					<div class="jsx-3810764099 board-box">
						<div class="jsx-2656936329 content-box">
							<div class="jsx-2656936329 card-box">
								<div class="jsx-1629185219 title mb-3">
									<h4 class="jsx-1629185219">COURSE</h4>
									<p class="jsx-1629185219">어떤 수업이 나와 잘 맞는 과정일까?</p>
								</div>


								<!-- content 메인 카드(상단) -->
								<div class="jsx-3239872667 main-card">

									<!-- 안 내용 -->
									<div class="jsx-216214598 content">

										<!-- 상세 페이지의 이미지 들어가는 부분 -->
										<div class="jsx-216214598 flex-left">
											<div class="jsx-216214598 profile">
												<div class="jsx-216214598 tutor-image">
													<img class="fname_en" alt="#" src="/resources/upload/${course.fname_en}"> 
													<input type="hidden" name="course_name" value="${course.course_name }"> 
													<input type="hidden" name="bootcamp_id" value="${course.bootcamp_id }"> 
													<input type="hidden" name="position_id" value="${course.position_id }"> 
													<input type="hidden" name="position" value="${course.position }">
												</div>
											</div>
										</div>

										<div class="jsx-216214598 flex-right">

											<div class="jsx-216214598 title">
												<button class="jsx-3857673807 btn-evaluation updatingCourse" type="button">
													수정하기 <img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_page/icon_writing01.png" alt="" class="jsx-216214598">
												</button>
												<form action="deleteCourse.do" method="post">
													<input type="hidden" name="course_id" value="${course.course_id }">
													<button class="jsx-3857673807 btn-evaluation deleteCourse" data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="submit" style="margin-left: 10px;">
														<img src="${path}/resources/imgs/xmark.png" alt="" class="jsx-216214598" style="margin-top: 14px">
													</button>
													
													<!-- Modal -->
													<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
													  <div class="modal-dialog">
													    <div class="modal-content">
													      <div class="modal-header">
													        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
													        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													      </div>
													      <div class="modal-body">
													        ...
													      </div>
													      <div class="modal-footer">
													        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
													        <button type="button" class="btn btn-primary">Understood</button>
													      </div>
													    </div>
													  </div>
													</div>

												</form>
											</div>

											<!-- 상세 페이지의 간단 설명 부분 -->
											<div class="jsx-2255129348 real-time-evaluation">
												<div class="jsx-2255129348 scroll-box">
													<ul class="jsx-2255129348">
														<li class="jsx-2255129348">
															<h4 class="jsx-2255129348">강의명</h4>
														</li>
														<li class="jsx-3839070939 tutor">
															<div class="jsx-3839070939 board-item">
																<div class="jsx-3839070939 title">
																	<h4 class="jsx-3839070939">${course.course_name }</h4>
																</div>
															</div>
														</li>
														<li class="jsx-2255129348 horizontal-rule"></li>
														<li class="jsx-2255129348">
															<h4 class="jsx-2255129348">별점</h4>
														</li>
														<li class="jsx-1434886323 ">
															<div class="jsx-1434886323 board-item">
																<div class="jsx-1434886323 title">
																	<h4 class="jsx-1434886323">별점 샤샥</h4>
																</div>
															</div>
														</li>
														<li class="jsx-2255129348 horizontal-rule"></li>
														<li class="jsx-2255129348">
															<h4 class="jsx-2255129348">학원명</h4>
														</li>
														<li class="jsx-1434886323 ">
															<div class="jsx-1434886323 board-item">
																<div class="jsx-1434886323 title">
																	<h4 class="jsx-1434886323">${course.bootcamp_name }</h4>
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- content 메인 내용 -->
								<div class="jsx-245464177 flex-box">
									<div class="jsx-4119538605 container" style="padding: 0px;">

										<div class="jsx-4119538605 flex-box">
											<div class="jsx-4119538605 flex-half right">
												<!-- 리뷰 / 설명 -->
												<div class="jsx-4119538605 review-area">
													<div class="jsx-4149508951 review-tab">
														<div class="jsx-1546215327 tabs">
															<ul class="jsx-1546215327">
																<li class="jsx-1546215327 ">
																	<button class="jsx-1546215327 description">강의 설명</button>
																</li>
																<li class="jsx-1546215327 ">
																	<!-- 여기가 눌리면 on 추가 -->
																	<button class="jsx-1546215327 studentReview">수강생 리뷰</button>
																</li>
															</ul>

															<div class="jsx-1546215327 content">
																<div title="강사리뷰" class="jsx-4149508951">
																	<div class="reviewArea contentsOn">
																	<!-- 수강생 리뷰 -->
																	<c:choose>

																		<c:when test="${not empty cRList }">
																			<c:forEach items="${cRList }" var="cReview">
																				<!-- 후기 내용이 들어가는 부분 (바뀌어야하는 부분) -->
																				<div class="jsx-4149508951 review-box">
																					<div class="jsx-644785032 review-item">
																						<div class="jsx-644785032 ">
																							<div class="jsx-644785032 info">
																								<div class="jsx-644785032">
																									<div class="jsx-1397353033 avatar">
																										<div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);"></div>
																									</div>
																								</div>
																								<span class="jsx-644785032 nickname">${cReview.userId }</span> 
																								<span class="jsx-644785032 sub">
																									<div class="jsx-644785032 rating-btn-box">
																										<div class="jsx-644785032 star-box">
																											<span class="jsx-644785032">${cReview.star_point }</span>
																											<div class="jsx-2704879397 stars">
																												<div class="jsx-2704879397 star star-2"></div>
																												<div class="jsx-2704879397 star star-2"></div>
																												<div class="jsx-2704879397 star star-2"></div>
																												<div class="jsx-2704879397 star star-2"></div>
																												<div class="jsx-2704879397 star star-0"></div>
																											</div>
																										</div>
																									</div>
																								</span>
																							</div>
																						</div>

																						<div class="jsx-644785032 title">
																							<h4 class="jsx-644785032">
																								“ <span class="jsx-644785032">${cReview.content }</span> ”
																							</h4>
																						</div>

																					</div>
																				</div>
																			</c:forEach>
																		</c:when>

																		<c:otherwise>
																			<!-- 로그인이 안되어있을 경우 뜨는 팝업 -->
																			<div class="jsx-4149508951 auth-popup popup_review popup_on">
																				<div class="jsx-133251687 content">
																					<h5 class="jsx-133251687">로그인하고 전체보기</h5>
																					<div class="jsx-133251687 btn-box">
																						<div class="jsx-133251687 btn-join">
																							<button type="button" class="jsx-520855050 signUp">회원가입</button>
																						</div>
																						<div class="jsx-133251687 btn-login">
																							<button type="button" class="jsx-1487464557 login">로그인</button>
																						</div>
																					</div>
																				</div>
																			</div>


																			<!-- 후기가 없을때 -->
																			<div class="jsx-4149508951 review-box writingArea on">
																				<div class="jsx-644785032 review-item noAnswer">
																					<div class="jsx-644785032 title">
																						<h4 class="jsx-644785032">
																							<span class="jsx-644785032">아직 후기가 없어요</span>
																						</h4>
																					</div>
																					<div class="jsx-644785032 ">
																						<div class="jsx-644785032 info">
																							<c:if test="${loginFg eq 's'}">
																								<!-- 로그인 하지 않았다면 로그인 팝업창 뜨게 하기 -->
																								<span class="jsx-644785032 nickname goWriting"><a href="#">후기 작성하기</a></span>
																							</c:if>
																						</div>
																					</div>
																				</div>
																			</div>

																			<!-- 후기가 없을때 -->
																			<form action="writingCReview.do" method="post">
																				<input type="hidden" name="course_id" value="${course.course_id }">
																				<div class="jsx-4149508951 review-box">
																					<div class="jsx-644785032 review-item">
																						<div class="jsx-644785032 title">
																							<div class="jsx-644785032 info">
																								<div class="jsx-644785032">
																									<div class="jsx-1397353033 avatar">
																										<div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);"></div>
																									</div>
																								</div>
																								<span class="jsx-644785032 nickname">아*****</span>
																							</div>

																							<!-- 해당 수강생이 답글 작성하기 눌렀을 때 -->
																							<div class="adminArea mb-3">
																								<div class="input-group mb-3">
																									<input type="text" class="form-control" placeholder="답글 쓰기" aria-label="Recipient's username" aria-describedby="button-addon2">
																									<button class="btn btn-outline-secondary gap-2 col-2 mx-auto review_post" type="submit" id="button-addon2">작성</button>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</form>


																		</c:otherwise>
																	</c:choose>
																	</div>
																	
																	<div title="강의설명" class="jsx-4149508951 description_on">
																		<div class="jsx-4149508951 transfer-box">
																			<div class="jsx-2891290942 null-set-box">
																				<h2>${course.description }</h2>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- 우측 장바구니 버튼 -->
											<div class="jsx-4119538605 flex-half">
												<div class="ac-cd-4 ac-ct-12">
													<aside class="cd-floating">
														<div class="cd-floating__container e-floating-wrapper">
															<div class="cd-floating__card e-cd-floating-card">
																<div class="cd-floating__card--top">
																	<div class="cd-floating__price cd-floating__price--installment">
																		<div class="cd-floating__price--top">
																			<span class="cd-price__pay-price">${course.price }원</span>
																		</div>
																		<div class="cd-floating__price--bottom">
																			<h4>전액 무료</h4>
																			<span class="cd-price__ment">5개월 할부 시</span>
																		</div>
																	</div>
																	<div class="cd-floating__buttons">
																		<button class="ac-button is-lg is-solid is-primary floating__main-button e-enrol " data-type="cart">수강신청 하기</button>
																		<button class="ac-button is-lg is-outlined is-gray floating__main-button e-add-cart " data-type="add-cart">바구니에 담기</button>
																	</div>
																	<div class="cd-floating__sub-buttons">
																		<span class="cd-floating__sub-button e-add-playlist"> 
																			<span class="infd-icon"> 
																				<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 16 16">
											                                        <path fill="#212529" fill-rule="evenodd" clip-rule="evenodd" d="M2.5 2.5A.5.5 0 0 0 2 3v10a.5.5 0 0 0 .5.5h12a.5.5 0 0 0 .5-.5V4.5a.5.5 0 0 0-.5-.5H7.035a1.5 1.5 0 0 1-1.248-.668l-.406-.61a.5.5 0 0 0-.416-.222H2.5zM1 3a1.5 1.5 0 0 1 1.5-1.5h2.465c.501 0 .97.25 1.248.668l.406.61A.5.5 0 0 0 7.035 3H14.5A1.5 1.5 0 0 1 16 4.5V13a1.5 1.5 0 0 1-1.5 1.5h-12A1.5 1.5 0 0 1 1 13V3z"></path>
											                                        <path fill="#212529" fill-rule="evenodd" clip-rule="evenodd" d="M8.5 5.5A.5.5 0 0 1 9 6v5a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5z"></path>
											                                        <path fill="#212529" fill-rule="evenodd" clip-rule="evenodd" d="M11.5 8.5a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h5a.5.5 0 0 1 .5.5z"></path>
											                                     </svg>
																			</span>폴더에 추가
																		</span> 
																		<span class="cd-floating__sub-button like-button e-like " data-cnt="457" data-target="PC"> 
																			<span class="infd-icon"> 
																				<svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
	                                        										<path fill="#212529" fill-rule="evenodd" clip-rule="evenodd" d="M4.49095 2.66666C3.10493 2.66666 1.66663 3.92028 1.66663 5.67567C1.66663 7.74725 3.21569 9.64919 4.90742 11.0894C5.73796 11.7965 6.571 12.3653 7.19759 12.7576C7.51037 12.9534 7.7704 13.1045 7.95123 13.2061C7.96818 13.2156 7.98443 13.2247 7.99996 13.2333C8.01549 13.2247 8.03174 13.2156 8.04869 13.2061C8.22952 13.1045 8.48955 12.9534 8.80233 12.7576C9.42892 12.3653 10.262 11.7965 11.0925 11.0894C12.7842 9.64919 14.3333 7.74725 14.3333 5.67567C14.3333 3.92028 12.895 2.66666 11.509 2.66666C10.1054 2.66666 8.9751 3.59266 8.4743 5.09505C8.40624 5.29922 8.21518 5.43693 7.99996 5.43693C7.78474 5.43693 7.59368 5.29922 7.52562 5.09505C7.02482 3.59266 5.89453 2.66666 4.49095 2.66666ZM7.99996 13.8018L8.22836 14.2466C8.08499 14.3202 7.91493 14.3202 7.77156 14.2466L7.99996 13.8018ZM0.666626 5.67567C0.666626 3.368 2.55265 1.66666 4.49095 1.66666C6.01983 1.66666 7.25381 2.48414 7.99996 3.73655C8.74611 2.48414 9.98009 1.66666 11.509 1.66666C13.4473 1.66666 15.3333 3.368 15.3333 5.67567C15.3333 8.22121 13.4657 10.3823 11.7407 11.8509C10.863 12.5982 9.98767 13.1953 9.33301 13.6052C9.00516 13.8104 8.73133 13.9696 8.53847 14.0779C8.44201 14.1321 8.36571 14.1737 8.31292 14.2019C8.28653 14.2161 8.26601 14.2269 8.25177 14.2344L8.2352 14.2431L8.23054 14.2455L8.22914 14.2462C8.22897 14.2463 8.22836 14.2466 7.99996 13.8018C7.77156 14.2466 7.77173 14.2467 7.77156 14.2466L7.76938 14.2455L7.76472 14.2431L7.74815 14.2344C7.73391 14.2269 7.71339 14.2161 7.687 14.2019C7.63421 14.1737 7.55791 14.1321 7.46145 14.0779C7.26858 13.9696 6.99476 13.8104 6.66691 13.6052C6.01225 13.1953 5.13695 12.5982 4.25917 11.8509C2.53423 10.3823 0.666626 8.22121 0.666626 5.67567Z"></path>
	                                      										</svg>
																			</span> 
																			<span class="infd-icon is-like"> 
																				<svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16">
											                                        <path fill="#e5503c" d="M9.333 13.605c-.328.205-.602.365-.795.473-.102.057-.205.113-.308.168h-.002c-.143.074-.313.074-.456 0-.105-.054-.208-.11-.31-.168-.193-.108-.467-.268-.795-.473-.655-.41-1.53-1.007-2.408-1.754C2.534 10.382.667 8.22.667 5.676c0-2.308 1.886-4.01 3.824-4.01 1.529 0 2.763.818 3.509 2.07.746-1.252 1.98-2.07 3.509-2.07 1.938 0 3.824 1.702 3.824 4.01 0 2.545-1.867 4.706-3.592 6.175-.878.747-1.753 1.344-2.408 1.754z"></path>
											                                      </svg>
																			</span> 
																			<span class="cd-floating__sub-button--cnt">457</span>
																		</span> 
																		<span class="cd-floating__sub-button e-share"> 
																			<span class="infd-icon"> 
																				<svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
	                                        										<path fill="#212529" fill-rule="evenodd" clip-rule="evenodd" d="M13.3334 3.66666C13.3334 4.95533 12.2887 6 11 6C10.3257 6 9.7181 5.7139 9.29211 5.25646L5.88379 7.27067C5.95923 7.50012 6.00004 7.74529 6.00004 8C6.00004 8.25469 5.95923 8.49986 5.8838 8.72932L9.29224 10.7434C9.71822 10.286 10.3257 10 11 10C12.2887 10 13.3334 11.0447 13.3334 12.3333C13.3334 13.622 12.2887 14.6667 11 14.6667C9.71138 14.6667 8.66671 13.622 8.66671 12.3333C8.66671 12.0786 8.70752 11.8335 8.78296 11.604L5.37452 9.58992C4.94854 10.0473 4.34103 10.3333 3.66671 10.3333C2.37804 10.3333 1.33337 9.28866 1.33337 8C1.33337 6.71133 2.37804 5.66666 3.66671 5.66666C4.34102 5.66666 4.94853 5.9527 5.37452 6.41007L8.78295 4.39599L8.78321 4.39678C8.70761 4.1671 8.66671 3.92166 8.66671 3.66666C8.66671 2.378 9.71138 1.33333 11 1.33333C12.2887 1.33333 13.3334 2.378 13.3334 3.66666ZM12.3334 3.66666C12.3334 4.40304 11.7364 4.99999 11 4.99999C10.2637 4.99999 9.66671 4.40304 9.66671 3.66666C9.66671 2.93028 10.2637 2.33333 11 2.33333C11.7364 2.33333 12.3334 2.93028 12.3334 3.66666ZM3.66671 9.33333C4.40309 9.33333 5.00004 8.73637 5.00004 8C5.00004 7.26362 4.40309 6.66666 3.66671 6.66666C2.93033 6.66666 2.33337 7.26362 2.33337 8C2.33337 8.73637 2.93033 9.33333 3.66671 9.33333ZM12.3334 12.3333C12.3334 13.0697 11.7364 13.6667 11 13.6667C10.2637 13.6667 9.66671 13.0697 9.66671 12.3333C9.66671 11.5969 10.2637 11 11 11C11.7364 11 12.3334 11.5969 12.3334 12.3333Z"></path>
	                                      										</svg>
																			</span>공유
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</aside>
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

	</main>
	<!-- End #main -->

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
	let btn_signUp = document.querySelector('.signUp');
	let btn_login = document.querySelector('.login');
	let btn_goWriting = document.querySelector('.goWriting');
	let btn_updatingCourse = document.querySelector('.updatingCourse');
	let btn_description = document.querySelector(".description");
	let btn_studentReview = document.querySelector(".studentReview");
	let showDescrioption = document.querySelector(".description_on");
	let showReviewArea = document.querySelector(".reviewArea");
	let btn_enroll = document.querySelector("e-enrol");

// 	btn_signUp.addEventListener("click", function() {
// 		alert('1');
// 	});
// 	btn_login.addEventListener("click", function() {
// 		alert('1');
// 	});
	
	btn_description.addEventListener("click", function() {
		
		showReviewArea.classList.add("contentsOn");
		showDescrioption.classList.remove("contentsOn");
		
	});
	btn_studentReview.addEventListener("click", function() {
		
		showDescrioption.classList.add('contentsOn');
		showReviewArea.classList.remove("contentsOn");
	});
	
	
// 	btn_goWriting.addEventListener("click", function() {
// 		let writing_review = document.querySelector('.writingArea');
// 		let noAnswer = document.querySelector('.noAnswer');
// 		let btn_review_post = document.querySelector('.review_post');
		
// 		writing_review.classList.remove('on');
// 		btn_review_post.classList.remove('on');
// 		noAnswer.classList.add('on');
		
// 		btn_review_post.addEventListener("click", function() {
// 			alert('1');
// 		});
		
// 	});
	btn_updatingCourse.addEventListener("click", function() {
		location.href = 'goCourseForUpdating.do?course_id=' + ${course.course_id};
	});
	
	btn_enroll.addEventListener("click", function () {
		alert('강좌 신청');
		/* 학생의 정보와 이 강좌의 정보를 같이 보내야함 */
	
	});
	
	
</script>
</html>