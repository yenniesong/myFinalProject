<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>회원가입</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../resources/img/favicon.png" rel="icon">
<link href="../resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">
<link rel="stylesheet" href="../resources/css/join.css" type="text/css">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../resources/vendor/aos/aos.css" rel="stylesheet">
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../resources/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="../resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../resources/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<script type="text/javascript" defer src="../resources/js/join.js"></script>
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top header-inner-pages">
		<div class="container d-flex align-items-center">
			<h1 class="logo me-auto">
				<a href="index.html">SOUPIE</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav id="navbar" class="navbar">

				<ul>
					<li><a class="nav-link scrollto active" href="#hero">홈</a></li>
					<li><a class="nav-link scrollto" href="#about">학원정보</a></li>
					<li><a class="nav-link scrollto" href="#services">취업게시판</a></li>
					<li><a class="nav-link scrollto" href="#portfolio">지식 공유</a></li>
					<li><a class="nav-link scrollto" href="#team">문의 게시판</a></li>
					<li><a class="nav-link scrollto" href="join">회원가입</a></li>
					<li><a class="getstarted scrollto" href="login">로그인</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->
		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">

				<ol>
					<li><a href="index.jsp">Home</a></li>
					<li>JOIN</li>
				</ol>
				<h2>JOIN</h2>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<section class="inner-page">
			<div class="container">
				<!-- 회원 유형 선택 -->
				<div class="user-type">
					<p>[ 회원 유형 선택 ]</p>
					<p style="color: red">* 회원유형을 먼저 선택해주세요!</p>
					<div class="checkbtn-bootcamp">
						<input type="radio" id="bootcamp" name="user-type"
							value="bootcamp"> <label for="bootcamp">학원</label>
					</div>
					<div class="checkbtn-company">
						<input type="radio" id="company" name="user-type" value="company">
						<label for="company">기업</label>
					</div>
					<div class="checkbtn-student">
						<input type="radio" id="student" name="user-type" value="student">
						<label for="student">일반</label>
					</div>
				</div>
				<!-- 일반 회원가입 -->
				<form action="student" method="post">
					<div id="student-fields" style="display: none;">
						<table id="student-fields">
							<tr>
								<th><label for="userId">아이디</label></th>
								<td><input type="text" name="userId" id="userId"
									class="userId-input" placeholder="*,/,$,@ 특수문자 제외" required
									onblur="checkId()" onkeydown="if(event.keyCode===13) checkId()">
									<br> <br> <!-- id ajax 중복체크 --> <span class="msg">아이디를
										확인해주세요</span>
									<button type="button" id="idCheck" class="idCheck">중복확인</button></td>
							</tr>
							<tr>
								<th><label for="name">이름</label></th>
								<td><input type="text" id="name" name="name"
									placeholder="*,/,$,@ 특수문자 제외" required></td>
							</tr>
							<tr>
								<th><label for="nickname">닉네임</label></th>
								<td><input type="text" id="nickname" name="nickname"
									placeholder="4글자 이상" required></td>
							</tr>
							<tr>
								<th><label for="email">이메일</label></th>
								<td><input type="email" id="email" name="email"
									placeholder="example@000.com" onclick="checkemail()" required></td>
							</tr>
							<tr>
								<th><label for="password">비밀번호</label></th>
								<td><input type="password" id="password" class="password"
									name="password" placeholder="8자리 이상 써주세요"></td>
							</tr>
							<tr>
								<th><label for="password_confirm">비밀번호 확인</label></th>
								<td><input type="password" id="password_confirm"
									class="password_confirm" name="password_confirm" required>
									<br>
									<button type="button" id="passwordbtn"
										onclick="checkPassword()">비밀번호 확인</button> <span
									id="passwordCheckResult" class="passwordCheckResult"></span></td>
							</tr>
							<tr>
								<th><label for="tel">전화번호</label></th>
								<td><input type="tel" id="tel" name="tel" required></td>
							</tr>
							<tr>
								<th><label for="birth">생년월일</label></th>
								<td><input type="date" id="birth" name="birth" required></td>
							</tr>
							<tr>
								<th><label for="gender">성별</label></th>
								<td><select id="gender" name="gender" required>
										<option value="" disabled selected>성별을 선택하세요</option>
										<option value="male">남성</option>
										<option value="female">여성</option>
								</select></td>
							</tr>
							<tr>
								<th><label for="location">거주지</label></th>
								<td><input type="text" id="location" name="location"
									required></td>
							</tr>
							<tr>
								<th><label for="position">직업</label></th>
								<td><input type="text" id="position" name="position"
									required></td>

							</tr>
							<tr>
								<th><label for="academy">소속 학원</label></th>
								<td><input type="text" id="academy" name="academy" required></td>
							</tr>
							<tr>
								<th><label for="employed">취업 여부</label></th>
								<td><input type="text" id="employed" name="employed"
									placeholder="( 예  / 아니오  )만 입력" required></td>
							</tr>
							<tr>
								<th><label for="interests">관심 분야</label></th>
								<td><select id="interests" name="interests" required>
										<option value="" disabled selected>선택해주세요</option>
										<option value="Back">Back-end</option>
										<option value="Front">Front-end</option>
										<option value="Full">Full-stack</option>
								</select></td>
							</tr>
						</table>
						<input type="submit" id="submit" class="member-btn" value="회원가입">
						<input type="reset" id="reset" name="reset" class="member-reset"
							value="취소" onclick="historyback()">
					</div>
				</form>

				<!-- 학원 회원가입 -->
				<form action="bootcamp" method="post">
					<div id="bootcamp-fields" style="display: none;">
						<table id="bootcamp-fields">
							<tr>
								<th><label for="userId">아이디</label></th>
								<td><input type="text" name="userId" id="userId"
									class="userId-input" placeholder="*,/,$,@ 특수문자 제외" required
									onblur="checkId()" onkeydown="if(event.keyCode===13) checkId()">
									<br> <br> <!-- id ajax 중복체크 --> <span class="msg">아이디를
										확인해주세요</span>
									<button type="button" id="idCheck" class="idCheck">중복확인</button></td>
							</tr>
							<tr>
								<th><label for="password">비밀번호</label></th>
								<td><input type="password" id="password" class="password"
									name="password" placeholder="8자리 이상 써주세요" oninput="checkPw()"></td>
							</tr>
							<tr>
								<th><label for="password_confirm">비밀번호 확인</label></th>
								<td><input type="password" id="password_confirm"
									class="password_confirm" name="password_confirm" required>
									<br>
									<button type="button" id="passwordbtn"
										onclick="checkPassword()">비밀번호 확인</button> <span
									id="passwordCheckResult" class="passwordCheckResult"></span></td>
							</tr>
							<tr>
								<th><label for="tel">전화번호</label></th>
								<td><input type="tel" id="tel" name="tel" required></td>
							</tr>
							<tr>
								<th><label for="bootcamp_name">학원 명</label></th>
								<td><input type="text" id="bootcamp_name"
									name="bootcamp_name" placeholder="*,/,$,@ 특수문자 제외" required></td>
							</tr>
							<tr>
								<th><label for="representative">대표자명</label></th>
								<td><input type="text" id="representative"
									name="representative" required>
							</tr>
							<tr>
								<th><label for="bootcamp_manager">담당자명</label></th>
								<td><input type="text" id="bootcamp_manager"
									name="bootcamp_manager" placeholder="*,/,$,@ 특수문자 제외" required></td>
							</tr>
							<tr>
								<th><label for="bootcamp_add">주소</label></th>
								<td><input type="text" name="bootcamp_add"
									id="bootcamp_add" placeholder="주소" required></td>
							</tr>
							<tr>
								<th><label for="bootcamp_site">사이트</label></th>
								<td><input type="text" id="bootcamp_site"
									name="bootcamp_site" placeholder="www.----.-----" required></td>
							</tr>
							<tr>
								<th><label for="email">이메일</label></th>
								<td><input type="email" id="email" name="email"
									placeholder="example@000.com" onclick="checkemail()"></td>
							</tr>
						</table>
						<input type="submit" id="submit" class="boot-btn" value="회원가입">
						<input type="reset" id="reset" name="reset" class="boot-reset"
							value="취소" onclick="historyback()">
					</div>
				</form>

				<!-- 기업 회원가입 -->
				<form action="company" method="post">
					<div id="company-fields" style="display: none;">
						<table id="company-fields">
							<tr>
								<th><label for="userId">아이디</label></th>
								<td><input type="text" name="userId" id="userId"
									class="userId-input" placeholder="*,/,$,@ 특수문자 제외" required
									onblur="checkId()" onkeydown="if(event.keyCode===13) checkId()">
									<br> <br> <!-- id ajax 중복체크 --> <span class="msg">아이디를
										확인해주세요</span>
									<button type="button" id="idCheck" class="idCheck">중복확인</button></td>
							</tr>
							<th><label for="password">비밀번호</label></th>
							<td><input type="password" id="password" class="password"
								name="password" placeholder="8자리 이상 써주세요" oninput="checkPw()"></td>
							</tr>
							<tr>
								<th><label for="password_confirm">비밀번호 확인</label></th>
								<td><input type="password" id="password_confirm"
									class="password_confirm" name="password_confirm" required>
									<br>
									<button type="button" id="passwordbtn"
										onclick="checkPassword()">비밀번호 확인</button> <span
									id="passwordCheckResult" class="passwordCheckResult"></span></td>
							</tr>
							<tr>
								<th><label for="company_name">기업명</label></th>
								<td><input type="text" id="company_name"
									name="company_name" required></td>
							</tr>
							<tr>
								<th><label for="tel">전화번호</label></th>
								<td><input type="tel" id="tel" name="tel" required></td>
							</tr>
							<tr>
								<th><label for="company_site">웹사이트</label></th>
								<td><input type="text" id="company_site"
									name="company_site" placeholder="www.----.-----" required></td>
							</tr>
							<tr>
								<th><label for="company_representative">대표자명</label></th>
								<td><input type="text" id="company_representative"
									name="company_representative" required></td>
							</tr>
							<tr>
								<th><label for="company_manager">담당자명</label></th>
								<td><input type="text" id="company_manager"
									name="company_manager" required></td>
							</tr>
							<tr>
								<th><label for="company_manager_email">담당자 이메일</label></th>
								<td><input type="email" id="company_manager_email"
									name="company_manager_email" placeholder="이메일@example.com"
									required></td>
							</tr>
							<tr>
								<th><label for="company_add">주소</label></th>
								<td><input type="text" name="company_add" id="company_add"
									placeholder="주소"></td>
							</tr>

							<tr>
								<th><label for="employee_cnt">종사자 수</label></th>
								<td><input type="number" id="employee_cnt"
									name="employee_cnt" placeholder="-명 입력 X" required></td>
							</tr>
							<tr>
								<th><label for="establishment_date">설립일</label></th>
								<td><input type="date" id="establishment_date"
									name="establishment_date" required></td>
							</tr>
							<tr>
								<th><label for="insurances">보험 가입 여부</label></th>
								<td><select id="insurances" name="insurances" required>
										<option value="" disabled selected>선택헤주세요</option>
										<option value="Y">네</option>
										<option value="N">아니오</option>
								</select></td>
							</tr>
							<tr>
								<th><label for="company_type">업종</label></th>
								<td><input type="text" id="company_type"
									name="company_type" placeholder="2글자 이상입력" required></td>
							</tr>
							<tr>

								<th><label for="sales">매출액</label></th>
								<td><input type="text" id="sales" name="sales"
									placeholder="ex> -억원, (,콤마)금지" required></td>
							</tr>
						</table>
						<input type="submit" id="submit" class="company-btn" value="회원가입">
						<input type="reset" id="reset" name="reset" class="company-reset"
							value="취소" onclick="historyback()">
					</div>
				</form>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-newsletter">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<h4>Join Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
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
							A108 Adam Street <br> New York, NY 535022<br> United
							States <br> <br> <strong>Phone:</strong> +1 5589 55488
							55<br> <strong>Email:</strong> info@example.com<br>
						</p>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Social Networks</h4>
						<p>Cras fermentum odio eu feugiat lide par naso tierra videa
							magna derita valies</p>
						<div class="social-links mt-3">
							<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
								href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
								href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
							<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
							<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="container footer-bottom clearfix">
			<div class="copyright">
				&copy; Copyright <strong><span>Arsha</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>

		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<!-- Vendor JS Files -->
	<script src="../resources/vendor/aos/aos.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../resources/vendor/php-email-form/validate.js"></script>
	<script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/vendor/waypoints/noframework.waypoints.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/js/main.js"></script>


	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>

</html>