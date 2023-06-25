<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	HttpSession tSession = request.getSession();
	
	String userId = (String)tSession.getAttribute("userId");
	String userName = (String)tSession.getAttribute("name");	/* 학원은 학원 명, 학생은 학생 명, 기업은 기업 명을 가져와야함 */
	String loginFG = (String)tSession.getAttribute("loginFG");
	
	System.out.println("userId : " + userId);
	System.out.println("userName : " + userName);
	System.out.println("loginFG : " + loginFG);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>Teacher In Detail</title>
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
        border: 1px solid rgb(223, 223, 223);
	    border-radius: 10px;
	    margin-bottom: 2px;
    }
    .auth-popup.jsx-4149508951 {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
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
    .popup_on {
    	display: none;
    }
    .fname_en {
		width: 238px;
    	height: 238px;
    }
    .on {
    	display: none !important;
    }
    form {
    	margin: 0px;
    }
    
    .rating {
        position: relative;
        width: 180px;
        background: transparent;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: .3em;
        padding: 5px;
        overflow: hidden;
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
</style>
<style id="__jsx-1629185219">
    .search-result.jsx-1629185219 {
        margin-top: 8px;
        background-color: rgb(255, 255, 255);
        border: 1px solid rgb(223, 223, 223);
        overflow: hidden;
    }

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
    }

    ul.header--tab.jsx-1629185219 {
        overflow: hidden;
    }

    ul.header--tab.jsx-1629185219 li.on.jsx-1629185219 {
        background-color: rgb(255, 255, 255);
    }
    
    ul.header--tab.jsx-1629185219 li.on.jsx-1629185219 a.jsx-1629185219 {
        color: rgb(63, 96, 204);
        font-weight: 700;
    }

    ul.header--tab.jsx-1629185219 li.jsx-1629185219 a.jsx-1629185219, ul.header--tab.jsx-1629185219 li.jsx-1629185219 span.jsx-1629185219 {
        color: rgb(102, 102, 102);
    }

    ul.header--tab.jsx-1629185219 li.jsx-1629185219 {
        width: 12.5%;
        height: 62px;
        float: left;
        text-align: center;
        background-color: rgb(238, 239, 244);
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;
    }
    .title.jsx-1629185219 {
        -webkit-box-pack: justify;
        justify-content: space-between;
        align-items: flex-end;
        margin-bottom: 24px;
        padding-bottom: 16px;
        border-bottom: 1px solid rgb(102, 102, 102);
    }
</style>
<style id="__jsx-2704879397">
    .star-2.jsx-2704879397 {
        background-image: url("https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_card_star01_normal01_on.png");
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
    background-color: rgb(255, 255, 255);
    padding: 40px 40px 32px;
    border: 1px solid rgb(223, 223, 223);
    margin-bottom: 8px;
  }

  @media (max-width:1199px) {
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

    .main-card.jsx-3239872667 .btn-evaluation:hover,
    .main-card.jsx-3239872667 .btn-evaluation:focus {
      background-color: #2c428d;
    }
  }
</style>
<style id="__jsx-1020960270">
  .message.jsx-1020960270 {
    display: flex;
    align-items: flex-start;
    -webkit-box-pack: justify;
    justify-content: space-between;
    padding-bottom: 16px;
    margin-bottom: 24px;
    border-bottom: 1px solid rgb(223, 223, 223);
  }

  .title.jsx-1020960270 span.jsx-1020960270 {
    font-size: 28px;
    font-weight: 700;
  }

  .title.jsx-1020960270 p.jsx-1020960270 {
    color: rgb(102, 102, 102);
  }

  .rating.jsx-1020960270 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: flex-end;
    -webkit-box-align: flex-end;
    -ms-flex-align: flex-end;
    align-items: flex-end;
  }

  .rating.jsx-1020960270 .score.jsx-1020960270 {
    font-size: 14px;
    color: #666666;
    margin-right: 8px;
  }

  .rating.jsx-1020960270 .score.jsx-1020960270>span.jsx-1020960270 {
    font-size: 40px;
    font-weight: 700;
    color: #212121;
    line-height: 100%;
  }

  @media (max-width:1199px) {
    .message.jsx-1020960270 {
      padding-bottom: 0;
      margin-bottom: 0;
      border-bottom: 0;
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      -webkit-flex-direction: column-reverse;
      -ms-flex-direction: column-reverse;
      flex-direction: column-reverse;
    }

    .title.jsx-1020960270 span.jsx-1020960270 {
      display: none;
    }

    .rating.jsx-1020960270 {
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .rating.jsx-1020960270 .score.jsx-1020960270>span.jsx-1020960270 {
      font-size: 32px;
      line-height: normal;
    }
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
<style id="__jsx-216214598">
  .content.jsx-216214598 {
      display: flex;
  }
  .content.jsx-216214598 .btn-enroll {
      background-color: rgb(223, 223, 223);
  }
  .content.jsx-216214598 .btn-follow {
      background-color: rgb(61,203,71);
  }
  .content.jsx-216214598 .btn-follow span {
      margin-left: 8px;
      color: rgb(255,255,255);
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
      margin-bottom: 8px;
  }
  .content.jsx-216214598 .btn-evaluation img {
      margin-left: 4px;
  }
  .content.jsx-216214598 .btn-evaluation {
      border-radius: 32px;
      color: rgb(61,203,71);
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
      min-width: 280px;
      margin-right: 20px;
  }
  .flex-right.jsx-216214598 {
      width: 100%;
  }
  .profile.jsx-216214598 {
      position: relative;
      width: 100%;
      height: 280px;
      padding: 0px 20px;
/*       background-color: rgb(238, 239, 244); */
	  border: 1px solid rgb(238, 239, 244);
      margin-bottom: 16px;
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
      height: 342px;
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
  li.jsx-3839070939 {
      position: relative;
      background-color: rgb(255, 255, 255);
      border-radius: 4px;
      margin-bottom: 8px;
      padding: 12px;
      cursor: pointer;
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
  
  h4.jsx-644785032 {
      display: flex;
      width: 100%;
      font-size: 17px;
      margin-top: 12px;
  }
  h4.jsx-644785032 > span.jsx-644785032 {
      text-overflow: ellipsis;
      white-space: nowrap;
      overflow: hidden;
      padding: 0px 5px;
  }
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
/*       margin-right: auto; */
      margin-left: 628px;
      padding-bottom: 8px;
  }
  .star-box.jsx-644785032 > span.jsx-644785032 {
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
/*       border-right: 1px solid rgb(223, 223, 223); */
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
          <li>Teacher</li>
        </ol>
        <h2>TEACHER</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    

    <section class="inner-page">
      <div class="container">
        <div class="jsx-722889332 content">

          <div class="jsx-3810764099 board-box">
            <div class="jsx-2656936329 content-box">
              <div class="jsx-2656936329 card-box"> 
                  
                <div class="jsx-1629185219 title mb-3">
                  <h4 class="jsx-1629185219">TEACHER</h4>
                  <p class="jsx-1629185219">
                   	 누가 나와 잘 맞는 선생님일까?
                  </p>
                </div>

                  
                <div class="jsx-3239872667 main-card">
                  <div class="jsx-1020960270 message">
                    <div class="jsx-1020960270 title" style="text-align: justify;">
	                   	<input type="hidden" name="teacher_id" value="${teacher.teacher_id }">			
	                   	<input type="hidden" name="teacher_bootcamp_id" value="${teacher.bootcamp_id }">			
	                   	<input type="hidden" name="teacher_bootcamp_id" value="${teacher.position_id }">			
	                   	<input type="hidden" name="teacher_bootcamp_id" value="${teacher.position }">			
						<span class="jsx-1020960270">${teacher.teacher_name } 선생님</span>
                      	<p class="jsx-1020960270">${teacher.short_description }</p>
                    </div>
                    <div class="jsx-1020960270 rating">
                      <span class="jsx-1020960270 score">
                        <span class="jsx-1020960270">7.6</span> 
                        / 10
                      </span>
                      <div class="jsx-2007872434 stars">
                        <div class="jsx-2007872434 star star-2"></div>
                        <div class="jsx-2007872434 star star-2"></div>
                        <div class="jsx-2007872434 star star-2"></div> 
                        <div class="jsx-2007872434 star star-2"></div>
                        <div class="jsx-2007872434 star star-0"></div>
                      </div>
                    </div>
                  </div>
          
                  <div class="jsx-216214598 content">
                    <div class="jsx-216214598 flex-left">
                      <div class="jsx-216214598 profile">
                        <div class="jsx-216214598 tutor-image">
              				<img class=fname_en src="/resources/upload/${teacher.fname_en}" alt="#"/>
                        </div>
                      </div>
          
                      <div class="jsx-216214598 btn-box">
                        <button class="jsx-3857673807 btn-follow" type="button">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
                            <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                          </svg>
                          <span class="jsx-216214598">팔로우하고 더 많은 자료보기</span>
                        </button>
                        <button class="jsx-3857673807 btn-enroll" type="button">
                          <span class="jsx-216214598">수강신청하기</span>
                        </button>
                      </div>
                    </div>
          
                    <div class="jsx-216214598 flex-right">
                    	<c:choose>
                    		<c:when test="${loginFG == 'b'}">
                    		
		          			<c:if test="${teacher.bootcamp_name eq userName}"> <!-- db에 저장된 학원이름과 세션에 등록된 name과 같으면 수정할 수 있음 -->
		          			
		          			<!-- 해당 학원일 경우에만 수정하기 버튼 및 삭제 버튼 기능 살리기 / 세션의 아이디와 작성한 학원의 userId 가 같을대 살려기 -->
	<%-- 	          			 <c:if test=""></c:if> --%>
			                      <div class="jsx-216214598 title">
			                        <button class="jsx-3857673807 btn-evaluation updateTeacherInfo" type="button"> 수정하기
			                          <img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_page/icon_writing01.png" alt="" class="jsx-216214598">
			                        </button>
			                        <button class="jsx-3857673807 btn-evaluation" data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="submit" style="margin-left: 10px; padding: 0px 10px;"> 
			                          <img src="${path}/resources/imgs/xmark.png" alt="" class="jsx-216214598" style="margin-top: 14px; margin-right: 2px;">
			                        </button>	
			                      </div>
			                      
									<!-- Modal -->
									<form action="deleteTeacher.do" method="post" style="margin: 0px;">
										<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
										  <div class="modal-dialog">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
										        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										      </div>
										      <div class="modal-body">
										        	선생님을 삭제하시겠습니까?
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
										        <input type="hidden" name="teacher_id" value="${teacher.teacher_id }">
										        <button type="submit" class="btn btn-primary deleteTeacher">삭제</button>
										      </div>
										    </div>
										  </div>
										</div>
									</form>
		                      </c:if>
                    		</c:when>
                    	</c:choose>
	          
	                      <div class="jsx-2255129348 real-time-evaluation">
	                        <div class="jsx-2255129348 scroll-box">
	                          <ul class="jsx-2255129348">
	                            <li class="jsx-2255129348">
	                            	
	                              <span class="jsx-2255129348">${teacher.position }</span>
	                            </li>
	                            <li class="jsx-3839070939 tutor">
	                              <div class="jsx-3839070939 board-item">
	                                <div class="jsx-3839070939 title">
	                                  <span class="jsx-3839070939">${teacher.bootcamp_name }</span>
	                                </div>
	                              </div>
	                            </li>
	                            <li class="jsx-2255129348 horizontal-rule"></li>
	                            <li class="jsx-2255129348">
	                              <span class="jsx-2255129348">${teacher.course_name }</span>
	                            </li>
	                            <li class="jsx-1434886323 ">
	                              <div class="jsx-1434886323 board-item">
	                                <div class="jsx-1434886323 title">
	                                  <span class="jsx-1434886323">${teacher.description }</span>
	                                </div>
	                              </div>
	                            </li>
	                            <li class="jsx-2255129348 horizontal-rule"></li>
	                          </ul>
	                        </div>
	                      </div>
          
                    </div>
                  </div>
                </div>

                <div class="jsx-245464177 flex-box">
                  <div class="jsx-4119538605 container" style="padding: 0px;">
                    
                    <div class="jsx-4119538605 review-area">
                      <div class="jsx-4149508951 review-tab">
                        <div class="jsx-1546215327 tabs">
                          <ul class="jsx-1546215327">
                            <li class="jsx-1546215327">
                              <button class="jsx-1546215327">수강생 리뷰</button>
                            </li>
                          </ul>
          				
<!--           				  <form action="writingReview.do" method="post"> -->
          				  <input type="hidden" name="teacher_id" value="${teacher.teacher_id }">
<!--           				  <input type="hidden" name="bootcamp_id" value="">세션으로 로그인 한 사람의 bootcamp_id와 name 가져오기 -->
          
	                          <div class="jsx-1546215327 content">
	                            <div title="강사리뷰" class="jsx-4149508951">
                                <!-- 댓글이 있을 경우 -->
                                <c:choose>
                                  <c:when test="${not empty rList }">
                                  	<c:forEach items="${rList }" var="reviewList">
	                              	<div class="jsx-4149508951 review-box">
	                              
		                                <div class="jsx-644785032 review-item">
		                                
			                                  <div class="jsx-644785032 ">
			                                    <div class="jsx-644785032 info">
			                                      <div class="jsx-644785032">
			                                        <div class="jsx-1397353033 avatar">
			                                          <div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);">
			                                          </div>
			                                        </div>
			                                      </div>
			                                      <div>
				                                      <span class="jsx-644785032 nickname">${reviewList.userId }</span>
			                                      </div>
			                                      <div class="jsx-644785032 rating-btn-box">
			                                        <div class="jsx-644785032 star-box">
			                                          <span class="jsx-644785032">${reviewList.star_point }</span>
			                                          <div class="jsx-2704879397 stars">
			                                            <div class="jsx-2704879397 star star-2"></div>
			                                            <div class="jsx-2704879397 star star-2"></div>
			                                            <div class="jsx-2704879397 star star-2"></div>
			                                            <div class="jsx-2704879397 star star-2"></div>
			                                            <div class="jsx-2704879397 star star-0"></div>
			                                          </div>
			                                        </div>
			                                      </div>
			                                      
			                                    </div>
			                                  </div>
			                                  <div class="jsx-644785032 title">
			                                    <h4 class="jsx-644785032">
			                                      “ 
			                                      <span class="jsx-644785032">${reviewList.content }</span>
			                                      ”
			                                    </h4>
			                                  </div>
			                                </div>
	                              		</div>
	                              		
	                              		</c:forEach>
	                              		
	                              		<div class="jsx-4149508951 review-box">
                                          <div class="jsx-644785032 review-item">
                                            <div class="jsx-644785032 title writingArea1">
                                            <form action="writingReview.do" method="post">
	                                              <div class="jsx-644785032 info info1" style="display: block; text-align: center; border-bottom: none;">
	                                              	<span class="jsx-644785032 nickname btnWritingReview1"><a href="#">후기 작성하기</a></span>
	                                                
	                                                <div class="jsx-644785032 ">
	                                                  <div class="jsx-1397353033 avatar avatar1 on">
	                                                    <div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);">
	                                                    </div>
	                                                  </div>
	                                                </div>
	                                                <input type="hidden" name="teacher_id" value="${teacher.teacher_id }">			
	                   								<input type="hidden" name="name" value="${userName }">
	                                                <span class="jsx-644785032 nickname nickname1 on" >${userId }</span>	<!-- 로그인 한 학생의 이름 -->
	                                                <input type="hidden" name="userId" value="${userId }">
	                                              </div>
	
	                                              <!-- 해당 수강생이 답글 작성하기 눌렀을 때 -->
	                                               <div class="adminArea mb-3 showWritingInput1 on">
	                                                   <div class="input-group mb-3">
	                                                     <input type="text" class="form-control" name="content" placeholder="답글 쓰기" aria-label="Recipient's username" aria-describedby="button-addon2">
	                                                     <div class="rating">
												              <span class="rating__result"></span> 
												              <i class="rating__star far fa-star"></i>
												              <i class="rating__star far fa-star"></i>
												              <i class="rating__star far fa-star"></i>
												              <i class="rating__star far fa-star"></i>
												              <i class="rating__star far fa-star"></i>
												          </div>
	                                                     <button class="btn btn-outline-secondary gap-2 col-2 mx-auto review_post" type="submit" id="button-addon2">작성</button>
	                                                   </div>
	                                               </div>
                                               </form>
                                              </div>
                                            </div>
                                          </div>
	         					 	</c:when>
	         					 	
	         					 	<c:otherwise>
	                                    <!-- 후기가 없을때 -->
                                        <div class="jsx-4149508951 review-box">
                                          <div class="jsx-644785032 review-item noAnswer">
                                            <div class="jsx-644785032 title">
                                              
                                              <h4 class="jsx-644785032">
                                                <span class="jsx-644785032">아직 후기가 없어요</span>
                                              </h4>
                                            </div>
                                            <div class="jsx-644785032 ">
                                              <div class="jsx-644785032 info">
                                              	<c:if test="${loginFg == 'm'}">
	                                                <span class="jsx-644785032 nickname btnWritingReview"><a href="#">후기 작성하기</a></span>
                                                </c:if>
                                              </div>
                                            </div>
                                          </div>

											<!-- 로그인 하지 않았다면 로그인 팝업창 뜨게 하기 -->
											<!-- 로그인이 안되어있을 경우 뜨는 팝업 -->
											<div class="jsx-4149508951 auth-popup popup_on">
												<div class="jsx-133251687 content">
													<h5 class="jsx-133251687">로그인하고 전체보기</h5>
													<div class="jsx-133251687 btn-box">
														<div class="jsx-133251687 btn-join">
															<button type="button" class="jsx-520855050 ">회원가입</button>
														</div>
														<div class="jsx-133251687 btn-login">
															<button type="button" class="jsx-1487464557 ">로그인</button>
														</div>
													</div>
												</div>
											</div>

																		<!-- 후기가 없을때 -->
<!--                                           <div class="jsx-644785032 review-item writingArea2 on"> -->
<!-- 	                                          <div class="jsx-1546215327 content"> -->
<!-- 	                                            <div title="강사리뷰" class="jsx-4149508951"> -->
	                                              
<!-- 	                                                <div class="jsx-4149508951 review-box"> -->
<!-- 	                                                  <div class="jsx-644785032 review-item"> -->
<!-- 	                                                    <div class="jsx-644785032 title"> -->
	                                                    
<!-- 	                                                      <form action="writingReview.do" method="post"> -->
<!-- 		                                                      <div class="jsx-644785032 info"> -->
<!-- 		                                                        <div class="jsx-644785032"> -->
<!-- 		                                                          <div class="jsx-1397353033 avatar"> -->
<!-- 		                                                            <div class="jsx-1397353033 circle" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user01_09@2x.png?w=48&amp;f=webp&quot;);"> -->
<!-- 		                                                            </div> -->
<!-- 		                                                          </div> -->
<!-- 		                                                        </div> -->
<%-- 		                                                        <span class="jsx-644785032 nickname">${userId }</span>	<!-- 로그인 한 학생의 이름 --> --%>
<%-- 		                                                        <input type="hidden" name="userId" value="${userId }"> --%>
<!-- 		                                                      </div> -->
		        
<!-- 		                                                      해당 수강생이 답글 작성하기 눌렀을 때 -->
<!-- 		                                                       <div class="adminArea mb-3"> -->
<!-- 		                                                           <div class="input-group mb-3"> -->
<!-- 		                                                             <input type="text" class="form-control" placeholder="답글 쓰기" aria-label="Recipient's username" aria-describedby="button-addon2"> -->
<!-- 		                                                             <button class="btn btn-outline-secondary gap-2 col-2 mx-auto review_post" type="submit" id="button-addon2">작성</button> -->
<!-- 		                                                           </div> -->
<!-- 		                                                       </div> -->
<!-- 	                                                       </form> -->
<!-- 	                                                      </div> -->
<!-- 	                                                    </div> -->
<!-- 	                                                  </div> -->
<!-- 	                                              </div> -->
<!-- 	                                            </div> -->
<!-- 	                                          </div> -->
                                          
                                        </div>
	                            	</c:otherwise>
                            	 </c:choose>
                            	 </div>
	                         </div>
<!--                             </form> -->
                         
                          </div>
                        </div>
                      </div>
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
	
	let btn_follow = document.querySelector(".btn-follow");
	let btn_enroll = document.querySelector(".btn-enroll");
	let btn_update_teacher_info = document.querySelector(".updateTeacherInfo");
	let btn_review_post = document.querySelector(".review_post");
	let btn_deleteTeacher = document.querySelector(".deleteTeacher");
// 	let btn_writingReviewWComment = document.querySelector(".btnWritingReviewWComment");

	btn_follow.addEventListener("click", function() {
		alert("1");
	})

	
	$(function() {
		$(".btn-enroll").click(function() {
// 			가져가야할 데이터 : userId, name, teacher_id, teacher_name, course_id, course_name, bootcamp_id, bootcamp_name
			var userId = <%=userId%>;
			if (userId === null || userId === undefined || userId === '') {
				$(".auth-popup").removeClass("popup_on");
			} else {
	
				alert("수강신청하기");
			
				let userId = '<%=userId%>';
	<%-- 			let name = '<%=userName%>'; --%>
				let name = '<%=userName%>';
				let bootcampName = '${teacher.bootcamp_name }';
				let teacherId = '${teacher.teacher_id }';
				let teacherName = '${teacher.teacher_name}';
				let courseId = '${teacher.course_id}';
				let courseName = '${teacher.course_name }';
				
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
						console.log(json);
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
	
	

// 	btn_update_teacher_info.addEventListener("click", function() {
// 		location.href = 'getTeacherForUpdating.do?teacher_id='+ ${teacher.teacher_id };
// 	});

	
	let btn_writing_review1 = document.querySelector('.btnWritingReview1');
	let tSessionExists = <%= tSession != null %>; 
	
	btn_writing_review1.addEventListener("click", function () {
	    alert("리뷰 작성하기");
	    
	    // 세션이 없을 때 로그인 팝업 표시
	    if (!tSessionExists) {
	    	let popup = document.querySelector('.auth-popup');
	        popup.classList.add('popup_on'); // 팝업을 표시하기 위해 클래스 추가
		} else {

	// 	    let writing_area1 = document.querySelector('.writingArea1');
			let info1 = document.querySelector('.info1');
			let avatar1 = document.querySelector('.avatar1');
			let nickname1 = document.querySelector('.nickname1');
		    let showWritingInput1 = document.querySelector('.showWritingInput1');
	// 	    let noAnswer = document.querySelector('.noAnswer');
		
		    btn_writing_review1.classList.add('on');
	// 	    writing_area1.classList.remove('on');
		    avatar1.classList.remove('on');
		    nickname1.classList.remove('on');
		    showWritingInput1.classList.remove('on');
	// 	    noAnswer.classList.add('on');
	
			info1.removeAttribute('style');
		}
	    
    });
	
	let btn_writing_review = document.querySelectorAll('.btnWritingReview');
	
	btn_writing_review.forEach(function (btn) {
	  btn.addEventListener("click", function () {
	    alert("1");
	    let writing_review = document.querySelector('.writingArea');
	    let btn_review_post = document.querySelector('.review_post');
	    let noAnswer = document.querySelector('.noAnswer');
	
	    writing_review.classList.remove('on');
	    btn_review_post.classList.remove('on');
	    noAnswer.classList.add('on');
	  });
	});
	
	
	btn_review_post.addEventListener("click", function() {
		alert("1");
	})
	
// 	btn_writingReviewWComment.addEventListener("click", function () {
// 		alert("12");
// 	});
	
	// 별점
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
    }

    
    function printRatingResult(result, starScore = 0) {
        // result.textContent = `${num}/5`;
        console.log(starScore);
        // alert(num);
    }

    executeRating(ratingStars, ratingResult);
	


</script>

</html>