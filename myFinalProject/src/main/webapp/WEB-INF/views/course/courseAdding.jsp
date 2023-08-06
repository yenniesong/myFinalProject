<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	HttpSession cSession = request.getSession();

	String userId = (String)cSession.getAttribute("userId");
	int bootcamp_id = (Integer)cSession.getAttribute("bootcamp_id");
	String bootcamp_name = (String)cSession.getAttribute("bootcamp_name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<title>course - adding</title>
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
/*         padding-bottom: 16px; */
    }
    .input-title.jsx-599077571 {
        margin-left: 15px;
    }
    input.jsx-599077571 {
        height: 42px;
        border-bottom: solid 1px #dfdfdf;
        margin-right: 1px;
        width: 325px;
        margin-right: 30px;
    }
    .select.jsx-2019229575 {
        max-width: 160px;
        width: 160px;
    }
    .btn-box.jsx-1968836963 {
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        margin-top: 32px;
    }
    .btn-cancel.jsx-1968836963, .btn-finish.jsx-1968836963 {
        margin: 0px 8px;
    }
    button.jsx-1389197839 {
        font-size: 16px;
        padding: 0px;
        width: 160px;
        min-width: 160px;
        height: 52px;
        line-height: 50px;
        border-radius: 26px;
        background-color: rgb(61,203,71);
        color: rgb(255, 255, 255);
        border: none;
        transition: background-color 0.3s ease 0s;
    }
    button.jsx-3357072104 {
        font-size: 16px;
        padding: 0px;
        width: 160px;
        min-width: 160px;
        height: 52px;
        line-height: 50px;
        border-radius: 26px;
        background-color: rgba(0, 0, 0, 0);
        color: rgb(33, 33, 33);
        border: 1px solid rgb(223, 223, 223);
        transition: background-color 0.3s ease 0s;
    }
    .input-group {
        position: relative;
        display: flex;
        flex-wrap: wrap;
        align-items: stretch;
        width: 100%;
        margin-bottom: 12px;
    }
    .input_file_button{
        padding: 6px 25px;
        background-color:rgb(61,203,71);
        border-radius: 26px;
        color: white;
        cursor: pointer;
    }
    .bootcamp_name.jsx-599077571 {
	    height: 42px;
	    border-bottom: solid 1px #dfdfdf;
	    margin-right: 1px;
	    width: 325px;
	    margin-right: 30px;
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

<!-- 추가로 넣은 css -->
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
        min-width: 500px;
        margin-right: 20px;
    }
    .flex-right.jsx-216214598 {
        width: 100%;
        margin: auto;
    }
    .profile.jsx-216214598 {
        position: relative;
        width: 100%;
        height: 280px;
        padding: 0px 20px;
        margin-bottom: 16px;
        border: 1px solid rgb(238, 239, 244);
        border-radius: 6px;
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
    .title.jsx-216214598 h3.jsx-216214598 > span.jsx-216214598 {
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
    }
    .scroll-box.jsx-2255129348 {
        padding: 12px;
    }
    ul.jsx-2255129348 {
        overflow: hidden;
    }
    li.jsx-2255129348 > h4.jsx-2255129348 {
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
	
				  <form action="insertCourse.do" method="post" enctype="multipart/form-data">
		              <div class="jsx-401750031 board-header">
		
		                <div class="jsx-216214598 content">
		                  <div class="jsx-216214598 flex-left">
		                    <div class="jsx-216214598 profile">
		                      <img id="preview" src="#" alt="" style="width: 100%; height: 100%;">
		                    </div>
		                    <label class="input_file_button" for="file">썸네일 업로드</label>
		                    <input type="file" id="file" name="file" style="display: none;" accept="image/*" onchange="previewImage(event);" required="required">
		                  </div>
		
		                  <div class="jsx-216214598 flex-right">
		                    <div class="jsx-401750031">
		                      <div class="jsx-401750031 classfi-text">
		                        <div class="jsx-2395210693 select-box">
		                          <div class="jsx-2019229575 select">
		                            <select id="inputState" class="form-select" name="position_id">
		                              <option selected="">카테고리</option>
		                              <option class="position front" value="1">front-end</option>
		                              <option class="position back" value="2">back-end</option>
		                              <option class="position full" value="3">full stack</option>
		                            </select>
		                          </div>
		                        </div>
		                      </div>
		                      <div class="jsx-401750031 header-info">
		
		                        <div class="jsx-401750031 info-box">
		                          <div class="col input-group">
		                          	
		                          	
		                          	<input type="hidden" name="userId" value="<%=userId%>">
	                               	<input type="hidden" name="bootcamp_id" value="<%=bootcamp_id%>">
	                               	<input type="hidden" name="bootcamp_name" value="<%=bootcamp_name%>">
	                               	
		                            <input type="text" name="course_name" title="강의명" placeholder="강의명을 작성해주세요" class="jsx-599077571" value="${course.course_name }" style="width: 100%;">
		                            <input type="text" name="price" title="가격" placeholder="훈련비를 작성해주세요" class="jsx-599077571" value="${course.price }">
	                               	<span name="bootcamp_name" class="jsx-599077571 bootcamp_name"><%=bootcamp_name%></span>
		                            <input title="훈련기간" placeholder="훈련기간을 선택해 주세요." name="course_period" class="jsx-599077571 date_range_picker" value="${course.course_period }">
		                          </div>
		                        </div>
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
		                        <textarea class="jsx-4265535288 " placeholder="강의 설명" style="height: 200px;" name="description">${course.description }</textarea>
		                      </label>
		
		                    </div>
		                  </div>
		                </div>
		                <div class="jsx-1968836963 btn-box">
		                  <div class="jsx-1968836963 btn-cancel">
		                    <button type="button" class="jsx-3357072104 ">취소</button>
		                  </div>
		                  <div class="jsx-1968836963 btn-finish">
		                    <button type="submit" class="jsx-1389197839 ">작성완료</button>
		                  </div>
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

<!-- date range picker -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<script>
	let btnCancle = document.querySelector('.btn-cancel');
	
	btnCancle.addEventListener("click", function() {
		alert('작성중인 글은 저장되지 않습니다.');
		history.back();
	});
	
	function previewImage(event) {
		var reader = new FileReader();
		reader.onload = function() {
			var output = document.getElementById('preview');
			output.src = reader.result;
		}
		reader.readAsDataURL(event.target.files[0]);
	}
  
	$(function() {
		$('input[name="course_period"]').daterangepicker(
				{
					"locale" : {
						"format" : "YYYY-MM-DD",
						"separator" : " ~ ",
						"applyLabel" : "확인",
						"cancelLabel" : "취소",
						"fromLabel" : "From",
						"toLabel" : "To",
						"customRangeLabel" : "Custom",
						"weekLabel" : "W",
						"daysOfWeek" : [ "월", "화", "수", "목", "금", "토", "일" ],
						"monthNames" : [ "1월", "2월", "3월", "4월", "5월", "6월",
								"7월", "8월", "9월", "10월", "11월", "12월" ],
						"firstDay" : 1
					},
					"startDate" : new Date(),
					"endDate" : new Date(),
					"drops" : "auto"
				},
				function(start, end, label) {
					console.log('New date range selected: '
							+ start.format('YYYY-MM-DD') + ' to '
							+ end.format('YYYY-MM-DD') + ' (predefined range: '
							+ label + ')');
				});
	});
</script>
</html>