<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	HttpSession cSession = request.getSession();

int company_id = (Integer) cSession.getAttribute("company_id");
String company_name = (String) cSession.getAttribute("company_name");

String userId = (String) cSession.getAttribute("userId");
String userName = (String) cSession.getAttribute("name"); /* 학원은 학원 명, 학생은 학생 명, 기업은 기업 명을 가져와야함 */
String loginFG = (String) cSession.getAttribute("loginFG");

System.out.println("userId : " + userId);
System.out.println("userName : " + userName);
System.out.println("loginFG : " + loginFG);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET A JOB!</title>

<!-- 부트스트랩 CSS 링크 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">


<!-- Favicons -->
<link href="${path}/resources/assets/img/favicon.png" rel="icon">
<link href="${path}/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- sweet alert-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

<!-- Vendor CSS Files -->
<link href="${path}/resources/assets/vendor/aos/aos.css"
	rel="stylesheet">
<link
	href="${path}/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="${path}/resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="${path}/resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="${path}/resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link
	href="${path}/resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${path}/resources/css/style.css" rel="stylesheet">

<style>
/*페이지 마진 / 패딩*/
* {
	padding: 10px;
}

*:hover {
	cursor: pointer;
}

/*페이지 타이틀*/
#title {
	font-size: xx-large;
	font-weight: 800;
	color: #719a60;
	text-align: center;
}

#under-line {
	width: 50%;
	color: #afb3ae;
}

/*hire type link text*/
#hire-type {
	display: flex;
	flex-basis: 100%;
	align-items: center;
	color: #afb3ae;
	font-size: medium;
	margin: 8px 0px;
}

#hire-type::before {
	content: "";
	flex-grow: 0.2;
	margin: 0px 16px;
	background: rgba(0, 0, 0, .1);;
	height: 1px;
	font-size: 0px;
	line-height: 0px;
}

#hire-type::after {
	content: "";
	flex-grow: 0.8;
	margin: 0px 16px;
	background: rgba(0, 0, 0, .1);;
	height: 1px;
	font-size: 0px;
	line-height: 0px;
}

/*info box*/
/*a tag*/
a:link {
	color: rgba(0, 0, 0, .3);
	text-decoration: none;
}

a:visited {
	color: rgba(0, 0, 0, .3);
	text-decoration: none;
}

a:hover {
	color: #719a60;
	text-decoration: none;
}

a:active {
	color: #719a60;
	text-decoration: none;
}

/*ad title*/
#ad-title {
	font-weight: 600;
	font-size: xx-large;
	color: #719a60;
}

/*share btn*/
.bi-box-arrow-up {
	font-weight: 500;
	font-size: xx-large;
	color: #afb3ae;
}

.bi-box-arrow-up:hover {
	cursor: pointer;
	color: #719a60;
}

/*share toast message*/
#toast {
	position: fixed;
	bottom: 30px;
	left: 50%;
	padding: 15px 20px;
	transform: translate(-50%, 10px);
	border-radius: 30px;
	overflow: hidden;
	font-size: .8rem;
	opacity: 0;
	visibility: hidden;
	transition: opacity .5s, visibility .5s, transform .5s;
	background: rgba(0, 0, 0, .35);
	color: #fff;
	z-index: 10000;
}

#toast.reveal {
	opacity: 1;
	visibility: visible;
	transform: translate(-50%, 0)
}

/*company logo section*/
.company_logo {
	position: relative;
	width: 300px;
	height: 200px;
	padding: 20px 0px;
	background-color: rgb(238, 239, 244);
	margin-bottom: 16px;
}

.company_logo_img {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-position: center bottom;
	background-size: contain;
	display: flex;
	align-items: center;
}

/*company info*/
.company_info_box {
	font-size: medium;
	font-weight: 500;
}

/*update / delete btn*/
.update-btn {
	border: 1px solid #719a60;
	background-color: #fff;
	border-radius: 100px;
	text-align: center;
	color: #719a60;
}

.delete-btn {
	border: 1px solid #fff;
	background-color: #719a60;
	border-radius: 100px;
	text-align: center;
	color: #fff;
}

/*modal button*/
.btn-close {
	border: 1px solid #719a60;
	background-color: #fff;
	border-radius: 100px;
	text-align: center;
	color: #719a60;
	width: 100px;
}

