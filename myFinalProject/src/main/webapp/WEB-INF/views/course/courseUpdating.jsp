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
<title>course - update</title>
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
	
	        <!-- content 내부 title -->
	        <div class="jsx-3810764099 board-box">
	          <div class="jsx-2656936329 content-box">
	            <div class="jsx-2656936329 card-box"> 
	              <div class="jsx-1629185219 title mb-3">
	                <h4 class="jsx-1629185219">COURSE</h4>
	                <p class="jsx-1629185219">
	                  어떤 수업이 나와 잘 맞는 과정일까?
	                </p>
	              </div>
	
	              
	              <!-- content 메인 카드(상단) -->
	              <div class="jsx-3239872667 main-card">
	      
	                <!-- 안 내용 -->
	                <div class="jsx-216214598 content">
	      
	                  <!-- 상세 페이지의 이미지 들어가는 부분 -->
	                  <div class="jsx-216214598 flex-left">
	                    <div class="jsx-216214598 profile">
	                      <span class="jsx-216214598 rank">랭킹외</span>
	                      <div class="jsx-216214598 tutor-image" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=480&amp;f=webp&quot;);"></div>
	                    </div>
	                  </div>
	      
	                  <div class="jsx-216214598 flex-right">
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
	                                <h4 class="jsx-3839070939">강의명 샬라샬라</h4>
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
	                                <h4 class="jsx-1434886323">학원이름</h4>
	                              </div>
	                            </div>
	                          </li>
	                          <li class="jsx-2255129348 horizontal-rule"></li>
	                          <li class="jsx-2255129348">
	                            <h4 class="jsx-2255129348">가격</h4>
	                          </li>
	                          <li class="jsx-1434886323 ">
	                            <div class="jsx-1434886323 board-item">
	                              <div class="jsx-1434886323 title">
	                                <h4 class="jsx-1434886323">얼마</h4>
	                              </div>
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
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> -->
<!-- Vendor JS Files -->
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</html>