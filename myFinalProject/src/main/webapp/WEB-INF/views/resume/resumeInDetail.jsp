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


/*company logo section*/
.user_photo {
	position: relative;
	width: 300px;
	height: 200px;
	padding: 20px 0px;
	background-color: rgb(238, 239, 244);
	margin-bottom: 16px;
}

.user_photo_img {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-position: center bottom;
	background-size: contain;
	display: flex;
	align-items: center;
}

/*company info*/
.user_info_box {
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

	

	/*company logo section*/
	.user_photo {
		position: relative;
		width: 300px;
		height: 200px;
		padding: 20px 0px;
		background-color: rgb(238, 239, 244);
		margin-bottom: 16px;
	}
	.user_photo_img {
		width: 100%;
		height: 100%;
		background-repeat: no-repeat;
		background-position: center bottom;
		background-size: contain;
		display: flex;
		align-items: center;
	}

	/*company info*/
	.user_info_box {
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

	
	/*company logo section*/
	.user_photo {
		position: relative;
		width: 300px;
		height: 200px;
		padding: 20px 0px;
		background-color: rgb(238, 239, 244);
		margin-bottom: 16px;
	}
	.user_photo_img {
		width: 100%;
		height: 100%;
		background-repeat: no-repeat;
		background-position: center bottom;
		background-size: contain;
		display: flex;
		align-items: center;
	}

	/*company info*/
	.user_info_box {
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

	/*company logo section*/
	.user_photo {
		position: relative;
		width: 300px;
		height: 200px;
		padding: 20px 0px;
		background-color: rgb(238, 239, 244);
		margin-bottom: 16px;
	}
	.user_photo_img {
		width: 100%;
		height: 100%;
		background-repeat: no-repeat;
		background-position: center bottom;
		background-size: contain;
		display: flex;
		align-items: center;
	}

	/*company info*/
	.user_info_box {
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
	font-size: 20px;
	line-height: 200%;
	text-align: justify;
	border: 1px solid #afb3ae;
	border-radius: 10px;
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
					<li>Resume</li>
				</ol>
				<h2>RESUME DETAIL</h2>
			</div>
		</section>

		<section class="inner-page">
<!-- 수정 / 삭제 버튼 -->
			<div class="container">
				<c:choose>
					<c:when test="${loginFG == 'm' }">
						<c:if test="${resume.userId eq userId}">
							<!-- 수정 form tag 이용해 수정 버튼 클릭 후 모달에서도 확인 클릭 시  -->
							<a href="/resume/resumeUpdating.do?no=${resume.resume_id}" class=update-href><button type="button" class="update-btn" data-bs-toggle="modal" data-bs-target="#update">
								<i class="bi bi-vector-pen"></i>수정
							</button></a>
							<script type="text/javascript">
							$(".update-btn").on("click",function(){
								let location = document.getElementByClass(".update-href");
								console.log(location);
							});
							</script>
							<!-- 삭제 -> form tag 이용해 삭제 버튼 클릭해 삭제하게 될 경우 delete page로 이동-->
							<button type="button" class="delete-btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
								<i class="bi bi-trash3"></i>삭제
							</button>
			<!-- modal for delete -->
			<form action="deleteResume.do?userId=<%=userId %>" method="post">
			<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">DELETE RESUME</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       이력서를 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <input type="hidden" name="resume_id" value="${resume.resume_id }">
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




			<div class="row">
				<br>
				<div class="col">
					<!-- title -->
					<p id="ad-title">${resume.resume_title}</p>

				</div>
			</div>

			<div class="row">
				<div class=" col-5">
					<!-- user_photo -->
					<div class="user_photo">
						
							<img class="user_photo_img" alt="#"
								src="${path}/resources/user_photo/${resume.user_photo_en}" />
							<input type="hidden" name="userId"
								value="${resume.userId}" />
						
					</div>

					<!-- company ad list link -->
					<!-- company_name with link -->
					<div class="row">
						<div class="user_info_box">
							<p id="text-for-sum">
								<i class="bi bi-person"></i>${resume.user_name}</p>
						</div>
					</div>
				</div>

				<div class="col-md-7 col-xs-7">
					<p id="text-for-sum">
						<i class="bi bi-envelope-at"></i>${resume.user_email}</p>
					<p id="text-for-sum">
						<i class="bi bi-telephone"></i>${resume.user_phone_number}</p>
					<p id="text-for-sum">
						<i class="bi bi-geo-alt" id="svg-for-sum"></i>${resume.user_address}</p>
					<p id="text-for-sum">
						<i class="bi bi-mortarboard" id="svg-for-sum"></i>${resume.user_education}</p>
					<p id="text-for-sum">
						<i class="bi bi-code-slash" id="svg-for-sum"></i>${resume.user_skills}</p>
					<p id="text-for-sum">
						<i class="bi bi-link-45deg"></i><a href="${resume.user_portfolio_link}">${resume.user_portfolio_link}</a></p>
				</div>
			</div>

		

			<div class="row" id="decription-part">
				<!--detail description part-->
				<div class="description">
					<p id="description">EXPERIENCE</p>
					<div class="text-box">${resume.user_experience}</div>
				</div>
        <br>
          <div class="description">
            <p id="description">INTRODUCE</p>
            <div class="text-box">${resume.self_introduce}</div>
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