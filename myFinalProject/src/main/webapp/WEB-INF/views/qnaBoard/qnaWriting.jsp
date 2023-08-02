<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	HttpSession mySession = request.getSession();

	System.out.println("come in writing");

	String userId = (String)mySession.getAttribute("userId");
	String loginFG = (String)mySession.getAttribute("loginFG");
	String name = (String)mySession.getAttribute("name");
// 	String academy = (String)mySession.getAttribute("academy");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>QnA write</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${path}/resources/assets/img/favicon.png" rel="icon">
<link href="${path}/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- <!-- Vendor CSS Files -->
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
    textarea {
      resize: none;
      height: 400px;
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
    .title.jsx-1629185219 {
        -webkit-box-pack: justify;
        justify-content: space-between;
        align-items: flex-end;
        margin-bottom: 24px;
        padding-bottom: 16px;
        border-bottom: 1px solid rgb(102, 102, 102);
    }
    .board-title.jsx-407192405 h3.jsx-407192405 {
        font-size: 24px;
    }
    .avatar.jsx-3763643514 {
        position: relative;
        width: 24px;
        height: 24px;
        margin: 0px auto;
    }
    .circle.jsx-3763643514 {
        position: relative;
        clear: both;
        width: 100%;
        height: 100%;
        border-radius: 50%;
        overflow: hidden;
        background-size: cover;
        background-color: rgb(223, 223, 223);
        background-position: center center;
        background-repeat: no-repeat;
    }
    .content.jsx-4039423562 {
        padding: 24px 0px;
    }
    .editor.jsx-3744650923 * {
        color: rgb(33, 33, 33);
    }
    .fr-view {
        word-wrap: break-word;
    }
    button.jsx-1625922102 {
        display: block;
        height: 42px;
        border: 1px solid rgb(223, 223, 223);
        border-radius: 21px;
        font-size: 14px;
        padding: 0px 20px;
    }
    .count.jsx-1625922102 {
        color: rgb(63, 96, 204);
        margin-left: 8px;
    }
    .count.jsx-3993525863 {
        color: rgb(255, 51, 102);
        margin-left: 8px;
    }
    .comment-header.jsx-2868521983 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        font-weight: 700;
        padding-bottom: 16px;
        border-bottom: 1px solid rgb(236, 236, 236);
    }
    span.jsx-2868521983 {
        margin-left: 4px;
        margin-right: auto;
    }
    .comment-total.jsx-2868521983 {
        color: rgb(63, 96, 204);
        margin-left: 4px;
    }
    .write-comment-box.jsx-4129687755 {
        margin-top: 24px;
    }
    .avatar.jsx-2363903998 {
        position: relative;
        width: 24px;
        height: 24px;
        margin: 0px auto;
    }
    .circle.jsx-2363903998 {
        position: relative;
        clear: both;
        width: 100%;
        height: 100%;
        border-radius: 50%;
        overflow: hidden;
        background-size: cover;
        background-color: rgb(255, 255, 255);
        background-position: center center;
        background-repeat: no-repeat;
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
    button.jsx-3240274678 {
        font-size: 14px;
        padding: 0px;
        width: 70px;
        min-width: 70px;
        height: 32px;
        line-height: 30px;
        border-radius: 0px;
        background-color: rgba(0, 0, 0, 0);
        color: rgb(33, 33, 33);
        border: 1px solid rgb(223, 223, 223);
        transition: background-color 0.3s ease 0s;
    }
    .hide-on-desktop {
        display: none;
    }
    .select-box.jsx-2395210693 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        font-weight: 700;
        padding-bottom: 16px;
    }
    .input-title.jsx-599077571 {
        margin-left: auto;
    }
    input.jsx-599077571 {
        height: 42px;
        border-bottom: solid 1px #dfdfdf;
    }
    .select.jsx-2019229575 {
        max-width: 160px;
        width: 100%;
    }
</style>
<style id="__jsx-401750031">
    .board-header.jsx-401750031 {
        border-bottom: 1px solid rgb(236, 236, 236);
        padding-bottom: 24px;
    }
    .board-header.jsx-401750031 h4.jsx-401750031 {
        font-size: 20px;
        font-weight: bold;
    }
    
    .header-info.jsx-401750031 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        font-size: 14px;
        margin-top: 12px;
    }
    .avatar-box.jsx-401750031 {
        display: flex;
        margin-right: auto;
        -webkit-box-align: center;
        align-items: center;
    }
    .avatar-box.jsx-401750031 > span.jsx-401750031 {
        margin-left: 8px;
    }
    .info-view.jsx-401750031 > span.jsx-401750031:first-child, .info-good.jsx-401750031 > span.jsx-401750031:first-child, .info-download.jsx-401750031 > span.jsx-401750031:first-child {
        color: rgb(102, 102, 102);
        margin-right: 4px;
    }
    .info-view.jsx-401750031 > svg, .info-good.jsx-401750031 > svg, .info-download.jsx-401750031 > svg {
        display: none;
    }
    .division-line {
        display: inline-block;
        width: 1px;
        height: 10px;
        background-color: #dfdfdf;
        margin: 0 10px;
    }
    .date.jsx-401750031 {
        margin-right: 8px;
    }
