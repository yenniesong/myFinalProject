<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	HttpSession cSession = request.getSession();

	int bootcamp_id = (Integer) cSession.getAttribute("bootcamp_id");
	String bootcamp_name = (String) cSession.getAttribute("bootcamp_name");
	
	String userId = (String)cSession.getAttribute("userId");
	String userName = (String)cSession.getAttribute("name");	/* 학원은 학원 명, 학생은 학생 명, 기업은 기업 명을 가져와야함 */
	String loginFG = (String)cSession.getAttribute("loginFG");
	String academy = (String)cSession.getAttribute("academy");
	
	System.out.println("userId : " + userId);
	System.out.println("userName : " + userName);
	System.out.println("loginFG : " + loginFG);
	System.out.println("academy : " + academy);
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

<style>
aside {
	position: -webkit-sticky;
	position: fixed;
	bottom: 2px;
	margin: 0px;
	border: 1px solid;
	width: 53.2%;
	background: white;
	border-radius: 6px;
	height: 68px;
	z-index: 9999;
}

.cd-floating__price--top {
	display: flex;
	gap: 40px;
	align-items: center;
}

.cd-floating__card--top {
	display: flex;
	justify-content: space-between;
	margin: 0px 20px;
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
/* 	position: relative; */
	display: flex;
	overflow: hidden;
	border-radius: 10px;
	margin-bottom: 2px;
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
	justify-content: center;
}

h4.jsx-644785032>span.jsx-644785032 {
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	padding: 0px 5px;
}

.writingReview-item.jsx-644785032 {
    padding: 24px 32px 32px;
    width: 100%;
    cursor: pointer;
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
	bottom: 0px;
	margin: auto;
	border: 1px solid;
	width: 100%;
	background: #1dc078;
	border-radius: 6px;
	/* margin: 0 34px 20px auto; */
	/* margin: 20px; */
}

.container.jsx-4119538605 {
	display: flex;
	flex-direction: column;
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
	/* 	margin-right: 10px; */
}

.flex-half.jsx-4119538605 {
	/* 	width: 50%; */
	
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

.fname_en {
	width: 460px;
	height: 386px;
}

.clickTheB {
	background-color: #1dc078;
	color: #ffffff;
}

.on {
    	display: none !important;
}
.rating {
	position: relative;
/*         width: 180px; */
	background: transparent;
	display: flex;
/* 	justify-content: center; */
	align-items: center;
	gap: .3em;
	padding: 5px;
	overflow: hidden;
	margin-top: 3px;
}
.rating__result {
    position: absolute;
    top: 0;
    left: 0;
    transform: translateY(-10px) translateX(-5px);
    z-index: -9;
    font: 3em Arial, Helvetica, sans-serif;
    color: #ebebeb8e;
    pointer-events: none;
}

.rating__star {
    font-size: 1.3em;
    cursor: pointer;
    color: #dabd18b2;
    transition: filter linear .3s;
}

.rating__star:hover {
   	filter: drop-shadow(1px 1px 4px gold);
}	
.popup_on {
	display: none;
}

.contentsOn {
	display: none;
}

.input-group {
	margin-top: 12px;
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
    justify-content: space-between;
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
	color: #1dc078;
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
	border: 1px solid rgb(238, 239, 244);
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
/* 	height: 352px; */
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

/* @media ( min-width :800px) { */
/* 	.real-time-evaluation.jsx-2255129348 { */
/* 		width: 260px !important; */
/* 	} */
/* } */
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
/* 	color: rgb(102, 102, 102); */
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
/* 	border-bottom: 1px solid rgb(236, 236, 236); */
	justify-content: center;
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

.review-item.jsx-644785032, .reviewItem{
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
/* 	display: flex; */
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
<style id="__jsx-2007872434">
  .star.jsx-2007872434 {
    float: left;
    width: 22px;
    height: 22px;
    overflow: hidden;
    margin-right: 4px;
    background-size: cover;
  }

  .star-0.jsx-2007872434 {
    background-image: url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_page/icon_page_star01_off.png);
  }

  .star-1.jsx-2007872434 {
    background-image: url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_page/icon_page_star01_half.png);
  }

  .star-2.jsx-2007872434 {
    background-image: url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_page/icon_page_star01_on.png);
  }
</style>