.btn-check {
	border: 1px solid #fff;
	background-color: #719a60;
	border-radius: 100px;
	text-align: center;
	color: #fff;
	width: 100px;
}

/*modal text*/
/*title*/
.modal-title {
	font-size: large;
	font-weight: 500;
	color: #719a60;
}

.modal-backdrop.in {
	background: rgba(0, 0, 0, 0.5);
}

/*text*/
#modal-text {
	text-align: justify;
}

/*svg / text for summary box*/
#svg-for-sum {
	color: #afb3ae;
}

#text-for-sum {
	color: rgb(105, 105, 105);
}

/*apply, scrap btn*/
.scrap-btn {
	border: 1px solid #719a60;
	background-color: #fff;
	border-radius: 100px;
	text-align: center;
	color: #719a60;
}

.apply-btn {
	border: 1px solid #fff;
	background-color: #719a60;
	border-radius: 100px;
	text-align: center;
	color: #fff;
}

/*button*/
button:focus {
	outline: none;
}

/*detail box*/
#detail-box {
	text-align: center;
}

#detail-title {
	color: #afb3ae;
	padding-bottom: 20px;
}

.col-3 .detail {
	border-bottom: 1px solid #afb3ae;
	margin: 10px;
}

/*contact box*/
#contact-box {
	color: #afb3ae;
	text-align: center;
}

/* Small screens (up to 600px) */
@media ( max-width : 600px) {
	/* 페이지 마진 / 패딩 */
	* {
		padding: 5px;
	}

	/* 페이지 타이틀 */
	#title {
		font-size: large;
	}

	/* hire type link text */
	#hire-type {
		font-size: small;
	}
	#hire-type::before {
		content: "";
		flex-grow: 0.2;
		margin: 0px 16px;
		background: rgba(0, 0, 0, .1);;
		height: 1px;
		font-size: 0px;
		line-height: 0px;
	}
	#hire-type::after {
		content: "";
		flex-grow: 0.8;
		margin: 0px 16px;
		background: rgba(0, 0, 0, .1);;
		height: 1px;
		font-size: 0px;
		line-height: 0px;
	}

	/*info box*/
	/*a tag*/
	a:link {
		color: rgba(0, 0, 0, .3);
		text-decoration: none;
	}
	a:visited {
		color: rgba(0, 0, 0, .3);
		text-decoration: none;
	}
	a:hover {
		color: #719a60;
		text-decoration: none;
	}
	a:active {
		color: #719a60;
		text-decoration: none;
	}

	/*ad title*/
	#ad-title {
		font-weight: 600;
		font-size: xx-large;
		color: #719a60;
	}

	/*share btn*/
	.bi-box-arrow-up {
		font-weight: 500;
		font-size: xx-large;
		color: #afb3ae;
	}
	.bi-box-arrow-up:hover {
		cursor: pointer;
		color: #719a60;
	}

	/*share toast message*/
	#toast {
		position: fixed;
		bottom: 30px;
		left: 50%;
		padding: 15px 20px;
		transform: translate(-50%, 10px);
		border-radius: 30px;
		overflow: hidden;
		font-size: .8rem;
		opacity: 0;
		visibility: hidden;
		transition: opacity .5s, visibility .5s, transform .5s;
		background: rgba(0, 0, 0, .35);
		color: #fff;
		z-index: 10000;
	}
	#toast.reveal {
		opacity: 1;
		visibility: visible;
		transform: translate(-50%, 0)
	}

	/*company logo section*/
	.company_logo {
		position: relative;
		width: 300px;
		height: 200px;
		padding: 20px 0px;
		background-color: rgb(238, 239, 244);
		margin-bottom: 16px;
	}
	.company_logo_img {
		width: 100%;
		height: 100%;
		background-repeat: no-repeat;
		background-position: center bottom;
		background-size: contain;
		display: flex;
		align-items: center;
	}

	/*company info*/
	.company_info_box {
		font-size: medium;
		font-weight: 500;
	}

	/*update / delete btn*/
	.update-btn {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
	}
	.delete-btn {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
	}

	/*modal button*/
	.btn-close {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
		width: 100px;
	}
	.btn-check {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
		width: 100px;
	}

	/*modal text*/
	/*title*/
	.modal-title {
		font-size: large;
		font-weight: 500;
		color: #719a60;
	}

	/*text*/
	#modal-text {
		text-align: justify;
	}

	/*svg / text for summary box*/
	#svg-for-sum {
		color: #afb3ae;
	}
	#text-for-sum {
		color: rgb(105, 105, 105);
	}

	/*apply, scrap btn*/
	.scrap-btn {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
	}
	.apply-btn {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
	}

	/*button*/
	button:focus {
		outline: none;
	}

	/*detail box*/
	#detail-box {
		text-align: center;
	}
	#detail-title {
		color: #afb3ae;
	}
	.col-3 .detail {
		border-bottom: 1px solid #afb3ae;
		margin: 10px;
	}

	/*contact box*/
	#contact-box {
		color: #afb3ae;
		text-align: center;
	}
	#manager_name:hover {
		cursor: pointer;
		color: #719a60;
	}
	#contact_email:hover {
		cursor: pointer;
		color: #719a60;
	}
}

