<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	HttpSession cSession = request.getSession();

// int company_id = (Integer) cSession.getAttribute("company_id");
// System.out.println("company_id : " + company_id);
// String company_name = (String) cSession.getAttribute("company_name");

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

.list-header.jsx-1779968077 li.jsx-1779968077 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 42px;
    font-size: 15px;
    font-weight: normal;
    background-color: #f2f2f1;
    border-bottom: 1px solid #ececec;
}
li.jsx-989812570 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 42px;
    border-bottom: 1px solid rgb(236, 236, 236);
}
li.jsx-989812570 div.jsx-989812570 {
    width: 100%;
    font-size: 14px;
    color: rgb(102, 102, 102);
}


/* modal for my resume List */
section .on {
	display: none;
}
.resumeModal.jsx-2594281658 {
    position: fixed;
    inset: 0px;
    z-index: 1;
    background-color: rgba(0, 0, 0, 0.7);
}
.modal--full.jsx-2594281658 .container.jsx-2594281658 {
    width: 100%;
}
.container.jsx-2594281658 {
    display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    overflow-y: auto;
    height: 100%;
}
.layout.jsx-2594281658 {
    display: flex;
    flex-direction: column;
    position: relative;
    left: 50%;
    transform: translateX(-50%);
    height: 70%;
/*     max-width: 100%; */
/*     max-height: 100%; */
}
.modal--full.jsx-2594281658 .btn-close.jsx-2594281658 {
    position: absolute;
    top: 50px;
    right: 50px;
}
.btn-close.jsx-2594281658 {
    position: relative;
    z-index: 10;
/*     margin-bottom: 16px; */
    text-align: right;
}
.modal--full.jsx-2594281658 .btn-close.jsx-2594281658 button.jsx-2594281658 {
    width: 80px;
    height: 80px;
    background-color: transparent;
}
.btn-close.jsx-2594281658 button.jsx-2594281658 {
    position: relative;
    width: 40px;
    height: 40px;
    border-radius: 20px;
    background-color: rgba(0, 0, 0, 0.6);
    vertical-align: top;
}
button.jsx-265774403 {
    display: none;
}
button {
    background: none;
    border: 0;
    cursor: pointer;
}
.alt-text {
    position: absolute;
    overflow: hidden;
    clip: rect(0 0 0 0);
    margin: -1px;
    width: 1px;
    height: 1px;
}
.search-page.jsx-3924694827 {
    position: relative;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    background-color: rgba(255, 255, 255, 0.98);
    height: 100%;
}
.title.jsx-3924694827 {
/*     margin-bottom: 52px; */
}
.board-list-box.jsx-3924694827 {
    width: 100%;
    text-align: center;
    border: 1px solid #1dc078;
    border-radius: 5px;
}
ul {
    list-style: none;
}
.list-header.jsx-1702879176 li.jsx-1702879176 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 42px;
    font-size: 15px;
    font-weight: normal;
    border-top: 1px solid rgb(33, 33, 33);
    border-bottom: 1px solid rgb(236, 236, 236);
}
.list-header.jsx-1702879176 li.jsx-1702879176 > div.jsx-1702879176 {
    width: 100%;
}
li.jsx-3042790088 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 42px;
    border-bottom: 1px solid rgb(236, 236, 236);
}
li.jsx-3042790088 div.jsx-3042790088 {
    width: 100%;
    font-size: 14px;
    color: rgb(102, 102, 102);
}
.board-list-footer.jsx-3924694827 {
/*     position: relative; */
/*     padding: 0 0 0 0; */
/*     /* right: 106px; */ */
/*     display: flex; */
/*     justify-content: center; */
/*     bottom: 0; */
}
.btn-write.jsx-3924694827 {
/*     position: absolute; */
/*     right: 0px; */
/*     top: 50%; */
/*     transform: translateY(-50%); */
}
.btn-write.jsx-3924694827 button.jsx-1407906967 {
    font-size: 14px;
    text-align: center;
    width: 120px;
    min-width: 120px;
    height: 42px;
    line-height: 42px;
    border-radius: 26px;
    background-color: #1dc078;
    color: rgb(255, 255, 255);
    transition: background-color 0.3s ease 0s;
    padding: 0;
}
.content-box.jsx-2786454813 {
    position: relative;
    padding: 32px 40px 40px;
    width: 100%;
    height: 100%;
    background-color: rgb(255, 255, 255);
    border: 1px solid rgb(223, 223, 223);
    border-radius: 5px;
}

.scroll {
width: 300px; /* 원하는 가로 너비 지정 */
  height: 200px; /* 원하는 세로 높이 지정 */
  overflow: auto; /* 스크롤을 표시하기 위한 설정 */
  border: 1px solid #ccc; /* 원하는 테두리 스타일 지정 */
}

/* 리스트 아이템 스타일 (선택적으로 사용) */
.scroll ul li {
  padding: 10px;
  border-bottom: 1px solid #ddd; /* 리스트 아이템 사이의 구분선 스타일 지정 */
}

/* 스크롤바 스타일 (선택적으로 사용) */
.scroll::-webkit-scrollbar {
  width: 8px; /* 스크롤바의 너비 지정 */
}