</head>
<body>
	<!-- ======= Header ======= -->
	<%@include file="../includes/header.jsp" %>
	<!-- End Header -->

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
													<img class="fname_en" alt="#" src="${path}/resources/upload/${course.fname_en}"> 
													<input type="hidden" name="course_name" value="${course.course_name }"> 
													<input type="hidden" name="bootcamp_id" value="${course.bootcamp_id }"> 
													<input type="hidden" name="position_id" value="${course.position_id }"> 
													<input type="hidden" name="position" value="${course.position }">
													<input type="hidden" name="userId" value="${course.userId }">
												</div>
											</div>
										</div>

										<div class="jsx-216214598 flex-right">
											<c:choose>
												<c:when test="${loginFG == 'b' }">
													  <c:if test="${course.userId eq userId }">
													  
														<div class="jsx-216214598 title">
															<button class="jsx-3857673807 btn-evaluation updatingCourse" type="button">
																수정하기 
																<img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_page/icon_writing01.png" alt="" class="jsx-216214598">
															</button>
															<button class="jsx-3857673807 btn-evaluation deleteCourse" data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="submit" style="margin-left: 10px; padding: 0px 10px;">
																	<img src="${path}/resources/imgs/xmark.png" alt="" class="jsx-216214598" style="margin-right: 2px;">
															</button>
														</div>
														
														<form action="deleteCourse.do" method="post">
															<!-- Modal -->
															<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
															  <div class="modal-dialog">
															    <div class="modal-content">
															      <div class="modal-header">
															        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
															        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
															      </div>
															      <div class="modal-body">
															        	해당 강좌를 삭제하시겠습니까?
															      </div>
															      <input type="hidden" name="course_id" value="${course.course_id }">
															      <div class="modal-footer">
															        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
															        <button type="submit" class="btn btn-primary">삭제</button>
															      </div>
															    </div>
															  </div>
															</div>
		
														</form>
			
														<!-- 상세 페이지의 간단 설명 부분 -->
													  </c:if>
												</c:when>
											</c:choose>
											
											<div class="jsx-2255129348 real-time-evaluation">
												<div class="jsx-2255129348 scroll-box">
													<ul class="jsx-2255129348" style="padding: 0px;">
														<li class="jsx-2255129348" style="padding-bottom: 10px;">
															<h1 style="font-size: 26px; font-weight: 700; letter-spacing: -.3px;">
							                            		<span class="jsx-2255129348">C KEYWORD</span>
							                            	</h1>
														</li>
														<li class="jsx-3839070939 tutor">
															<div class="jsx-3839070939 board-item">
<!-- 																<div class="jsx-3839070939 title"> -->
<%-- 																	<span class="jsx-1434886323">${course.star_point }</span> --%>
<!-- 																</div> -->
																<div class="jsx-1020960270 rating" style="display: flex;">
											                      <div class="jsx-2007872434 stars">
											                        <div class="jsx-2007872434 star star-2"></div>
											                      </div>
											                      <span class="jsx-1020960270 score">
											                        <span class="jsx-1020960270">${course.star_point }</span> 
											                        / 5
											                      </span>
											                    </div>
															</div>
														</li>
														<li class="jsx-2255129348 horizontal-rule"></li>
														<li class="jsx-1434886323 ">
															<div class="jsx-1434886323 board-item">
																<div class="jsx-1434886323 title">
																	<span class="jsx-1434886323 cBootcampName">${course.bootcamp_name }</span>
																</div>
															</div>
														</li>
														<li class="jsx-2255129348 horizontal-rule"></li>
														<li class="jsx-1434886323 ">
															<div class="jsx-1434886323 board-item">
																<div class="jsx-1434886323 title">
																	<span class="jsx-3839070939">${course.course_name }</span>
																</div>
															</div>
														</li>
														<li class="jsx-2255129348 horizontal-rule"></li>
														<li class="jsx-1434886323 ">
															<div class="jsx-1434886323 board-item">
																<div class="jsx-1434886323 title">
																	<input type="hidden" name="teacher_id" value="${course.teacher_id }">
																	<span class="jsx-3839070939">${course.teacher_name } 선생님</span>
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
															<ul class="jsx-1546215327" style="padding-left: 0px;">
																<li class="jsx-1546215327 ">
																	<button class="jsx-1546215327 description clickTheB">강의 설명</button>
																</li>
																<li class="jsx-1546215327 ">
																	<!-- 여기가 눌리면 on 추가 -->
																	<button class="jsx-1546215327 studentReview">수강생 리뷰</button>
																</li>
															</ul>

															<div class="jsx-1546215327 content">
																<div title="강사리뷰" class="jsx-4149508951">
																	<!-- 수강생 리뷰 -->
																	<c:choose>
																	
																		
																		<c:when test="${not empty cRList }">
																			<div class="reviewArea contentsOn">
