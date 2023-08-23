<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	HttpSession tSession = request.getSession();

	String userId = (String) tSession.getAttribute("userId");
	String loginFG = (String) tSession.getAttribute("loginFG");
	String name = (String)tSession.getAttribute("name");
	
	System.out.println("userId : " + userId);
	System.out.println("loginFG : " + loginFG);
	System.out.println("name : " + name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recruit Scrap</title>
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
                <h2>RECRUIT - SCRAP</h2>
            </div>
        </section>
        <!-- End Breadcrumbs -->

        <section class="inner-page">
            <div class="container">

         
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