.scroll::-webkit-scrollbar-thumb {
  background-color: #1dc078; /* 스크롤바의 색상 지정 */
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
							<a href="/recruit/recruitUpdating.do?no=${recruit.ad_id}"><button type="button" class="update-btn" data-bs-toggle="modal" data-bs-target="#update">
								<i class="bi bi-vector-pen"></i>수정
							</button></a>
							
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
						
							<img class="company_logo_img" alt="#"
								src="${path}/resources/company_logo/${recruit.company_logo_en}" />
							<input type="hidden" name="company_id"
								value="${recruit.company_id}" />
						
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
			
			<c:if test="${loginFG eq 'm'}">
				<div class="col">
					<button type="button" class="apply-btn" data-bs-toggle="modal"
						data-bs-target="#apply-modal">
						<i class="bi bi-envelope"></i>즉시지원
					</button>
					<c:if test="${empty rList}">
					<script type="text/javascript">
						$(".apply-btn").on("click",function(){
							let myResumeList = "${resumeList}";
							
							console.log("myResumeList : " + myResumeList);
	
							if (Array.isArray(myResumeList) && myResumeList.length > 0 || myResumeList != null) {
								alert ("choose your resume!");
								$(".resumeModal").removeClass("on");
							}
							else {
								alert ("you don't have any resume! Let's go to the write page!");
								location.href = "/resume/resumeAdding.do";
							}
						});
					</script>
					</c:if>
					

					<!--toast for scrap btn-->
					<button type="button" class="scrap-btn">
						<i class="bi bi-star" id="scrap-star"></i>스크랩&nbsp;
					</button>
				</div>
				</c:if>
				<script type="text/javascript">
				$(function(){
					let loginUser='<%=userId%>';
					$(".scrap-btn").click(function(){
						//userId, name, company_id, company_name, ad_id, ad_title
						alert("scrap button action");
						alert("loginUser: "+loginUser);
						
						let userId = '<%=userId%>';
						let name = '<%=userName%>';
						let companyId = '${recruit.company_id}';
						let companyName = '${recruit.company_name}';
						let adId = '${recruit.ad_id}';
						let adTitle = '${recruit.ad_title}';
						
						console.log("userId : " + userId);
						console.log("name : " + name);
						console.log("companyId : " + companyId);
						console.log("companyName : " + companyName);
						console.log("adId : " + adId);
						console.log("adTitle : " + adTitle);
						
						let data2 = {
								"userId":userId,
								"name": name,
								"company_id": companyId,
								"company_name": companyName,
								"ad_id": adId,
								"ad_title": adTitle
						};
						
						let scrapId = '${scrap.scrap_id}';
						console.log(scrapId);
						
						$.ajax({
							url:"/scrap/insertScrap.do",
							type: "POST",
							data: data2,
							dataType: "text",
							success: function(json){
								console.log("스크랩 결과: "+json);
								if(json == 0) {
									
									confirm("스크랩이 완료되었습니다. 스크랩 목록을 확인하시겠습니까?")
									console.log("scrap result: "+json);
									if(confirm) {
										location.href = '/scrap/getScrapList.do';
									}
									else {
										//
									}
									
								}
								else {
									
									alert ("scrap cancel back to the recruit page");
									console.log("cancel result: "+json);
								}
							},
							error: function(){
								alert("scrap failed");
							}
						});
						
					});
				});
				</script>
				
			</div>
			


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

		<div class="jsx-2594281658 resumeModal modal--search-mobile modal--full on" id="#apply-modal" aria-hidden="true">
			<div class="jsx-2594281658 container">
				<div class="jsx-2594281658 layout">
					<div class="jsx-2594281658 btn-close">
						<button type="button" class="jsx-2594281658" data-bs-dismiss="modal" aria-label="Close">
							<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="#dfdfdf" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: absolute; margin: auto; left: -32px; top: -32px;">
								<line x1="18" y1="6" x2="6" y2="18"></line>
								<line x1="6" y1="6" x2="18" y2="18"></line>
							</svg>
						</button>
					</div>
<!-- 					<div class="jsx-2594281658 content"> -->
					<div class="jsx-2786454813 content-box">
						<button type="button" class="jsx-265774403" data-bs-dismiss="modal" aria-label="Close">
							<svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 24 24" fill="none" stroke="#dfdfdf" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative; vertical-align: top;">
								<line x1="18" y1="6" x2="6" y2="18"></line>
								<line x1="6" y1="6" x2="18" y2="18"></line>
							</svg>
							<span class="jsx-265774403 alt-text">닫기</span>
						</button>
						<div class="jsx-3924694827 search-page">
							<div class="jsx-3924694827 title resumeTitle">
								<h6 class="jsx-3924694827" style="font-weight: 600;">지원할 이력서를 골라주새요ㅋ</h6>
							</div>
							<div class="jsx-3924694827 board-list-box scroll">
								<ul class="jsx-1702879176 list-header" style="padding: 0px;">
									<li class="jsx-1702879176" style="padding: 0px;">
										<div class="jsx-1702879176" style="max-width: 10%;">선택</div>
										<div class="jsx-1702879176" style="max-width: 10%;">번호</div>
										<div class="jsx-1702879176" style="max-width: 80%;">이력서 제목</div>
										<div class="jsx-1702879176" style="max-width: 20%;">등록일</div>
									</li>
								</ul>
								<c:forEach items="${resumeList}" var="resume" varStatus="loop">
									<ul class="jsx-1702879176 list-body" style="padding: 0px">
										<li tabindex="0" class="jsx-3042790088 " style="padding: 0px;">
											<div class="jsx-3042790088 col-notice" style="max-width: 10%;">
												<input type="checkbox" name="rowCheck" value="${resume.resume_id }" onclick="checkOnlyOne(this)"/>
											</div>
											<div class="jsx-3042790088 col-category" style="max-width: 10%;">${resumeList.size() - loop.index}</div>
											<input type="hidden" name="resume_id" value="${resume.resume_id }"> 
											<div class="jsx-3042790088 col-title" style="max-width: 80%;">
												<a class="jsx-989812570" href="getResume.do?resume_id=${resume.resume_id }" style="color: rgb(102, 102, 102);">${resume.resume_title }</a>
											</div>
											<div class="jsx-3042790088 col-created" style="max-width: 20%;">${resume.regdate}</div>
										</li>
									</ul>
								</c:forEach>
							</div>
							<div class="jsx-3924694827 board-list-footer">
								<div class="jsx-3924694827 btn-write fix-position">
									<button class="jsx-1407906967">지원하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
								
								<script type="text/javascript">
								
									var modal = document.querySelector(".resumeModal");
									var closeButton = document.querySelector(".btn-close");
	
									// 닫기 버튼을 클릭하면 모달 창을 삭제합니다.
									closeButton.addEventListener("click", function () {
									    modal.remove();
									});
									
									function checkOnlyOne(element) {
										  
									  const checkboxes = document.getElementsByName("rowCheck");
									  
									  checkboxes.forEach((cb) => {
									    cb.checked = false;
									  })
									  
									  element.checked = true;
									}

									$(function(){
										let selectedResume = null; // 클릭한 체크박스 정보를 저장할 변수

										$("input[name='rowCheck']").on("click", function(){
											if ($(this).is(":checked")) {
									            alert("체크!");
// 												// 해당되는 필요한 이력서 정보 출력
// 												// 필요한 정보 : resume_id, resume_title, applicant_name(= user_name)
												selectedResume = {
													resume_id : $(this).val()
													, resume_title : $(this).parent().next().next().next().text().replace(/\n/g, "").trim()
													// resume_title은 코드를 간단하게 바꿀 수 있으면 바꿔도 됨
												};
												console.log("선택된 이력서 정보 =>", selectedResume);
									            
									            
									        } else {
									        	selectedResume = null; // 체크를 해제하면 선택된 정보 초기화
									        }
										});
										
										$(".btn-write").on("click", function() {
											if (selectedResume) {
												alert("지원할랍니다ㅋ");
												// 필요한 정보 : userId, ad_id, ad_title, resume_id, resume_title, applicant_name
												// ajax로 필요한 회사 정보(ex. 공고 id, 회사명 등)와 이력서 번호 및 필요한 정보 넘기기
												let userId = "<%=userId%>";
												let applicant_name = "<%=userName%>"; 
												let ad_id = "${recruit.ad_id}";
												let ad_title = "${recruit.ad_title}";
												let resume_id = selectedResume.resume_id;
												let resume_title = selectedResume.resume_title;
												
												console.log("userId => " + userId);
												console.log("applicant_name => " + applicant_name);
												console.log("ad_id => " + ad_id);
												console.log("ad_title => " + ad_title);
												console.log("resume_id => " + resume_id);
												console.log("resume_title => " + resume_title);

												let data = {
														'userId' : userId
														, 'applicant_name' : applicant_name
														, 'ad_id' : ad_id
														, 'ad_title' : ad_title
														, 'resume_id' : resume_id
														, 'resume_title' : resume_title
												};
												
												// AJAX 요청
												$.ajax({
													url : "/applicant/applyFor.do"
													, type: "POST"
													, data: data
													, dataType: "text"
													, success: function(resp) {
														// 서버 응답 처리
														console.log("서버 응답: " + resp);
														// 필요한 동작 수행
														alert('지원 완료');
														location.href='getRecruit.do?ad_id=' + ad_id;
														// 불필요시 location.href 삭제 (controller 에서 이미 return 해주기때문에)
														// 추가하면 좋을 것 => 지원을 이미 했을 경우, "이미 지원하였습니다 alert"
													}
													, error: function() {
														// 에러 처리
														alert('지원 실패');
														console.log("에러 발생: " + error);
													}
												});
												
											} else {
												alert("이력서를 선택하시조ㅋ?");
											}
										});
									});
									
								
								
										
								</script> 
					
					</div>
		
		</section>


	

		<!-- End Breadcrumbs -->
	</main>

	<!-- ======= Footer ======= -->
	<%@include file="../includes/footer.jsp"%>
	<!-- End Footer -->




</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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