/* Medium screens (601px to 900px) */
@media ( min-width : 601px) and (max-width: 900px) {
	/* 페이지 마진 / 패딩 */
	* {
		padding: 5px;
	}

	/* 페이지 타이틀 */
	#title {
		font-size: large;
	}

	/* hire type link text */
	#hire-type {
		font-size: small;
	}
	#hire-type::before {
		content: "";
		flex-grow: 0.2;
		margin: 0px 16px;
		background: rgba(0, 0, 0, .1);;
		height: 1px;
		font-size: 0px;
		line-height: 0px;
	}
	#hire-type::after {
		content: "";
		flex-grow: 0.8;
		margin: 0px 16px;
		background: rgba(0, 0, 0, .1);;
		height: 1px;
		font-size: 0px;
		line-height: 0px;
	}

	/*info box*/
	/*a tag*/
	a:link {
		color: rgba(0, 0, 0, .3);
		text-decoration: none;
	}
	a:visited {
		color: rgba(0, 0, 0, .3);
		text-decoration: none;
	}
	a:hover {
		color: #719a60;
		text-decoration: none;
	}
	a:active {
		color: #719a60;
		text-decoration: none;
	}

	/*ad title*/
	#ad-title {
		font-weight: 600;
		font-size: xx-large;
		color: #719a60;
	}

	/*share btn*/
	.bi-box-arrow-up {
		font-weight: 500;
		font-size: xx-large;
		color: #afb3ae;
	}
	.bi-box-arrow-up:hover {
		cursor: pointer;
		color: #719a60;
	}

	/*share toast message*/
	#toast {
		position: fixed;
		bottom: 30px;
		left: 50%;
		padding: 15px 20px;
		transform: translate(-50%, 10px);
		border-radius: 30px;
		overflow: hidden;
		font-size: .8rem;
		opacity: 0;
		visibility: hidden;
		transition: opacity .5s, visibility .5s, transform .5s;
		background: rgba(0, 0, 0, .35);
		color: #fff;
		z-index: 10000;
	}
	#toast.reveal {
		opacity: 1;
		visibility: visible;
		transform: translate(-50%, 0)
	}

	/*company logo section*/
	.company_logo {
		position: relative;
		width: 300px;
		height: 200px;
		padding: 20px 0px;
		background-color: rgb(238, 239, 244);
		margin-bottom: 16px;
	}
	.company_logo_img {
		width: 100%;
		height: 100%;
		background-repeat: no-repeat;
		background-position: center bottom;
		background-size: contain;
		display: flex;
		align-items: center;
	}

	/*company info*/
	.company_info_box {
		font-size: medium;
		font-weight: 500;
	}

	/*update / delete btn*/
	.update-btn {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
	}
	.delete-btn {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
	}

	/*svg / text for summary box*/
	#svg-for-sum {
		color: #afb3ae;
	}
	#text-for-sum {
		color: rgb(105, 105, 105);
	}

	/*apply, scrap btn*/
	.scrap-btn {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
	}
	.apply-btn {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
	}

	/*button*/
	button:focus {
		outline: none;
	}

	/*detail box*/
	#detail-box {
		text-align: center;
	}
	#detail-title {
		color: #afb3ae;
	}
	.col-3 .detail {
		border-bottom: 1px solid #afb3ae;
		margin: 10px;
	}

	/*contact box*/
	#contact-box {
		color: #afb3ae;
		text-align: center;
	}
	#manager_name:hover {
		cursor: pointer;
		color: #719a60;
	}
	#contact_email:hover {
		cursor: pointer;
		color: #719a60;
	}
}