</style>
<style id="__jsx-654986024">
    .service.jsx-654986024 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        margin: 32px 0px;
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
    .recommend-box.jsx-654986024 {
        display: flex;
    }
</style>
<style id="__jsx-394409708">
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
    .write-comment-wrap.jsx-394409708 .profile-box.jsx-394409708 {
        display: flex;
        margin-bottom: 8px;
    }
    .write-comment-wrap.jsx-394409708 .profile.jsx-394409708 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .write-comment-wrap.jsx-394409708 .profile.jsx-394409708 > span.jsx-394409708 {
        font-size: 14px;
        font-weight: 700;
        margin-left: 8px;
    }
    .buttons.jsx-394409708 {
        display: flex;
        align-items: flex-end;
        margin: 8px;
    }
    .buttons.jsx-394409708 .button--post {
        border-radius: 16px;
        margin-left: auto;
        height: 28px;
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
                <li>Q&A</li>
                </ol>
                <h2>Q & A</h2>

            </div>
        </section><!-- End Breadcrumbs -->

        <section class="inner-page">
            <div class="container">
                <div class="jsx-722889332 content">
                    <div class="jsx-3810764099 board-box">
                        <div class="jsx-2656936329 content-box">
                            <div class="jsx-2656936329 card-box"> 
                                <div class="jsx-1629185219 title mb-3">
                                    <h4 class="jsx-1629185219">Q & A</h4>
                                    <p class="jsx-1629185219">
                                   		궁금한 건 절대 못 참아!
                                    </p>
                                </div>

								<form action="insertQnABoard.do" method="post">
	                                <div class="jsx-401750031 board-header">
	                                    <div class="jsx-401750031 classfi-text">
	                                        <div class="jsx-2395210693 select-box">
	                                            <div class="jsx-2019229575 select">
	                                                <select id="inputState" class="form-select" name="category_id">
		                                                <option selected>카테고리</option>
		                                                <option class="category_name tutor" value="1"> 강사</option>
		                                                <option class="category_name course" value="2">강좌</option>
		                                                <option class="category_name etc" value="3">기타</option>
	                                                </select>
	                                            </div>
	                                            <div class="jsx-599077571 input-title">
	                                                <input id="title" name="title" title="제목 입력" placeholder="제목을 입력해 주세요." class="jsx-599077571" value="" style="width: 600px;">
	                                            </div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="jsx-401750031 header-info">
<%-- 	                                    	<c:forEach items="${userInfo }" var="userInfo"> --%>
		                                        <div class="jsx-401750031 avatar-box">
		                                            <div class="jsx-3763643514 avatar">
		                                                <div class="jsx-3763643514 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_08@2x.png&quot;);">
		                                                </div>
		                                            </div>
													
													<input type="hidden" value="${userInfo.userId }" name="userId">
													<input type="hidden" value="${userInfo.name }" name="name">
													<input type="hidden" value="${userInfo.academy }" name="academy">
		                                            <span class="jsx-401750031"><%=userId %></span>
		                                            <span class="jsx-401750031 division-line"></span>
		                                            <span class="jsx-401750031 bootcamp-name" style="margin: 0px; color: #90d487;">${userInfo.academy }</span>
		                                        </div>
<%-- 	                                        </c:forEach> --%>
	                                        <div class="jsx-401750031 info-box">
	                                            <div class="col input-group">
	                                                <input type="password" title="비밀번호 입력" id="password" name="password" placeholder="비밀번호" class="jsx-599077571 password" value="">
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                
	                                <div class="jsx-4064263859 comment">
	                                    
	                                    <div class="jsx-4129687755 write-comment-box">
	                                        <div class="jsx-394409708 write-comment-wrap">
	                                            <div class="jsx-394409708 write-comment">
	                                                <label class="jsx-4265535288 textarea">
	                                                    <textarea id="content" name="content" class="jsx-4265535288 " placeholder="질문을 작성해주세요" style="height: 200px;"></textarea>
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
	                                        <button class="jsx-3240274678 button--post" type="submit">
	                                            <span class="jsx-654986024">등록</span>
	                                        </button>
	                                    </div>
	                                </div>
                            	</form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main><!-- End #main -->

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

<!-- my script -->
<script>
    let btnBackToList = document.querySelector('.btn-view-list');
    let btnPost = document.querySelector('.button--post');

    btnBackToList.addEventListener("click", function () {
        // 목록으로 가는 버튼
       
        // 모달로 사용할지 아예 없앨지 고민
        alert('뒤로 돌아가시겠습니까? 작성중인 글은 저장되지 않습니다.'); 
       
        history.back();   
    });

    btnPost.addEventListener("click", function () {
       // 등록 버튼
       alert('등록'); 
//        location.href = 'qnaList.html';
    });

</script>
</html>