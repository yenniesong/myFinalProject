<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	HttpSession tSession = request.getSession();

	String userId = (String) tSession.getAttribute("userId");
	String loginFG = (String) tSession.getAttribute("loginFG");
	Integer company_id = (Integer)tSession.getAttribute("company_id");
	String company_name = (String)tSession.getAttribute("company_name");
	
	System.out.println("userId : " + userId);
	System.out.println("loginFG : " + loginFG);
	System.out.println("company_id : " + company_id);
	System.out.println("company_name : " + company_name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recruit Main</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!--BOOTSTRAP CSS, JS-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <!-- sweet alert -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
<!-- Favicons -->
<link href="${path}/resources/assets/img/favicon.png" rel="icon">
<link href="${path}/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

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

/*modal*/
.modal-backdrop.fade {
opacity: 0;
filter: alpha(opacity=0);
}
.modal-backdrop.fade.in {
opacity: 0.5;
filter: alpha(opacity=50);
}

/*상단 메뉴바 (all / back / front / full / search)*/
.job-menu-top {
	list-style-type: none;
	/*좌측 여백 없애기*/
	padding-left: 0px;
	/*좌측 정렬*/
	float: left;
	/*font color*/
	color: #878e98;
	/*font -> google*/
}

.job-menu-top li {
	display: inline;
	/*li요소의 우측에 1px 테두리 만들기*/
	border-right: 1px solid #719a60;
	/*테두리와 메뉴의 간격 벌리기 -> padding*/
	padding: 0px 10px 0px 10px;
	/*메뉴와 테두리 사이 간격 벌리기 -> margin*/
	margin: 5px 0px 5px 0px;
}

/*li의 마지막 요소 좌측에 테두리 없애기*/
.job-menu-top li:last-child {
	border-right: none;
}

/*각 리스트 요소에 hover기능*/
.job-menu-top li:hover {
	color: #719a60;
}

/*링크를 눌렀을 때 글자 색 변하지 않도록*/

/*글쓰기 버튼*/
.btn {
	background-color: #719a60;
	border: none;
}

</style>
<style>
#recruitWrap {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	color: #333;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	border: 0;
	padding: 0;
	margin: 0;
	position: relative;
}

#div.secContents {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	color: #333;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	border: 0;
	position: relative;
	z-index: 1;
	width: 1240px;
	margin: 0 auto;
	padding: 0;
}

#searchLog {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	color: #333;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	border: 0;
	padding: 0;
	margin: 0;
}

#searchList {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	color: #333;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	border: 0;
	padding: 0;
	margin: 0;
}

#searchList>ul {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	color: #333;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	border: 0;
	padding: 0;
	list-style: none;
	display: flex;
	flex-wrap: wrap;
	margin: 0;
}

#searchList>ul>li {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	color: #333;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	border: 0;
	padding: 0;
	list-style: none;
	margin: 0 16px 32px;
	margin-left: 0;
}

#searchList>ul>li>a {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	list-style: none;
	padding: 0;
	margin: 0;
	display: block;
	color: #333;
	text-decoration: none;
	cursor: pointer;
	border: 1px solid #e8e8e8;
	box-sizing: border-box;
	box-shadow: 2px 2px 10px rgba(0, 0, 0, .05);
	border-radius: 8px;
	width: 286px;
	height: 350px;
	position: relative;
	transition: .3s;
}

.rLogo {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	list-style: none;
	color: #333;
	cursor: pointer;
	border: 0;
	padding: 0;
	margin: 0;
	position: relative;
	height: 130px;
	overflow: visible;
	border-radius: 8px 8px 0 0;
	z-index: 1;
}

 .rLogo>img {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
    letter-spacing: -.5px;
    line-height: 1;
    list-style: none;
    color: #333;
    cursor: pointer;
    padding: 0;
    margin: 0;
    border: 0 none;
    vertical-align: top;
    display: block;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    height: 100%;
}