/* Large screens (901px and above) */
@media ( min-width : 901px) {
	/* 페이지 마진 / 패딩 */
	* {
		padding: 20px;
	}

	/* 페이지 타이틀 */
	#title {
		font-size: xx-large;
	}

	/* hire type link text */
	#hire-type {
		font-size: large;
	}
	#hire-type::before {
		content: "";
		flex-grow: 0.2;
		margin: 0px 16px;
		background: rgba(0, 0, 0, .1);;
		height: 1px;
		font-size: 0px;
		line-height: 0px;
	}
	#hire-type::after {
		content: "";
		flex-grow: 0.8;
		margin: 0px 16px;
		background: rgba(0, 0, 0, .1);;
		height: 1px;
		font-size: 0px;
		line-height: 0px;
	}

	/*info box*/
	/*a tag*/
	a:link {
		color: rgba(0, 0, 0, .3);
		text-decoration: none;
	}
	a:visited {
		color: rgba(0, 0, 0, .3);
		text-decoration: none;
	}
	a:hover {
		color: #719a60;
		text-decoration: none;
	}
	a:active {
		color: #719a60;
		text-decoration: none;
	}

	/*ad title*/
	#ad-title {
		font-weight: 600;
		font-size: xx-large;
		color: #719a60;
	}

	/*share btn*/
	.bi-box-arrow-up {
		font-weight: 500;
		font-size: xx-large;
		color: #afb3ae;
	}
	.bi-box-arrow-up:hover {
		cursor: pointer;
		color: #719a60;
	}

	/*share toast message*/
	#toast {
		position: fixed;
		bottom: 30px;
		left: 50%;
		padding: 15px 20px;
		transform: translate(-50%, 10px);
		border-radius: 30px;
		overflow: hidden;
		font-size: .8rem;
		opacity: 0;
		visibility: hidden;
		transition: opacity .5s, visibility .5s, transform .5s;
		background: rgba(0, 0, 0, .35);
		color: #fff;
		z-index: 10000;
	}
	#toast.reveal {
		opacity: 1;
		visibility: visible;
		transform: translate(-50%, 0)
	}

	/*company logo section*/
	.company_logo {
		position: relative;
		width: 300px;
		height: 200px;
		padding: 20px 0px;
		background-color: rgb(238, 239, 244);
		margin-bottom: 16px;
	}
	.company_logo_img {
		width: 100%;
		height: 100%;
		background-repeat: no-repeat;
		background-position: center bottom;
		background-size: contain;
		display: flex;
		align-items: center;
	}

	/*company info*/
	.company_info_box {
		font-size: medium;
		font-weight: 500;
	}

	/*update / delete btn*/
	.update-btn {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
	}
	.delete-btn {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
	}

	/*modal button*/
	.btn-close {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
		width: 100px;
	}
	.btn-check {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
		width: 100px;
	}

	/*modal text*/
	/*title*/
	.modal-title {
		font-size: large;
		font-weight: 500;
		color: #719a60;
	}

	/*text*/
	#modal-text {
		text-align: justify;
	}

	/*svg / text for summary box*/
	#svg-for-sum {
		color: #afb3ae;
	}
	#text-for-sum {
		color: rgb(105, 105, 105);
	}

	/*apply, scrap btn*/
	.scrap-btn {
		border: 1px solid #719a60;
		background-color: #fff;
		border-radius: 100px;
		text-align: center;
		color: #719a60;
	}
	.apply-btn {
		border: 1px solid #fff;
		background-color: #719a60;
		border-radius: 100px;
		text-align: center;
		color: #fff;
	}

	/*button*/
	button:focus {
		outline: none;
	}

	/*detail box*/
	#detail-box {
		text-align: center;
	}
	#detail-title {
		color: #afb3ae;
	}
	.col-3 .detail {
		border-bottom: 1px solid #afb3ae;
		margin: 10px;
	}

	/*contact box*/
	#contact-box {
		color: #afb3ae;
		text-align: center;
	}
	#manager_name:hover {
		cursor: pointer;
		color: #719a60;
	}
	#contact_email:hover {
		cursor: pointer;
		color: #719a60;
	}

	/*description*/
	#decription-part {
		text-align: center;
		padding-bottom: 20px;
	}
}