<%-- 																			<c:if test="${empty userId }"></c:if><!-- 만약에 로그인 세션이 없다면 아래 로그인 팝업 on 제거하기 --> --%>
																			<c:forEach items="${cRList }" var="cReview">
																			<input type="hidden" class="cListData" value="${cRList }"/>
																				<!-- 후기 내용이 들어가는 부분 (바뀌어야하는 부분) -->
																				<div class="jsx-4149508951 review-box" style="border: 1px solid rgb(223, 223, 223); margin: 5px;">
																					<div class="jsx-644785032 review-item">
																						<div class="jsx-644785032 ">
																							<div class="jsx-644785032 info" style="border-bottom : 1px solid rgb(236, 236, 236);">
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

																						<div class="jsx-644785032 reviewContent" style="padding: 8px 0px;">
																							<h4 class="jsx-644785032">
																								“ <span class="jsx-644785032">${cReview.content }</span> ”
																							</h4>
																						</div>

																					</div>
																				</div>
																			</c:forEach>
																			
																			<div class="jsx-4149508951 reviewBtn">
																				<div class="jsx-644785032 reviewItem">
																					<div class="jsx-644785032 title writingArea">
																						<div class="jsx-644785032 info info1" style="display: block; text-align: center; border-bottom: none;">
																							<c:if test="${loginFG == 'm'}">
																								<span class="jsx-644785032 btnWritingReview"><a href="#">후기 작성하기</a></span>
																							</c:if>
																						 </div>
																					</div>
																				</div>
																			</div>
																			</div>
																		</c:when>

																		<c:otherwise>
																		<div class="reviewArea contentsOn">

																			<!-- 후기가 없을때 -->
																			<div class="jsx-4149508951 review-box">
																				<div class="jsx-644785032 review-item noAnswer">
																					<div class="jsx-644785032 title">
																					  
																						<h4 class="jsx-644785032">
																							<span class="jsx-644785032">아직 후기가 없어요</span>
																						</h4>
																					</div>
																					<div class="jsx-644785032 btnWritingArea">
																						<div class="jsx-644785032 info">
																							<c:if test="${loginFG == 'm'}">
																								<span class="jsx-644785032 btnWritingReview"><a href="#">후기 작성하기</a></span>
																							</c:if>
																						</div>
																					</div>
																				</div>
																			</div>
																			</div>
																		</c:otherwise>
																	</c:choose>
																	</div>
																	
																	<div title="강의설명" class="jsx-4149508951 description_on">
																		<div class="jsx-4149508951 transfer-box">
																			<div class="jsx-2891290942 null-set-box">
																				<span>${course.description }</span>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- 하단 장바구니 버튼 -->
											<aside class="cd-floating">
	                                            <div class="cd-floating__container e-floating-wrapper">
	                                                <div class="cd-floating__card e-cd-floating-card" style="margin: 10px;">
	                                                    <div class="cd-floating__card--top">
	                                                        <div class="cd-floating__price cd-floating__price--installment" >
	                                                            <div class="cd-floating__price--top">
	                                                                <span class="cd-price__pay-price">${course.price }원</span>
	                                                                <span style="font-weight: bold;
	                                                                margin-top: 0px;
	                                                                font-size: 35px;
	                                                                ">전액 무료</span>
	                                                                <span class="cd-price__ment">5개월 할부 시</span>
	                                                            </div>
	                                                        </div>
	                                                        <div class="cd-floating__buttons">
	                                                            <button class="ac-button is-lg is-solid is-primary floating__main-button e-enrol btn_enroll" data-type="cart">수강신청 하기</button>
	                                                            <button class="ac-button is-lg is-outlined is-gray floating__main-button e-add-cart " data-type="add-cart">바구니에 담기</button>
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
		</section>
		
		<!-- 로그인 하지 않았다면 로그인 팝업창 뜨게 하기 -->
		<!-- 로그인이 안되어있을 경우 뜨는 팝업 -->
		<div class="jsx-4149508951 auth-popup popup_on">
			<div class="jsx-133251687 content">
				<h5 class="jsx-133251687">로그인하고 전체보기</h5>
				<div class="jsx-133251687 btn-box">
					<div class="jsx-133251687 btn-join">
						<button type="button" class="jsx-520855050 joinBtn">회원가입</button>
					</div>
					<div class="jsx-133251687 btn-login">
						<button type="button" class="jsx-1487464557 loginBtn">로그인</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 댓글 창 -->
		<div class="jsx-644785032 writingReview-item on">
			<div class="jsx-644785032 title">
				<div class="jsx-644785032 info">
					<div class="jsx-644785032">
						<div class="jsx-1397353033 avatar">
							<div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);"></div>
						</div>
					</div>
					<span class="jsx-644785032 nickname">${userId }</span>
					<input type="hidden" name="userId" value="${userId }">
				</div> 
				
				<!-- 				해당 수강생이 답글 작성하기 눌렀을 때 -->
				<div class="adminArea mb-3">
					<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="답글 쓰기" aria-label="Recipient's username" aria-describedby="button-addon2">
						
					<div class="adminArea showWritingInput" style="border: 1px solid #ced4da;">
						<div>
							<div class="rating starPoint">
								<span class="rating__result"></span> 
								<i class="rating__star far fa-star"></i>
								<i class="rating__star far fa-star"></i>
								<i class="rating__star far fa-star"></i>
								<i class="rating__star far fa-star"></i>
								<i class="rating__star far fa-star"></i>
							</div>
							<input type="hidden" name="star_pint" class="star_pint" value="">
						</div>
					</div>
						
					<button class="btn btn-outline-secondary gap-2 col-2 mx-auto review_post" type="button" id="button-addon2">작성</button>
					</div>
				</div>
			</div>
		</div>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<%@include file="../includes/footer.jsp" %>
	<!-- End Footer -->
	
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

	let btnWritingReview = document.querySelectorAll('.btnWritingReview a');
	console.log("btnWritingReview : " + btnWritingReview);
	
	var cListInput = document.querySelector('.cListData');
	
	for (var i = 0; i < btnWritingReview.length; i++) {
		btnWritingReview[i].addEventListener("click", function() {
			alert("후기 작성하기 버튼 활성화!");
			
			let thisBootCamp = document.querySelector('.cBootcampName').innerText;
			let userAcademy = '<%=academy%>';
			console.log("thisBootCamp : " + thisBootCamp);
			console.log("userAcademy : " + userAcademy);
			let clickTheBtn = 0;
			
			if (thisBootCamp != userAcademy) {
				alert('우리 학원생 아닌데 너 뉘기야');
			} else {
				alert('큼 ㅋ 우리 학원생 이내요 ㅋ');
				
				if (cListInput) {
				    var cList = cListInput.value;
				    var cListSize = cList.length;
				    console.log("no null have review"); // 리뷰가 있을때
				    
				    clickTheBtn++;
				    
				    counting(clickTheBtn);
				    
				    
				} else {
				    console.log("yes null have no review"); // 리뷰 없을때
				    
					let originalDiv = document.querySelector('.review-item');
					let showDiv = document.querySelector('.writingReview-item');
					
					originalDiv.style.display = 'none';		
					
					showDiv.classList.remove('on');
		            originalDiv.parentNode.insertBefore(showDiv, originalDiv.nextSibling);
				}
			}
		})
	}
	
	function counting(cnt) {
		alert('counting 메소드 활성화');
		
		console.log("cnt : " + cnt);
		
		if (cnt > 0) {
			let originalDiv = document.querySelector('.reviewBtn');
			let originalItemDiv = document.querySelector('.reviewItem');
			let showDiv = document.querySelector('.writingReview-item');
			let offTheBtn = document.querySelector('.btnWritingReview');
			
			originalItemDiv.style.display = 'none';		
			
			showDiv.classList.remove('on');
			offTheBtn.style.display = 'none';		
			originalDiv.insertAdjacentElement('afterend', showDiv);
		}
		
	}
	
	// 벌점 기능 구현
	const ratingStars = [...document.getElementsByClassName("rating__star")];
    const ratingResult = document.querySelector(".rating__result");

    printRatingResult(ratingResult);

    function executeRating(stars, result) {
        const starClassActive = "rating__star fas fa-star";
        const starClassUnactive = "rating__star far fa-star";
        const starsLength = stars.length;
        let i;
        stars.map((star) => {
            star.onclick = () => {  
                i = stars.indexOf(star);

                if (star.className.indexOf(starClassUnactive) !== -1) {
                    printRatingResult(result, i + 1);
                    for (i; i >= 0; --i) stars[i].className = starClassActive;
                } else {
                    printRatingResult(result, i);
                    for (i; i < starsLength; ++i) stars[i].className = starClassUnactive;
                }
            };
        });
    }; 

    function printRatingResult(result, num = 0) {
//         result.textContent = `${num}/5`;
		console.log("별점 : " + num);
        $(".review_post").data("star-point", num);
        
        
        // form 태그 안에 해당 value 값 추가해주기
        $('input[name=star_point]').attr('value', num);
    };

    executeRating(ratingStars, ratingResult);
    
 // 리뷰 작성 버튼 
	$(function() {
		$(".review_post").click(function() {
			// 가져가야할 데이터 : userId, teacher_id, name, content, star_point
			alert("리뷰 작성");
		
			let userId = '<%=userId%>';
			let name = '<%=userName%>';
			let courseId = '${course.course_id }';
			console.log("userId : " + userId);
			console.log("name : " + name);
			console.log("courseId : " + courseId);
			let content =  document.querySelector(".form-control").value;
			console.log("content : " + content);
			let starPoint = $(".review_post").data("star-point");
			console.log("starPoint : " + starPoint);
					
			let review = {
					"userId": userId
				    , "name": name
					, "course_id" : courseId
					, "content" : content
					, "star_point" : starPoint
			};
				
			$.ajax({
				url : "writingReview.do",
				type: "POST",
				data: review,
				dataType: "Text", 
				/* String으로 쓸거면 text, json으로 할 거면 map으로 변경*/
				success : function (json) {
					console.log("json : " + json);
					alert("리뷰가 등록되었어요!");
					
					location.href='getCourse.do?course_id=' + courseId;
				},
				error: function () {
					alert("실패");
					
				}
			});
		});
	});
 
	let btn_description = document.querySelector(".description");
	let btn_studentReview = document.querySelector(".studentReview");
	let showDescrioption = document.querySelector(".description_on");
	let showReviewArea = document.querySelector(".reviewArea");
	
	btn_description.addEventListener("click", function() {
		
		alert("강의 설명 보기 버튼");
		
		/* 상단 색 css 추가 */
		btn_description.classList.add('clickTheB');
		btn_studentReview.classList.remove("clickTheB");
		
		showReviewArea.classList.add("contentsOn");
		showDescrioption.classList.remove("contentsOn");
		
	});
	btn_studentReview.addEventListener("click", function() {
		
		alert("리뷰 보기 버튼");
		
		/* 상단 색 css 추가 */
		btn_studentReview.classList.add('clickTheB');
		btn_description.classList.remove("clickTheB");
		
		showDescrioption.classList.add('contentsOn');
		showReviewArea.classList.remove("contentsOn");
	});
	
	let btn_enroll = document.querySelector("e-enrol");
	$(function() {
		let loginUser = "<%= userId %>"; 
		$(".btn_enroll").click(function() {
// 			가져가야할 데이터 : userId, name, teacher_id, teacher_name, course_id, course_name, bootcamp_id, bootcamp_name
			alert("수강신청하기 버튼 활성화");
			alert("loginUser : " + loginUser);
		
			if (loginUser === null) {
				alert("loginUser is null!");
				$(".auth-popup").removeClass("popup_on");
				
			} else {

				let userId = '<%=userId%>';
				let name = '<%=userName%>';
				let bootcampName = '${course.bootcamp_name }';
				let teacherId = '${course.teacher_id }';
				let teacherName = '${course.teacher_name}';
				let courseId = '${course.course_id}';
				let courseName = '${course.course_name }';
				
				let data2 = {
						"userId": userId
					    , "name": name
						, "bootcamp_name" : bootcampName
						, "teacher_id" : teacherId
						, "teacher_name" : teacherName
						, "course_id" : courseId
						, "course_name" : courseName
				};
				
				$.ajax({
					url : "/enrollment/insertEnrollment.do",
					type: "POST",
					data: data2,
					dataType: "text", 
					/* String으로 쓸거면 text, json으로 할 거면 map으로 변경*/
					success : function (json) {
						console.log("수강신청 결과 : " + json);
						if (json == 0) {
							alert('선생님의 강좌가 아직 열리지 않았어요!');
						} else if (json > 0) {
							alert('이미 신청되었어요!');
						} else {
							alert("수강신청이 완료되었어요!");
						}
					},
					Error: function () {
						alert("실패");
					}
				});
			}
		});
	});
	
	let btn_join = document.querySelector(".joinBtn");
	let btn_login = document.querySelector(".loginBtn");
	
	btn_join.addEventListener("click", function() {
		alert("회원가입 버튼 활성화");
		location.href='/member/join.do';
	});
	
	btn_login.addEventListener("click", function() {
		
		alert("로그인 버튼 활성화");
		location.href='/member/login.do';
	});
	
	let btn_updatingCourse = document.querySelector('.updatingCourse');
	
	btn_updatingCourse.addEventListener("click", function() {
		location.href = 'goCourseForUpdating.do?course_id=' + ${course.course_id};
	});
	
</script>
</html>