#searchList>ul>li:nth-child(1)>a>div.listCont {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	list-style: none;
	color: #333;
	cursor: pointer;
	border: 0;
	margin: 0;
	padding: 25px 24px 16px;
	margin-top: -1px;
	border-top: 1px solid rgba(0, 0, 0, .05);
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rCor {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
	line-height: 1;
	list-style: none;
	color: #333;
	cursor: pointer;
	border: 0;
	padding: 0;
	margin: 0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rCor>span {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	list-style: none;
	cursor: pointer;
	padding: 0;
	border: 0;
	max-width: calc(100% - 23px);
	font-weight: 700;
	font-size: 15px;
	line-height: 22px;
	color: #171717;
	letter-spacing: -.5px;
	display: inline-block;
	margin: 0 7px 0 0;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rCor>button {
	list-style: none;
	padding: 0;
	margin: 0;
	font-size: 12px;
	border: 0 none;
	background: none;
	cursor: pointer;
	position: relative;
	font-family: inherit;
	display: inline-block;
	text-align: center;
	vertical-align: middle;
	line-height: normal;
	letter-spacing: -1px;
	white-space: nowrap;
	background-position: 0 0;
	background-size: 100% auto;
	background-repeat: no-repeat;
	width: 16px;
	height: 14px;
	background-image:
		url(/content/images/theme/celebrate/icon_heart_off.svg);
	overflow: inherit;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rCor>button>span {
	list-style: none;
	cursor: pointer;
	font-family: inherit;
	text-align: center;
	letter-spacing: -1px;
	white-space: nowrap;
	padding: 0;
	margin: 0;
	border: 0;
	position: absolute !important;
	top: -5000em;
	width: 0;
	height: 0;
	overflow: hidden;
	line-height: 0;
	font-size: 0;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rTit {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	list-style: none;
	cursor: pointer;
	border: 0;
	padding: 0;
	margin: 12px 0 0;
	font-size: 16px;
	line-height: 26px;
	letter-spacing: -.5px;
	color: #171717;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rInfo {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	list-style: none;
	color: #333;
	cursor: pointer;
	border: 0;
	padding: 0;
	margin: 4px 0 0;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rInfo>span.rPart {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	letter-spacing: -.5px;
	list-style: none;
	cursor: pointer;
	white-space: nowrap;
	margin: 0;
	border: 0;
	color: #6a6a6a;
	font-size: 13px;
	line-height: 22px;
	padding: 0 8px 0 0;
	position: relative;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rInfo>span.rAddress {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	letter-spacing: -.5px;
	list-style: none;
	cursor: pointer;
	white-space: nowrap;
	margin: 0;
	border: 0;
	color: #6a6a6a;
	font-size: 13px;
	line-height: 22px;
	position: relative;
	padding: 0 0 0 8px;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rSkillBox {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	list-style: none;
	color: #333;
	cursor: pointer;
	border: 0;
	padding: 0;
	margin: 12px 0 0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	flex-wrap: wrap;
	height: 16px;
	overflow: hidden;
}


#searchList>ul>li:nth-child(1)>a>div.listCont>div.rSkillBox>span {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	letter-spacing: -.5px;
	list-style: none;
	cursor: pointer;
	padding: 0;
	margin: 0;
	border: 0;
	color: #9e9e9e;
	line-height: 16px;
	position: relative;
	max-width: 236px;
	display: inline-block;
	font-size: 0;
}

#searchList>ul>li:nth-child(1)>a>div.listCont>div.rSkillBox>span {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	letter-spacing: -.5px;
	list-style: none;
	cursor: pointer;
	padding: 0;
	margin: 0;
	border: 0;
	color: #9e9e9e;
	font-size: 12px;
	line-height: 16px;
	position: relative;
	display: inline-block;
	max-width: 100%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

#searchList>ul>li:nth-child(1)>a>div.listFoot {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	font-size: 13px;
	letter-spacing: -.5px;
	line-height: 1;
	list-style: none;
	color: #333;
	cursor: pointer;
	border: 0;
	padding: 16px 0 24px;
	margin: 0 24px;
	border-top: 1px solid #e8e8e8;
}

#searchList>ul>li:nth-child(1)>a>div.listFoot>div {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	letter-spacing: -.5px;
	list-style: none;
	cursor: pointer;
	border: 0;
	margin: 0;
	font-size: 14px;
	line-height: 22px;
	color: #171717;
	padding: 0 0 0 20px;
	position: relative;
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
}

#searchList>ul>li:nth-child(1)>a>div.listFoot>div>span.rPeriod {
	font-family: "\B9D1\C740   \ACE0\B515", Malgun Gothic, "\B3CB\C6C0",
		Dotum, sans-serif;
	list-style: none;
	cursor: pointer;
	padding: 0;
	margin: 0;
	border: 0;
	font-size: 12px;
	line-height: 16px;
	letter-spacing: -.5px;
	color: #6a6a6a;
}

#searchList>ul>li:nth-child(1)>a>button {
	list-style: none;
	padding: 0;
	margin: 0;
	font-size: 12px;
	border: 0 none;
	background: none;
	cursor: pointer;
	font-family: inherit;
	display: inline-block;
	text-align: center;
	vertical-align: middle;
	line-height: normal;
	letter-spacing: -1px;
	white-space: nowrap;
	background-position: 0 0;
	background-size: 100% auto;
	width: 20px;
	height: 19px;
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='19' height='18'%3E%3Cg data-name='다운로드 (4)'%3E%3Cpath data-name='패스 59' d='M9.506 14.6l-5.562 2.9 1.062-6.152L.5 6.992 6.719 6.1 9.5.5l2.781 5.6 6.219.892-4.506 4.356 1.062 6.152z' fill='rgba(23,23,23,0.3)'/%3E%3Cpath data-name='패스 60' d='M9.5 0a.73.73 0 01.654.4l2.54 5.1 5.68.816a.73.73 0 01.4 1.247l-4.113 3.97.97 5.6a.73.73 0 01-1.059.77l-5.07-2.648-5.08 2.65a.732.732 0 01-1.059-.772l.97-5.6L.22 7.563a.729.729 0 01.4-1.247L6.3 5.5 8.839.4A.73.73 0 019.5 0zm0 2.37L7.444 6.5a.73.73 0 01-.55.4l-4.583.658 3.318 3.2a.729.729 0 01.213.649l-.784 4.533 4.11-2.143a.732.732 0 01.677 0l4.1 2.142-.784-4.53a.729.729 0 01.213-.649l3.318-3.2-4.586-.66a.73.73 0 01-.55-.4z' fill='%23fff' fill-rule='evenodd'/%3E%3C/g%3E%3C/svg%3E");
	position: absolute;
	top: 10px;
	right: 10px;
	background-repeat: no-repeat;
	overflow: inherit;
}

#searchList>ul>li:nth-child(1)>a>button>span {
	list-style: none;
	cursor: pointer;
	font-family: inherit;
	text-align: center;
	letter-spacing: -1px;
	white-space: nowrap;
	padding: 0;
	margin: 0;
	border: 0;
	position: absolute !important;
	top: -5000em;
	width: 0;
	height: 0;
	overflow: hidden;
	line-height: 0;
	font-size: 0;
}

#sal-svg {
	content: "";
	display: inline-block;
	width: 14px;
	height: 14px;
	-moz-background-size: cover;
	background-size: cover;
	position: absolute;
	top: 50%;
	left: 0;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
}

.listCell {
	position: relative;
	overflow: hidden;
}

.listCell::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(113, 154, 96, 1);
	opacity: 0;
	transition: opacity 0.3s ease;
}

.listCell:hover::before {
	opacity: 50%;
}