/*description*/
#decription-part {
	text-align: center;
	padding-bottom: 20px;
	border-top: 1px solid #afb3ae;
	border-bottom: 1px solid #afb3ae;
}

#description {
	font-size: x-large;
	font-weight: 600;
	color: #719a60;
	border-bottom: 1px solid;
}

.text-box {
	font-size: 15px;
	line-height: 2.1;
}
</style>

</head>
<body>

	<!-- ======= Header ======= -->
	<%@include file="../includes/header.jsp"%>
	<!-- End Header -->

	<!-- ======= main ======= -->
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">

				<ol>
					<li><a href="index.html">Home</a></li>
					<li>Recruit</li>
				</ol>
				<h2>RECRUIT</h2>
			</div>
		</section>

		<section class="inner-page">
			<!-- 수정 / 삭제 버튼 -->
			<div class="container">
				<c:choose>
					<c:when test="${loginFG == 'c' }">
						<c:if test="${recruit.userId eq userId}">
							<!-- 수정 form tag 이용해 수정 버튼 클릭 후 모달에서도 확인 클릭 시  -->
							<button type="button" class="update-btn" data-bs-toggle="modal" data-bs-target="#update">
								<i class="bi bi-vector-pen"></i>수정
							</button>
							
							<!-- move to update page -->
							<script type="text/javascript">
							let btn_update = document.querySelector(".update-btn");
							btn_update.addEventListener("click",function(){
								alert("수정하기 버튼 활성화");
								alert("${recruit.ad_id}");
								location.href='getRecruitForUpdating.do?ad_id=' + ${recruit.ad_id};
							});
							</script>
							
							<!-- 삭제 -> form tag 이용해 삭제 버튼 클릭해 삭제하게 될 경우 delete page로 이동-->
							<button type="button" class="delete-btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
								<i class="bi bi-trash3"></i>삭제
							</button>
			<!-- modal for delete -->
			<form action="deleteRecruit.do" method="post">
			<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">DELETE RECRUIT</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       공고를 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <input type="hidden" name="ad_id" value="${recruit.ad_id }">
        <button type="submit" class="btn btn-primary">삭제</button>
      </div>
    </div>
  </div>
</div>
			</form>
						</c:if>
					</c:when>
				</c:choose>
			</div>




			<!-- 고용 형태 -->
			<div class="row">
				<p id="hire-type">
					<a href="#"> ${recruit.hire_type} </a>
				</p>
				<br>
				<div class="col-10">
					<!-- title -->
					<p id="ad-title">${recruit.ad_title}</p>

				</div>
				<div class="col-2">
					<!-- share : 클릭 시 현재 링크 복사-->
					<div>
						<p onclick="CopyLink(); toast('Copy Link!')">
							<i class="bi bi-box-arrow-up"></i>
						</p>
						<div id="toast"></div>
					</div>
					<script>

                    //링크 복사 메소드
                    function CopyLink() {
                        //fuction Name: CopyLink
                        //임시로 textarea 만들기
                        var dummy_text = document.createElement("textarea");
                        //현재 페이지 주소 저장하기
                        var text = location.href;
                        //문서의 마지막에 임시로 만든 textarea 추가
                        document.body.appendChild(dummy_text);
                        //저장값 = 텍스트
                        dummy_text.value = text;
                        //마지막에 추가한 부분 선택
                        dummy_text.select();
                        //복사하기
                        document.execCommand("copy");
                        //임시로 추가한 부분 삭제
                        document.body.removeChild(dummy_text);
                    }

                    function toast(string) {
                        const toast = document.getElementById("toast");

                        toast.classList.contains("reveal") ?
                            (clearTimeout(removeToast), removeToast = setTimeout(function () {
                                document.getElementById("toast").classList.remove("reveal")
                            }, 1000)) :
                            removeToast = setTimeout(function () {
                                document.getElementById("toast").classList.remove("reveal")
                            }, 1000)
                        toast.classList.add("reveal"),
                            toast.innerText = string
                    }

                </script>
				</div>
			</div>

			<div class="row">
				<div class=" col-5">
					<!-- company_logo -->
					<div class="company_logo">
						<div class="company_logo_img">
							<img class="company_logo_en" alt="#"
								src="${path}/resources/company_logo/${recruit.company_logo_en}" />
							<input type="hidden" name="company_id"
								value="${recruit.company_id}" />
						</div>
					</div>

					<!-- company ad list link -->
					<!-- company_name with link -->
					<div class="row">
						<div class="company_info_box">
							<p id="text-for-sum">
								<i class="bi bi-buildings"></i>${recruit.company_name}</p>
							<p id="text-for-sum">
								<i class="bi bi-calendar-check" id="svg-for-sum"></i>${recruit.application_deadline}</p>
							<p id="text-for-sum">
								<i class="bi bi-alarm" id="svg-for-sum"></i>d-day
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-7 col-xs-7">
					<p id="text-for-sum">
						<i class="bi bi-geo-alt" id="svg-for-sum"></i>${recruit.company_road}</p>
					<p id="text-for-sum">
						<i class="bi bi-code-slash" id="svg-for-sum"></i>${recruit.programming_languages}</p>
					<p id="text-for-sum">
						<i class="bi bi-coin" id="svg-for-sum"></i>${recruit.job_salary}</p>
					<p id="text-for-sum">
						<i class="bi bi-check2-circle" id="svg-for-sum"></i>${recruit.job_position}</p>
					<p id="text-for-sum">
						<i class="bi bi-brightness-high" id="svg-for-sum"></i>${recruit.job_experience}</p>
					<p id="text-for-sum">
						<i class="bi bi-mortarboard" id="svg-for-sum"></i>${recruit.job_education}</p>
				</div>
			</div>

			<div class="container text-center">
				<div class="col">
					<button type="button" class="apply-btn" data-bs-toggle="modal"
						data-bs-target="#apply-modal">
						<i class="bi bi-envelope"></i>즉시지원
					</button>
					<!--toast for scrap btn-->
					<button type="button" class="scrap-btn"
						onclick="toast('Scrap Success!')">
						<i class="bi bi-star" id="scrap-star"></i>스크랩&nbsp;
					</button>
				</div>

				<!--change star color-->

			</div>
			<!--modal for apply btn-->


			<div class="row" id="detail-box">
				<!--detail description part-->
				<div class="col-3">
					<div class="detail">
						<span id="detail-title"> 근무일 </span> <br> <span
							id="detail-content">${recruit.working_days}</span>
					</div>
				</div>

				<div class="col-3">
					<div class="detail">
						<span id="detail-title"> 근무시간 </span> <br> <span
							id="detail-content">${recruit.working_hours}</span>
					</div>
				</div>

				<div class=" col-3">
					<div class="detail">
						<span id="detail-title"> 수습기간 </span> <br> <span
							id="detail-content">${recruit.probation_period}</span>
					</div>
				</div>

				<div class=" col-3">
					<div class="detail">
						<span id="detail-title"> 코딩테스트 </span> <br> <span
							id="detail-content">${recruit.coding_test}</span>
					</div>
				</div>
			</div>

			<div class="row" id="decription-part">
				<!--detail description part-->
				<div class="description">
					<p id="description">Description</p>
					<div class="text-box">${recruit.job_description}</div>
				</div>
			</div>

			<div class="row" id="contact-box">
				<!--contact manager / email-->
				<div class=" col-6" id="manager_name">
					<i class="bi bi-person-circle"></i>${recruit.manager_name}
				</div>
				<div class=" col-6" id="contact_email">
					<i class="bi bi-envelope-at"></i>${recruit.contact_email}
				</div>
			</div>

		</section>

		<!-- End Breadcrumbs -->
	</main>

	<!-- ======= Footer ======= -->
	<%@include file="../includes/footer.jsp"%>
	<!-- End Footer -->




</body>

<!-- JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Vendor JS Files -->
<script src="${path}/resources/assets/vendor/aos/aos.js"></script>
<script
	src="${path}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
	src="${path}/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script
	src="${path}/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="${path}/resources/assets/vendor/php-email-form/validate.js"></script>
<script
	src="${path}/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script
	src="${path}/resources/assets/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Template Main JS File -->
<script src="${path}/resources/assets/js/main.js"></script>

</html>