.listCell:hover .rCor, .listCell:hover .rTit, .listCell:hover .rInfo,
	.listCell:hover .rSkillBox {
	opacity: 1;
	transform: translateY(0);
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
        <!-- End Breadcrumbs -->

        <section class="inner-page">
            <div class="container">

                <div class="row">
                    <ul class="job-menu-top">
                        <li>ALL</li>
                        <li>BACK-END</li>
                        <li>FRONT-END</li>
                        <li>FULL STACK</li>
                        <li data-bs-toggle="modal" data-bs-target="#staticBackdrop"><svg
                                xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-search" viewBox="0 0 16 16">
                                <path
                                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                            </svg> SEARCH</li>
                        <!-- Modal -->
                        <!--SEARCH -> MODAL: SEARCH FOR DETAIL-->
                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                            tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h6 class="modal-title" id="staticBackdropLabel"> 상세검색 필터</h6>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"
                                            style="background-color: #fff; color: #719a60; border: 1px solid #719a60;"></button>
                                    </div>

                                    <div class="modal-body">
                                        <!--detail search form-->
                                        <!--학력 / 포지션 / 고용형태 / 경력 / 위치-->
                                        <!-- select box를 각각 별도의 row 요소로 묶음 -> 각 row 요소 내에서 select box는 각각 col-md 클래스로 감싸짐 -->
                                        <div class="row g-2">
                                            <!--학력-->
                                            <div class="col-md">
                                                <p style="font-size: xx-small; color: #878e98;"><svg
                                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                                                        <path
                                                            d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811V2.828zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z" />
                                                    </svg> 학력사항</p>
                                                <div class="form-floating">
                                                    <select class="form-select" id="job_education" name="job_education"
                                                        aria-label="Floating label select example" name="">
                                                        <option value="학력 무관" selected>학력 무관</option>
                                                        <option value="고등학교 졸업">고등학교 졸업</option>
                                                        <option value="전문학사 졸업">전문학사 졸업</option>
                                                        <option value="학사 학위">학사 학위</option>
                                                        <option value="석사 학위">석사 학위</option>
                                                        <option value="박사 학위">박사 학위</option>
                                                    </select>
                                                    <label for="floatingSelectGrid2">학력을 선택해주세요.</label>
                                                </div>
                                            </div>

                                            <!--포지션-->
                                            <div class="col-md">
                                                <p style="font-size: xx-small; color: #878e98;"><svg
                                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-grid" viewBox="0 0 16 16">
                                                        <path
                                                            d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
                                                    </svg> 포지션</p>
                                                <div class="form-floating">
                                                    <select class="form-select" id="job_position" name="job_position"
                                                        aria-label="Floating label select example">
                                                        <option value="FULL-STACK" selected>풀스택</option>
                                                        <option value="BACK-END">백엔드</option>
                                                        <option value="FRONT-END">프론트엔드</option>
                                                    </select>
                                                    <label for="floatingSelectGrid3">포지션을 선택해주세요.</label>
                                                </div>
                                            </div>
                                        </div>

                                        <br>

                                        <div class="row g-2">
                                            <!--고용형태-->
                                            <div class="col-md">
                                                <p style="font-size: xx-small; color: #878e98;"><svg
                                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-briefcase" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1A1.5 1.5 0 0 0 5 2.5V3H1.5A1.5 1.5 0 0 0 0 4.5v8A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-8A1.5 1.5 0 0 0 14.5 3H11v-.5A1.5 1.5 0 0 0 9.5 1h-3zm0 1h3a.5.5 0 0 1 .5.5V3H6v-.5a.5.5 0 0 1 .5-.5zm1.886 6.914L15 7.151V12.5a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5V7.15l6.614 1.764a1.5 1.5 0 0 0 .772 0zM1.5 4h13a.5.5 0 0 1 .5.5v1.616L8.129 7.948a.5.5 0 0 1-.258 0L1 6.116V4.5a.5.5 0 0 1 .5-.5z" />
                                                    </svg> 고용형태</p>
                                                <div class="form-floating">
                                                    <select class="form-select" id="employment_type"
                                                        name="employment_type"
                                                        aria-label="Floating label select example">
                                                        <option value="정규직" selected>정규직</option>
                                                        <option value="계약직">계약직</option>
                                                        <option value="인턴">인턴</option>
                                                        <option value="기타">기타</option>
                                                    </select>
                                                    <label for="floatingSelectGrid2">고용형태를 선택해주세요.</label>
                                                </div>
                                            </div>

                                            <!--경력-->
                                            <div class="col-md">
                                                <p style="font-size: xx-small; color: #878e98;"><svg
                                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-calendar-check"
                                                        viewBox="0 0 16 16">
                                                        <path
                                                            d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                                                        <path
                                                            d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                                    </svg> 경력사항</p>
                                                <div class="form-floating">
                                                    <select class="form-select" id="job_career" name="job_career"
                                                        aria-label="Floating label select example">
                                                        <option value="경력 무관" selected>경력 무관</option>
                                                        <option value="1년 미만">1년 미만</option>
                                                        <option value="1년 이상 2년 미만">1년 ~ 2년</option>
                                                        <option value="2년 이상 3년 미만">2년 ~ 3년</option>
                                                        <option value="3년 이상 5년 미만">3년 ~ 5년</option>
                                                        <option value="over-five-years">5년 이상</option>
                                                    </select>
                                                    <label for="floatingSelectGrid3">경력사항을 선택해주세요.</label>
                                                </div>
                                            </div>
                                        </div>

                                        <br>

                                        <div class="row g-2">
                                            <!--위치 -->
                                            <p style="font-size: xx-small; color: #878e98;"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                                                    <path
                                                        d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                                    <path
                                                        d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                                </svg> 위치 </p>
                                            <div class="col-md-4">
                                                <!--select box에 onchage-> function을 걸어 선택된 값에 따라 시/군/구가 나오도록-->
                                                <select id="citySelect" class="form-select" size="7"
                                                    aria-label="size 3 select example" onchange="updateTownSelect()">
                                                    <option value="전체" selected>전체</option>
                                                    <option value="서울">서울</option>
                                                    <option value="부산">부산</option>
                                                    <option value="대구">대구</option>
                                                    <option value="인천">인천</option>
                                                    <option value="광주">광주</option>
                                                    <option value="대전">대전</option>
                                                    <option value="울산">울산</option>
                                                    <option value="세종">세종</option>
                                                    <option value="강원">강원</option>
                                                    <option value="경기">경기</option>
                                                    <option value="경남">경남</option>
                                                    <option value="경북">경북</option>
                                                    <option value="전남">전남</option>
                                                    <option value="전북">전북</option>
                                                    <option value="충남">충남</option>
                                                    <option value="충북">충북</option>
                                                    <option value="제주">제주</option>
                                                </select>
                                            </div>
                                            <div class="col-md-8">
                                                <select id="townSelect" class="form-select" size="7"
                                                    aria-label="size 3 select example">
                                                    <!-- 초기 옵션 = 전체 -->
                                                    <option value="전체" selected>전체</option>
                                                </select>

                                                <!--JS: 도시 SELECT 값에 따라 시/군/구 SELECT BOX 출력-->
                                                <script>
                                                    function updateTownSelect() {
                                                        var citySelect = document.getElementById("citySelect");
                                                        var townSelect = document.getElementById("townSelect");

                                                        //townSelect reset
                                                        townSelect.innerHTML = "";

                                                        //citySelect value -> townSelect option change
                                                        //전체
                                                        if (citySelect.value === "전체") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                        }

                                                        //서울
                                                        if (citySelect.value === "서울") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("강남구", "강남구"));
                                                            townSelect.appendChild(new Option("강동구", "강동구"));
                                                            townSelect.appendChild(new Option("강북구", "강북구"));
                                                            townSelect.appendChild(new Option("강서구", "강서구"));
                                                            townSelect.appendChild(new Option("관악구", "관악구"));
                                                            townSelect.appendChild(new Option("광진구", "광진구"));
                                                            townSelect.appendChild(new Option("구로구", "구로구"));
                                                            townSelect.appendChild(new Option("금천구", "금천구"));
                                                            townSelect.appendChild(new Option("노원구", "노원구"));
                                                            townSelect.appendChild(new Option("도봉구", "도봉구"));
                                                            townSelect.appendChild(new Option("동대문구", "동대문구"));
                                                            townSelect.appendChild(new Option("동작구", "동작구"));
                                                            townSelect.appendChild(new Option("마포구", "마포구"));
                                                            townSelect.appendChild(new Option("서대문구", "서대문구"));
                                                            townSelect.appendChild(new Option("서초구", "서초구"));
                                                            townSelect.appendChild(new Option("성동구", "성동구"));
                                                            townSelect.appendChild(new Option("성북구", "성북구"));
                                                            townSelect.appendChild(new Option("송파구", "송파구"));
                                                            townSelect.appendChild(new Option("양천구", "양천구"));
                                                            townSelect.appendChild(new Option("영등포구", "영등포구"));
                                                            townSelect.appendChild(new Option("용산구", "용산구"));
                                                            townSelect.appendChild(new Option("은평구", "은평구"));
                                                            townSelect.appendChild(new Option("종로구", "종로구"));
                                                            townSelect.appendChild(new Option("중구", "중구"));
                                                            townSelect.appendChild(new Option("중랑구", "중랑구"));


                                                        }

                                                        //부산
                                                        if (citySelect.value === "부산") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("강서구", "강서구"));
                                                            townSelect.appendChild(new Option("금정구", "금정구"));
                                                            townSelect.appendChild(new Option("기장군", "기장군"));
                                                            townSelect.appendChild(new Option("남구", "남구"));
                                                            townSelect.appendChild(new Option("동구", "동구"));
                                                            townSelect.appendChild(new Option("동래구", "동래구"));
                                                            townSelect.appendChild(new Option("부산진구", "부산진구"));
                                                            townSelect.appendChild(new Option("북구", "북구"));
                                                            townSelect.appendChild(new Option("사상구", "사상구"));
                                                            townSelect.appendChild(new Option("사하구", "사하구"));
                                                            townSelect.appendChild(new Option("서구", "서구"));
                                                            townSelect.appendChild(new Option("수영구", "수영구"));
                                                            townSelect.appendChild(new Option("연제구", "연제구"));
                                                            townSelect.appendChild(new Option("영도구", "영도구"));
                                                            townSelect.appendChild(new Option("중구", "중구"));
                                                            townSelect.appendChild(new Option("해운대구", "해운대구"));
                                                        }

                                                        //대구
                                                        if (citySelect.value === "대구") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("남구", "남구"));
                                                            townSelect.appendChild(new Option("달서구", "달서구"));
                                                            townSelect.appendChild(new Option("달성군", "달성군"));
                                                            townSelect.appendChild(new Option("동구", "동구"));
                                                            townSelect.appendChild(new Option("북구", "북구"));
                                                            townSelect.appendChild(new Option("서구", "서구"));
                                                            townSelect.appendChild(new Option("수성구", "수성구"));
                                                            townSelect.appendChild(new Option("중구", "중구"));
                                                        }

                                                        //인천
                                                        if (citySelect.value === "인천") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("강화군", "강화군"));
                                                            townSelect.appendChild(new Option("계양구", "계양구"));
                                                            townSelect.appendChild(new Option("남동구", "남동구"));
                                                            townSelect.appendChild(new Option("동구", "동구"));
                                                            townSelect.appendChild(new Option("미추홀구", "미추홀구"));
                                                            townSelect.appendChild(new Option("부평구", "부평구"));
                                                            townSelect.appendChild(new Option("서구", "서구"));
                                                            townSelect.appendChild(new Option("연수구", "연수구"));
                                                            townSelect.appendChild(new Option("옹진군", "옹진군"));
                                                            townSelect.appendChild(new Option("중구", "중구"));
                                                        }

                                                        //광주
                                                        if (citySelect.value === "광주") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("광산구", "광산구"));
                                                            townSelect.appendChild(new Option("남구", "남구"));
                                                            townSelect.appendChild(new Option("동구", "동구"));
                                                            townSelect.appendChild(new Option("북구", "북구"));
                                                            townSelect.appendChild(new Option("서구", "서구"));
                                                        }

                                                        //대전
                                                        if (citySelect.value === "대전") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("대덕구", "대덕구"));
                                                            townSelect.appendChild(new Option("동구", "동구"));
                                                            townSelect.appendChild(new Option("서구", "서구"));
                                                            townSelect.appendChild(new Option("유성구", "유성구"));
                                                            townSelect.appendChild(new Option("중구", "중구"));
                                                        }

                                                        //울산
                                                        if (citySelect.value === "울산") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("남구", "남구"));
                                                            townSelect.appendChild(new Option("동구", "동구"));
                                                            townSelect.appendChild(new Option("북구", "북구"));
                                                            townSelect.appendChild(new Option("울주군", "울주군"));
                                                            townSelect.appendChild(new Option("중구", "중구"));
                                                        }

                                                        //세종
                                                        if (citySelect.value === "세종") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("금남면", "금남면"));
                                                            townSelect.appendChild(new Option("부강면", "부강면"));
                                                            townSelect.appendChild(new Option("산울동", "산울동"));
                                                            townSelect.appendChild(new Option("소정면", "소정면"));
                                                            townSelect.appendChild(new Option("연기면", "연기면"));
                                                            townSelect.appendChild(new Option("연동면", "연동면"));
                                                            townSelect.appendChild(new Option("연서면", "연서면"));
                                                            townSelect.appendChild(new Option("장군면", "장군면"));
                                                            townSelect.appendChild(new Option("전동면", "전동면"));
                                                            townSelect.appendChild(new Option("전의면", "전의면"));
                                                            townSelect.appendChild(new Option("조치원읍", "조치원읍"));
                                                            townSelect.appendChild(new Option("집현동", "집현동"));
                                                            townSelect.appendChild(new Option("합강동", "합강동"));
                                                            townSelect.appendChild(new Option("해밀동", "해밀동"));
                                                        }

                                                        //강원
                                                        if (citySelect.value === "강원") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("강릉시", "강릉시"));
                                                            townSelect.appendChild(new Option("고성군", "고성군"));
                                                            townSelect.appendChild(new Option("동해시", "동해시"));
                                                            townSelect.appendChild(new Option("삼척시", "삼척시"));
                                                            townSelect.appendChild(new Option("속초시", "속초시"));
                                                            townSelect.appendChild(new Option("양구군", "양구군"));
                                                            townSelect.appendChild(new Option("양양군", "양양군"));
                                                            townSelect.appendChild(new Option("영월군", "영월군"));
                                                            townSelect.appendChild(new Option("원주시", "원주시"));
                                                            townSelect.appendChild(new Option("인제군", "인제군"));
                                                            townSelect.appendChild(new Option("정선군", "정선군"));
                                                            townSelect.appendChild(new Option("칠원군", "칠원군"));
                                                            townSelect.appendChild(new Option("춘천시", "춘천시"));
                                                            townSelect.appendChild(new Option("태백시", "태백시"));
                                                            townSelect.appendChild(new Option("평창군", "평창군"));
                                                            townSelect.appendChild(new Option("홍천군", "홍천군"));
                                                            townSelect.appendChild(new Option("화천군", "화천군"));
                                                            townSelect.appendChild(new Option("횡성군", "횡성군"));
                                                        }

                                                        //경기
                                                        if (citySelect.value === "경기") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("가평군", "가평군"));
                                                            townSelect.appendChild(new Option("고양시 덕양구", "고양시 덕양구"));
                                                            townSelect.appendChild(new Option("고양시 일산동구", "고양시 일산동구"));
                                                            townSelect.appendChild(new Option("고양시 일산서구", "고양시 일산서구"));
                                                            townSelect.appendChild(new Option("과천시", "과천시"));
                                                            townSelect.appendChild(new Option("광명시", "광명시"));
                                                            townSelect.appendChild(new Option("광주시", "광주시"));
                                                            townSelect.appendChild(new Option("구리시", "구리시"));
                                                            townSelect.appendChild(new Option("군포시", "군포시"));
                                                            townSelect.appendChild(new Option("김포시", "김포시"));
                                                            townSelect.appendChild(new Option("남양주시", "남양주시"));
                                                            townSelect.appendChild(new Option("동두천시", "동두천시"));
                                                            townSelect.appendChild(new Option("부천시", "부천시"));
                                                            townSelect.appendChild(new Option("성남시 분당구", "성남시 분당구"));
                                                            townSelect.appendChild(new Option("성남시 수정구", "성남시 수정구"));
                                                            townSelect.appendChild(new Option("성남시 중원구", "성남시 중원구"));
                                                            townSelect.appendChild(new Option("수원시 권선구", "수원시 권선구"));
                                                            townSelect.appendChild(new Option("수원시 영통구", "수원시 영통구"));
                                                            townSelect.appendChild(new Option("수원시 장안구", "수원시 장안구"));
                                                            townSelect.appendChild(new Option("수원시 팔달구", "수원시 팔달구"));
                                                            townSelect.appendChild(new Option("시흥시", "시흥시"));
                                                            townSelect.appendChild(new Option("안산시 단원구", "안산시 단원구"));
                                                            townSelect.appendChild(new Option("안산시 상록구", "안산시 상록구"));
                                                            townSelect.appendChild(new Option("안성시", "안성시"));
                                                            townSelect.appendChild(new Option("안양시 동안구", "안양시 동안구"));
                                                            townSelect.appendChild(new Option("안양시 만안구", "안양시 만안구"));
                                                            townSelect.appendChild(new Option("양주시", "양주시"));
                                                            townSelect.appendChild(new Option("양평군", "양평군"));
                                                            townSelect.appendChild(new Option("여주시", "여주시"));
                                                            townSelect.appendChild(new Option("연천군", "연천군"));
                                                            townSelect.appendChild(new Option("오산시", "오산시"));
                                                            townSelect.appendChild(new Option("용인시 기흥구", "용인시 기흥구"));
                                                            townSelect.appendChild(new Option("용인시 수지구", "용인시 수지구"));
                                                            townSelect.appendChild(new Option("용인시 처인구", "용인시 처인구"));
                                                            townSelect.appendChild(new Option("의왕시", "의왕시"));
                                                            townSelect.appendChild(new Option("의정부시", "의정부시"));
                                                            townSelect.appendChild(new Option("이천시", "이천시"));
                                                            townSelect.appendChild(new Option("파주시", "파주시"));
                                                            townSelect.appendChild(new Option("평택시", "평택시"));
                                                            townSelect.appendChild(new Option("포천시", "포천시"));
                                                            townSelect.appendChild(new Option("하남시", "하남시"));
                                                            townSelect.appendChild(new Option("화성시", "화성시"));
                                                        }

                                                        //경남
                                                        if (citySelect.value === "경남") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("거제시", "거제시"));
                                                            townSelect.appendChild(new Option("거창군", "거창군"));
                                                            townSelect.appendChild(new Option("고성군", "고성군"));
                                                            townSelect.appendChild(new Option("김해시", "김해시"));
                                                            townSelect.appendChild(new Option("남해군", "남해군"));
                                                            townSelect.appendChild(new Option("밀양시", "밀양시"));
                                                            townSelect.appendChild(new Option("사천시", "사천시"));
                                                            townSelect.appendChild(new Option("산청군", "산청군"));
                                                            townSelect.appendChild(new Option("양산시", "양산시"));
                                                            townSelect.appendChild(new Option("의령군", "의령군"));
                                                            townSelect.appendChild(new Option("진주시", "진주시"));
                                                            townSelect.appendChild(new Option("창녕군", "창녕군"));
                                                            townSelect.appendChild(new Option("창원시 마산합포구", "창원시 마산합포구"));
                                                            townSelect.appendChild(new Option("창원시 마산회원구", "창원시 마산회원구"));
                                                            townSelect.appendChild(new Option("창원시 성산구", "창원시 성산구"));
                                                            townSelect.appendChild(new Option("창원시 의창구", "창원시 의창구"));
                                                            townSelect.appendChild(new Option("창원시 진해구", "창원시 진해구"));
                                                            townSelect.appendChild(new Option("통영시", "통영시"));
                                                            townSelect.appendChild(new Option("하동군", "하동군"));
                                                            townSelect.appendChild(new Option("함안군", "함안군"));
                                                            townSelect.appendChild(new Option("함양군", "함양군"));
                                                            townSelect.appendChild(new Option("합천군", "합천군"));
                                                        }

                                                        //경북
                                                        if (citySelect.value === "경북") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("경산시", "경산시"));
                                                            townSelect.appendChild(new Option("경주시", "경주시"));
                                                            townSelect.appendChild(new Option("고령군", "고령군"));
                                                            townSelect.appendChild(new Option("구미시", "구미시"));
                                                            townSelect.appendChild(new Option("군위군", "군위군"));
                                                            townSelect.appendChild(new Option("김천시", "김천시"));
                                                            townSelect.appendChild(new Option("문경시", "문경시"));
                                                            townSelect.appendChild(new Option("봉화군", "봉화군"));
                                                            townSelect.appendChild(new Option("상주시", "상주시"));
                                                            townSelect.appendChild(new Option("성주군", "성주군"));
                                                            townSelect.appendChild(new Option("안동시", "안동시"));
                                                            townSelect.appendChild(new Option("영덕군", "영덕군"));
                                                            townSelect.appendChild(new Option("영양군", "영양군"));
                                                            townSelect.appendChild(new Option("영주시", "영주시"));
                                                            townSelect.appendChild(new Option("영천시", "영천시"));
                                                            townSelect.appendChild(new Option("예천군", "예천군"));
                                                            townSelect.appendChild(new Option("울릉군", "울릉군"));
                                                            townSelect.appendChild(new Option("울진군", "울진군"));
                                                            townSelect.appendChild(new Option("의성군", "의성군"));
                                                            townSelect.appendChild(new Option("청도군", "청도군"));
                                                            townSelect.appendChild(new Option("청송군", "청송군"));
                                                            townSelect.appendChild(new Option("칠곡군", "칠곡군"));
                                                            townSelect.appendChild(new Option("포항시 남구", "포항시 남구"));
                                                            townSelect.appendChild(new Option("포항시 북구", "포항시 북구"));
                                                        }

                                                        //전남
                                                        if (citySelect.value === "전남") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("강진군", "강진군"));
                                                            townSelect.appendChild(new Option("고흥군", "고흥군"));
                                                            townSelect.appendChild(new Option("곡성군", "곡성군"));
                                                            townSelect.appendChild(new Option("광양시", "광양시"));
                                                            townSelect.appendChild(new Option("구례군", "구례군"));
                                                            townSelect.appendChild(new Option("나주시", "나주시"));
                                                            townSelect.appendChild(new Option("담양군", "담양군"));
                                                            townSelect.appendChild(new Option("목포시", "목포시"));
                                                            townSelect.appendChild(new Option("무안군", "무안군"));
                                                            townSelect.appendChild(new Option("보성군", "보성군"));
                                                            townSelect.appendChild(new Option("순천시", "순천시"));
                                                            townSelect.appendChild(new Option("신안군", "신안군"));
                                                            townSelect.appendChild(new Option("여수시", "여수시"));
                                                            townSelect.appendChild(new Option("영광군", "영광군"));
                                                            townSelect.appendChild(new Option("영암군", "영암군"));
                                                            townSelect.appendChild(new Option("완도군", "완도군"));
                                                            townSelect.appendChild(new Option("장성군", "장성군"));
                                                            townSelect.appendChild(new Option("장흥군", "장흥군"));
                                                            townSelect.appendChild(new Option("진도군", "진도군"));
                                                            townSelect.appendChild(new Option("함평군", "함평군"));
                                                            townSelect.appendChild(new Option("해남군", "해남군"));
                                                            townSelect.appendChild(new Option("화순군", "화순군"));
                                                        }

                                                        //전북
                                                        if (citySelect.value === "전북") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("고창군", "고창군"));
                                                            townSelect.appendChild(new Option("군산시", "군산시"));
                                                            townSelect.appendChild(new Option("김제시", "김제시"));
                                                            townSelect.appendChild(new Option("남원시", "남원시"));
                                                            townSelect.appendChild(new Option("무주군", "무주군"));
                                                            townSelect.appendChild(new Option("부안군", "부안군"));
                                                            townSelect.appendChild(new Option("순창군", "순창군"));
                                                            townSelect.appendChild(new Option("완주군", "완주군"));
                                                            townSelect.appendChild(new Option("익산시", "익산시"));
                                                            townSelect.appendChild(new Option("임실군", "임실군"));
                                                            townSelect.appendChild(new Option("장수군", "장수군"));
                                                            townSelect.appendChild(new Option("전주시 덕진구", "전주시 덕진구"));
                                                            townSelect.appendChild(new Option("전주시 완산구", "전주시 완산구"));
                                                            townSelect.appendChild(new Option("정읍시", "정읍시"));
                                                            townSelect.appendChild(new Option("진안군", "진안군"));
                                                        }

                                                        //충남
                                                        if (citySelect.value === "충남") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("계룡시", "계룡시"));
                                                            townSelect.appendChild(new Option("공주시", "공주시"));
                                                            townSelect.appendChild(new Option("금산군", "금산군"));
                                                            townSelect.appendChild(new Option("논산시", "논산시"));
                                                            townSelect.appendChild(new Option("당진시", "당진시"));
                                                            townSelect.appendChild(new Option("보령시", "보령시"));
                                                            townSelect.appendChild(new Option("부여군", "부여군"));
                                                            townSelect.appendChild(new Option("서산시", "서산시"));
                                                            townSelect.appendChild(new Option("서천군", "서천군"));
                                                            townSelect.appendChild(new Option("아산시", "아산시"));
                                                            townSelect.appendChild(new Option("예산군", "예산군"));
                                                            townSelect.appendChild(new Option("천안시 동남구", "천안시 동남구"));
                                                            townSelect.appendChild(new Option("천안시 서북구", "천안시 서북구"));
                                                            townSelect.appendChild(new Option("청양군", "청양군"));
                                                            townSelect.appendChild(new Option("태안군", "태안군"));
                                                            townSelect.appendChild(new Option("홍성군", "홍성군"));
                                                        }

                                                        //충북
                                                        if (citySelect.value === "충북") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("괴산군", "괴산군"));
                                                            townSelect.appendChild(new Option("단양군", "단양군"));
                                                            townSelect.appendChild(new Option("보은군", "보은군"));
                                                            townSelect.appendChild(new Option("영동군", "영동군"));
                                                            townSelect.appendChild(new Option("옥천군", "옥천군"));
                                                            townSelect.appendChild(new Option("음성군", "음성군"));
                                                            townSelect.appendChild(new Option("제천시", "제천시"));
                                                            townSelect.appendChild(new Option("증평군", "증평군"));
                                                            townSelect.appendChild(new Option("진천군", "진천군"));
                                                            townSelect.appendChild(new Option("청주시 상당구", "청주시 상당구"));
                                                            townSelect.appendChild(new Option("청주시 서원구", "청주시 서원구"));
                                                            townSelect.appendChild(new Option("청주시 청원구", "청주시 청원구"));
                                                            townSelect.appendChild(new Option("청주시 흥덕구", "청주시 흥덕구"));
                                                            townSelect.appendChild(new Option("충주시", "충주시"));
                                                        }

                                                        //제주
                                                        if (citySelect.value === "제주") {
                                                            townSelect.appendChild(new Option("전체", "전체"));
                                                            townSelect.appendChild(new Option("서귀포시", "서귀포시"));
                                                            townSelect.appendChild(new Option("제주시", "제주시"));
                                                        }

                                                        $("#townSelect option:eq(0)").prop("selected", true);

                                                    }
                                                </script>

                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" id="search-cancle"
                                            data-bs-dismiss="modal"
                                            style="background-color: #fff; color: #719a60; border: 1px solid #719a60;">취소</button>
                                        <button type="button" class="btn btn-primary" id="search-btn"
                                            style="background-color: #719a60; color: #fff; border: 1px solid #719a60;"
                                            data-bs-dismiss="modal">검색</button>

                                        <!-- alert: db에서 검색할 주소 먼저 띄우기 -> search btn 클릭 시-->
                                        <!-- ++검색 눌렀을 때: AJAX 통해 값 넘어오도록 ->컨트롤러에서 VO 넘어오는지 확인 / 검색창 꺼지고 결과 화면 출력될 수 있도록-->
                                        <script>
                                            document.getElementById("search-btn").addEventListener('click', clickSearch);
                                            function clickSearch() {
                                                //학력
                                                var job_education = document.getElementById("job_education");
                                                var job_education_value = (job_education.options[job_education.selectedIndex].value);

                                                //포지션
                                                var job_position = document.getElementById("job_position");
                                                var job_position_value = (job_position.options[job_position.selectedIndex].value);

                                                //고용형태
                                                var employment_type = document.getElementById("employment_type");
                                                var employment_type_value = (employment_type.options[employment_type.selectedIndex].value);

                                                //경력사항
                                                var job_career = document.getElementById("job_career");
                                                var job_career_value = (job_career.options[job_career.selectedIndex].value);

                                                //도시
                                                var citySelect = document.getElementById("citySelect");
                                                var citySelect_value = (citySelect.options[citySelect.selectedIndex].value);

                                                //시군구
                                                var townSelect = document.getElementById("townSelect");
                                                var townSelect_value = (townSelect.options[townSelect.selectedIndex].value);


                                                alert("학력 = " + job_education_value + "포지션= " + job_position_value + " 고용형태= " + employment_type_value + " 경력사항= " + job_career_value + " 도시= " + citySelect_value + " 시/군/구= " + townSelect_value);

                                            }
                                        </script>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </ul>
                </div>
                <hr>

                <!--구인공고 리스트 (with scrap / apply btn)-->
                <!--JOB LIST -> CARD FORM (WITH APPLY / SCRAP BUTTON / PAGING) -> click this card, chage page -> detail -->
                <!--반복문 사용해 글 등록될 때마다 카드 늘어나도록-->
                <c:choose>
                    <c:when test="${loginFG == 'c'}">
                        <!--글쓰기 버튼-->
                        <div class="row row-cols-auto">
                            <!--공고 등록 -> flag, js 사용해 company user에게만 보이게-->
                            <div class="col col-lg-2">
                                <a href="recruitAdding.do"><button type="button" class="btn btn-success">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                            fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                            <path
                                                d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z" />
                                        </svg>
                                        <span>공고 등록</span>
                                    </button></a>
                            </div>
                        </div><br><br>

                        <div class="row row-cols-1 row-cols-md-3">
                            <c:forEach items="${rList}" var="recruit">
                                <div id="recruitWrap" class="recruitWrap">
                                    <div class="col-4">
                                        <div class="secContents">
                                            <div id="searchLog"></div>
                                            <div id="searchList" class="recruitList">
                                                <ul>
                                                    <li><a href="getRecruit.do?ad_id=${recruit.ad_id}" class="listCell">
                                                            <c:choose>
                                                                <c:when test="${empty recruit.company_logo_en}">
                                                                    <div class="rLogo">
                                                                        <img src="${path}/resources/imgs/pea_icon.png"
                                                                            alt="#" class="jsx-3824006232">
                                                                    </div>

                                                                </c:when>
                                                                <c:otherwise>
                                                                    <div class="rLogo">
                                                                        <img id="company_logo_en"
                                                                            src="${path}/resources/company_logo/${recruit.company_logo_en}"
                                                                            alt="#" class="jsx-3824006232">
                                                                    </div>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <div class="listCont">
                                                                <div class="rCor">
                                                                    <span class="corNm">${recruit.company_name}</span>
                                                                </div>
                                                                <div class="rTit">${recruit.ad_title}</div>
                                                                <div class="rInfo">
                                                                    <span class="rPart"> ${recruit.job_position} </span>
                                                                    <span
                                                                        class="rAddress">${recruit.company_road}</span>
                                                                </div>
                                                                <div class="rSkillBox">
                                                                    <span class="rSkill"> <span
                                                                            class="tag tag-skil">${recruit.programming_languages}</span>
                                                                    </span>
                                                                </div>

                                                            </div>
                                                            <div class="listFoot">

                                                                <div class="rAssist">
                                                                    <span> <svg id="sal-svg"
                                                                            xmlns="http://www.w3.org/2000/svg"
                                                                            width="14" height="14" fill="currentColor"
                                                                            class="bi bi-coin" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z" />
                                                                            <path
                                                                                d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                                                            <path
                                                                                d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z" />
                                                                        </svg>
                                                                        ${recruit.job_salary}</span> <span
                                                                        class="rPeriod">${recruit.application_deadline}</span>
                                                                </div>
                                                            </div>
                                                        </a></li>

                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </c:when>

                    <c:otherwise>
                        <div class="row row-cols-1 row-cols-md-3">
                            <c:forEach items="${rList}" var="recruit">

                                <div id="recruitWrap" class="recruitWrap">
                                    <div class="col-4">
                                        <div class="secContents">
                                            <div id="searchLog"></div>
                                            <div id="searchList" class="recruitList">
                                                <ul>
                                                    <li><a href="getRecruit.do?ad_id=${recruit.ad_id}" class="listCell">
                                                            <c:choose>
                                                                <c:when test="${empty recruit.company_logo_en}">
                                                                    <div class="rLogo">
                                                                        <img src="${path}/resources/imgs/pea_icon.png"
                                                                            alt="#" class="jsx-3824006232">
                                                                    </div>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <div class="rLogo">
                                                                        <img id="company_logo_en"
                                                                            src="${path}/resources/company_logo/${recruit.company_logo_en}"
                                                                            alt="#" class="jsx-3824006232">
                                                                    </div>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <div class="listCont">
                                                                <div class="rCor">
                                                                    <span class="corNm">${recruit.company_name}</span>
                                                                </div>
                                                                <div class="rTit">${recruit.ad_title}</div>
                                                                <div class="rInfo">
                                                                    <span class="rPart"> ${recruit.job_position} </span>
                                                                    <span
                                                                        class="rAddress">${recruit.company_extra}</span>
                                                                </div>
                                                                <div class="rSkillBox">
                                                                    <span class="rSkill"> <span
                                                                            class="tag tag-skil">${recruit.programming_languages}</span>
                                                                    </span>
                                                                </div>

                                                            </div>
                                                            <div class="listFoot">
                                                                <div class="rAssist">
                                                                    <span> 
                                                                    <svg id="sal-svg" xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-coin" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z" />
                                                                            <path
                                                                                d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                                                            <path
                                                                                d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z" />
                                                                        </svg>
                                                                    </span> <span>${recruit.job_salary}</span> <span
                                                                        class="rPeriod">${recruit.application_deadline}</span>
                                                                </div>
                                                            </div>
                                                            <button class="rIcon devAddScrap str_off">
                                                                <span class="skip">채용공고 스크랩</span>
                                                            </button>
                                                        </a></li>

                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </c:otherwise>
                </c:choose>

            </div>
        </section>


    </main>

	<!-- ======= Footer ======= -->
	<%@include file="../includes/footer.jsp"%>
	<!-- End Footer -->

</body>

<!-- BOOTSTRAP JS, POPPER , JQUERY -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
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