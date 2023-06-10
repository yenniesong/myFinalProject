<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	HttpSession tSession = request.getSession();

	String userId = "steve";
	String loginFG = "m";
// 	String userId = (String)tSession.getAttribute("userId");
// 	String loginFG = (String)tSession.getAttribute("loginFG");
	
// 	String admin = null;
//     String student = null;
//     String company = null;
    String educator = "steve";
    
    String userNick = "sexy steve";
    
//     if (session.getAttribute("userId") != null) {
     
// 		if (session.getAttribute("admin") != null ) {
// 			admin = (String) session.getAttribute("admin"); 
// 		} else if (session.getAttribute("student") != null ) {
// 			student = (String) session.getAttribute("student"); 
// 		} else if (session.getAttribute("company") != null ) {
// 			company = (String) session.getAttribute("company"); 
// 		} else if (session.getAttribute("educator") != null) {
// 			educator = (String) session.getAttribute("educator");	
// 		}
	
//     }
    	
//     if (session.getAttribute("userNick") != null) {
//     	userNick = (String) session.getAttribute("userNick");
//     }
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>Teacher - main</title>
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

    .result-text.jsx-1629185219, .result-none.jsx-1629185219 {
        padding: 48px 0px 32px;
        text-align: center;
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
    
    .tutorsLi {
    	display: none;
    }
    
    .fname_en {
    	width: 150px;
    	height: 150px;
    }

</style>
<style id="__jsx-2875758176">
  .sections.jsx-2875758176 {
    padding: 48px 40px;
  }

  .sections.jsx-2875758176 .no-review {
    margin-bottom: 24px;
  }

  .reviews.jsx-2875758176 {
    overflow: hidden;
    margin-bottom: 24px;
  }

  .reviews.jsx-2875758176:empty {
    display: none;
  }

  .reviews--normal.jsx-2875758176 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
  }

  .reviews--normal.jsx-2875758176>.review-item:nth-of-type(1) {
    padding: 0 32px 0 0;
  }

  .reviews--normal.jsx-2875758176>.review-item:nth-of-type(2) {
    padding: 0 0 0 32px;
  }

  .reviews--normal.jsx-2875758176>.review-item:nth-of-type(1):after {
    top: 0;
    height: 100%;
  }

  ul.jsx-2875758176 {
    overflow: hidden;
    margin-bottom: 16px;
  }

  ul.institutes.jsx-2875758176,
  ul.tutors.jsx-2875758176 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-bottom: 0;
  }

  ul.institutes.jsx-2875758176 li.jsx-2875758176,
  ul.tutors.jsx-2875758176 li.jsx-2875758176 {
    width: 33.33%;
    padding-right: 20px;
    padding-bottom: 24px;
  }

  ul.institutes.jsx-2875758176 li.jsx-2875758176:nth-of-type(3n),
  ul.tutors.jsx-2875758176 li.jsx-2875758176:nth-of-type(3n) {
    padding-right: 0;
  }

  ul.board.jsx-2875758176 {
    margin-top: -16px;
    margin-bottom: 0;
  }

  ul.board.jsx-2875758176 li.jsx-2875758176 {
    border-bottom: solid 1px #ececec;
  }

  ul.board.jsx-2875758176 li.jsx-2875758176:last-child {
    border-bottom: none;
  }

  ul.jsx-2875758176:empty {
    display: none;
  }

  .reviews--transfer.jsx-2875758176>a {
    height: auto;
  }

  .reviews--transfer.jsx-2875758176>a .review {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
  }

  .reviews--transfer.jsx-2875758176>a .header {
    padding-top: 0;
    padding-bottom: 15px;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
  }

  .reviews--transfer.jsx-2875758176>a .img-arrow {
    margin: 0 60px;
    -webkit-align-self: center;
    -ms-flex-item-align: center;
    align-self: center;
  }

  .reviews--transfer.jsx-2875758176>a .tutor-box {
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-align-items: flex-start;
    -webkit-box-align: flex-start;
    -ms-flex-align: flex-start;
    align-items: flex-start;
    -webkit-box-pack: start;
    -webkit-justify-content: flex-start;
    -ms-flex-pack: start;
    justify-content: flex-start;
    min-width: 280px;
    padding-left: 32px;
  }

  .reviews--transfer.jsx-2875758176>a .tutor-box .tutor-info:before {
    line-height: 27px;
    font-size: 18px;
    font-weight: 700;
    color: #666666;
  }

  .reviews--transfer.jsx-2875758176>a .tutor-box:first-child .tutor-info:before {
    content: 'Before';
  }

  .reviews--transfer.jsx-2875758176>a .tutor-box:nth-of-type(2) .tutor-info:before {
    content: 'After';
  }

  .reviews--transfer.jsx-2875758176>a .tutor-info {
    -webkit-align-items: flex-start;
    -webkit-box-align: flex-start;
    -ms-flex-align: flex-start;
    align-items: flex-start;
    padding-left: 16px;
  }

  .reviews--transfer.jsx-2875758176>a .general-review {
    width: 325px;
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    padding-left: 48px;
    height: 88px;
    -webkit-box-pack: start;
    -webkit-justify-content: flex-start;
    -ms-flex-pack: start;
    justify-content: flex-start;
  }

  .reviews--transfer.jsx-2875758176>a .general-text {
    padding-left: 28px;
  }

  .reviews--transfer.jsx-2875758176>a .general-text span {
    margin: 0;
    line-height: 33px;
  }

  .reviews--transfer.jsx-2875758176>a .general-text .description {
    display: block;
    font-size: 14px;
    line-height: 18px;
  }

  .reviews--transfer.jsx-2875758176>a .rating-box {
    position: relative;
    margin-top: 20px;
  }

  .reviews--transfer.jsx-2875758176>a .rating-box .author {
    display: block;
  }

  @media (max-width:1199px) {
    .sections.jsx-2875758176 {
      padding: 24px 16px;
    }

    .sections.sections--top.jsx-2875758176 {
      background-color: #f6f8fc;
    }

    .sections.sections--top.jsx-2875758176+.banner {
      min-height: 70px;
    }

    ul.institutes.jsx-2875758176 {
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
    }

    ul.institutes.jsx-2875758176>li.jsx-2875758176,
    ul.tutors.jsx-2875758176>li.jsx-2875758176 {
      width: 100%;
      padding: 0 0 8px 0;
    }

    ul.institutes.jsx-2875758176>li.jsx-2875758176:last-child,
    ul.tutors.jsx-2875758176>li.jsx-2875758176:last-child {
      padding-bottom: 24px;
    }

    .reviews--normal.jsx-2875758176 {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
    }

    .reviews--normal.jsx-2875758176>.review-item {
      width: 100%;
    }

    .reviews--normal.jsx-2875758176>.review-item:nth-of-type(1) {
      padding: 0 0 24px 0;
      margin-bottom: 24px;
      border-bottom: 1px solid #dfdfdf;
    }

    .reviews--normal.jsx-2875758176>.review-item:nth-of-type(2) {
      padding: 0;
    }

    .reviews--normal.jsx-2875758176>.review-item:nth-of-type(1):after {
      display: none;
    }

    .reviews--normal.jsx-2875758176>.review-item .star-box {
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
      -webkit-align-items: flex-start;
      -webkit-box-align: flex-start;
      -ms-flex-align: flex-start;
      align-items: flex-start;
      -webkit-box-pack: end;
      -webkit-justify-content: flex-end;
      -ms-flex-pack: end;
      justify-content: flex-end;
      padding-bottom: 0;
    }

    .reviews--normal.jsx-2875758176>.review-item .star-box>span {
      font-size: 20px;
      line-height: normal;
    }

    .reviews--transfer.jsx-2875758176>a .img-arrow {
      margin: 0 16px 56px;
    }

    .reviews--transfer.jsx-2875758176>a .tutor-box {
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      min-width: auto;
      max-width: 96px;
      padding-left: 0;
    }

    .reviews--transfer.jsx-2875758176>a .tutor-box .tutor-info {
      padding-left: 0;
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .reviews--transfer.jsx-2875758176>a .tutor-box .tutor-info:before {
      display: none;
    }

    .reviews--transfer.jsx-2875758176>a .tutor-box .tutor-info .name {
      max-width: 96px;
    }

    .reviews--transfer.jsx-2875758176>a .general-review {
      width: auto;
      height: auto;
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
      padding: 0 16px;
    }

    .reviews--transfer.jsx-2875758176>a .general-review .general-text {
      padding-left: 0;
    }

    .reviews--transfer.jsx-2875758176>a .general-review .general-text>span {
      line-height: 40px;
      white-space: nowrap;
    }

    .reviews--transfer.jsx-2875758176>a .general-review .general-text .description {
      display: none;
    }

    .reviews--transfer.jsx-2875758176>a .rating-box {
      padding-top: 20px;
    }

    .reviews--transfer.jsx-2875758176>a .rating-box .author {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
      line-height: normal;
      top: auto;
    }

    .reviews--transfer.jsx-2875758176>a .rating-box .author>span:nth-of-type(2) {
      display: none;
    }
  }
</style>
<style id="__jsx-283961174">
    .title.jsx-283961174 {
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
        border-bottom: 1px solid rgb(33, 33, 33);
        padding-bottom: 8px;
        margin-bottom: 24px;
    }

    h3.jsx-283961174 {
        font-size: 18px;
    }

    h3.jsx-283961174 > span.jsx-283961174 {
        color: rgb(63, 96, 204);
    }
</style>
<style id="__jsx-445560552">
    .card.jsx-445560552 {
        position:relative;
        display:block;
        width:100%;
        height:185px;
        background-color:#ffffff;
        -webkit-transition:box-shadow 0.2s;
        transition:box-shadow 0.2s;
        overflow:hidden;
    }
    .card.jsx-445560552:before {
        content:'';
        position:absolute;
        top:0;
        left:0;
        width:100%;
        height:100%;
        background-image:linear-gradient(63deg, #719a60, #1dc078);
        opacity:0;
        -webkit-transition:opacity 0.2s;
        transition:opacity 0.2s;
    }
    .content.jsx-445560552 {
        position:relative;
        display:-webkit-box;
        display:-webkit-flex;
        display:-ms-flexbox;
        display:flex;
        -webkit-flex-direction:column;
        -ms-flex-direction:column;
        flex-direction:column;
        height:100%;
        padding:20px;
        border:1px solid #dfdfdf;
    }
    .info.jsx-445560552 {
        -webkit-flex:1 1 auto;
        -ms-flex:1 1 auto;
        flex:1 1 auto;
        text-align: left;
    }
    h3.jsx-445560552 {
        font-size:22px;
        margin-bottom:8px;
    }
    .star-mark.jsx-445560552 {
        vertical-align:1px;
        margin-left:8px;
    }
    p.jsx-445560552 {
        font-size:14px;
        color:#666666;
        width:160px;
        overflow:hidden;
        text-overflow:ellipsis;
        line-height:20px;
        height:20px;
        white-space:nowrap;
    }
    .star-box.jsx-445560552 {
        display:-webkit-box;
        display:-webkit-flex;
        display:-ms-flexbox;
        display:flex;
        -webkit-align-items:flex-end;
        -webkit-box-align:flex-end;
        -ms-flex-align:flex-end;
        align-items:flex-end;
        -webkit-flex:0 0 36px;
        -ms-flex:0 0 36px;
        flex:0 0 36px;
    }
    .star-box.jsx-445560552>span.jsx-445560552 {
        font-size:30px;
        margin-right:8px;
        font-weight:700;
        line-height:100%;
    }
    .profile-image.jsx-445560552 {
        position:absolute;
        display:-webkit-box;
        display:-webkit-flex;
        display:-ms-flexbox;
        display:flex;
        overflow:hidden;
        border-radius:50%;
    }
    .profile-image.jsx-445560552>span.jsx-445560552 {
        width:100%;
        height:100%;
        background-repeat:no-repeat;
        background-position:center center;
        background-color:#eeeff4;
        background-size:contain;
        -webkit-transition:all 0.2s;
        transition:all 0.2s;
    }
    .profile-image.tutor.jsx-445560552,.profile-image.university.jsx-445560552,.profile-image.institute.jsx-445560552 {
        right:24px;
        top:22px;
        width:140px;
        height:140px;
    }
    .profile-image.institute.jsx-445560552>span.jsx-445560552 {
        background-color:#ffffff;
    }
    .profile-image.kindergarten.jsx-445560552 {
        display:-webkit-box;
        display:-webkit-flex;
        display:-ms-flexbox;
        display:flex;
        -webkit-align-items:center;
        -webkit-box-align:center;
        -ms-flex-align:center;
        align-items:center;
        -webkit-box-pack:center;
        -webkit-justify-content:center;
        -ms-flex-pack:center;
        justify-content:center;
        right:24px;
        bottom:26px;
        width:130px;
        height:130px;
        border-radius:50%;
    }
    .btn-unfollow.jsx-445560552 {
        height:32px;
        font-size:12px;
        padding:0 16px;
        border:1px solid #dfdfdf;
        border-radius:30px;
        -webkit-transition:background-color 0.3s;
        transition:background-color 0.3s;
    }
    @media (hover:hover){
      .card.jsx-445560552:hover{box-shadow:0 5px 5px rgba(0,0,0,0.2);}
      .card.jsx-445560552:hover.jsx-445560552:before{opacity:1;}
      .card.jsx-445560552:hover .tutor.jsx-445560552 span.jsx-445560552,.card.jsx-445560552:hover .university.jsx-445560552 span.jsx-445560552{opacity:0.3;-webkit-transform:scale(1.1);-ms-transform:scale(1.1);transform:scale(1.1);}
      .card.jsx-445560552:hover .institute.jsx-445560552 span.jsx-445560552{opacity:0.3;-webkit-transform:scale(1.2);-ms-transform:scale(1.2);transform:scale(1.2);}
      .card.jsx-445560552:hover .kindergarten.jsx-445560552{opacity:0.4;}
      .card.jsx-445560552:hover .kindergarten.jsx-445560552 span.jsx-445560552{-webkit-transform:scale(1.1);-ms-transform:scale(1.1);transform:scale(1.1);background-color:rgba(255,255,255,0.3);}
      .card.jsx-445560552:hover h3.jsx-445560552,.card.jsx-445560552:hover p.jsx-445560552,.card.jsx-445560552:hover .star-box.jsx-445560552>span.jsx-445560552{color:#ffffff;-webkit-transition:color 0.1s;transition:color 0.1s;}
      .card.jsx-445560552:hover p.jsx-445560552{width:auto;}
      .card.jsx-445560552:hover .content.jsx-445560552{border:1px solid transparent;}
      .card.jsx-445560552:hover .btn-unfollow.jsx-445560552{border-color:#ffffff;color:#ffffff;}
      .btn-unfollow.jsx-445560552:hover{background-color:rgba(255,255,255,0.2);}
      .card.jsx-445560552:hover .stars .star-0{background-image:url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_card_star01_hover01_off.png);}
      .card.jsx-445560552:hover .stars .star-1{background-image:url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_card_star01_hover01_half.png);}
      .card.jsx-445560552:hover .stars .star-2{background-image:url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_card_star01_hover01_on.png);}
    }
    
    @media (max-width:1199px) {
      .card.jsx-445560552{height:146px;}
      .content.jsx-445560552{padding:16px;}
      .profile-image.tutor.jsx-445560552,.profile-image.university.jsx-445560552,.profile-image.institute.jsx-445560552,.profile-image.kindergarten.jsx-445560552{right:16px;top:29px;width:88px;height:88px;}
      h3.jsx-445560552{font-size:18px;margin-bottom:4px;}
      .star-mark.jsx-445560552{vertical-align:1px;margin-left:8px;}
      p.jsx-445560552{font-size:13px;color:#666666;}
      .star-box.jsx-445560552>span.jsx-445560552{font-size:20px;margin-right:4px;}
      .card.jsx-445560552 .stars .star{margin-right:2px;}
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
<style id="__jsx-2373216897">
    .search-page.kindergarten.jsx-2373216897 .search-box.jsx-2373216897 {
        background-image:linear-gradient(261deg,#f65d58,#ff9d1f);
    }
    .search-page.kindergarten.jsx-2373216897 .recommend.jsx-2373216897 {
        color:#e76c07;
    }
    .search-page.kindergarten.jsx-2373216897 .recommend.jsx-2373216897 .arrow.jsx-2373216897 {
        border-top-color:#ff9d1f;
        border-bottom-color:#ff9d1f;
    }
    .search-page.kindergarten.jsx-2373216897 .recommend-list.jsx-2373216897 ul.jsx-2373216897 li.jsx-2373216897:hover {
        background-color:#fcf9f6;
    }
    .search-page.kindergarten.jsx-2373216897 .recommend-list.jsx-2373216897 ul.jsx-2373216897 li.jsx-2373216897:first-child .ranking.jsx-2373216897 {
        background-color:#ff9d1f;
        border:1px solid #ff9d1f;
    }
    .search-box.jsx-2373216897 {
        position:relative;
        display:-webkit-box;
        display:-webkit-flex;
        display:-ms-flexbox;
        display:flex;
        width:1008px;
        height:80px;
        border-radius:40px;
        background-image:linear-gradient(259deg,#719a60,#1dc078);
        background-origin:border-box;
        margin-bottom:40px;
    }
    .search-bar.jsx-2373216897 {
        position:relative;
        width:1000px;
        height:72px;
        border-radius:36px;
        background-color:#ffffff;
        display:-webkit-box;
        display:-webkit-flex;
        display:-ms-flexbox;
        display:flex;
        -webkit-align-items:center;
        -webkit-box-align:center;
        -ms-flex-align:center;
        align-items:center;
        margin:auto;
        padding:0 32px;
    }
    .input-box.jsx-2373216897 {
        font-size:22px;
        width:100%;
    }
    .search-bar.jsx-2373216897>.input input.typing {
        width:100%;
        height:100%;
        font-size:22px;
        border:none;
    }
    
    .search-bar.jsx-2373216897 {
        font-size:22px;
        position:absolute;
        top:50%;
        left:32px;
        -webkit-transform:translateY(-50%);
        -ms-transform:translateY(-50%);
        transform:translateY(-50%);
        padding-right:4px;
        border-right:2px solid transparent;
        pointer-events:none;
        -webkit-animation:cursor-jsx-2373216897 0.75s step-end infinite;
        animation:cursor-jsx-2373216897 0.75s step-end infinite;
    }
    @-webkit-keyframes cursor-jsx-2373216897 {
        from,to{border-color:transparent;}
        50%{border-color:rgba(93, 126, 233, 0.6);}
    }
    @keyframes cursor-jsx-2373216897 {
        from,to{border-color:transparent;}
        50%{border-color:rgba(93, 126, 233, 0.6);}
    }
    
    @media (max-width:1199px){
        .search-page.jsx-2373216897{width:100%;}
        .search-box.jsx-2373216897{width:calc(100% - 40px);margin:0 auto 52px;height:60px;}
        .search-bar.jsx-2373216897{width:100%;height:52px;margin:auto 4px;padding:0 16px;}
        .search-bar.jsx-2373216897>.input input.typing,.search-bar.jsx-2373216897 .typing-word.jsx-2373216897{font-size:16px;}
        .search-bar.jsx-2373216897 .typing-word.jsx-2373216897{left:16px;height:20px;line-height:20px;}
        .search-bar.jsx-2373216897>button.jsx-2373216897>svg{width:26px;}
        .recommend-star.jsx-2373216897{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;min-width:22px;height:22px;border-radius:50%;background-image:linear-gradient(45deg,#3f60cc,#5e3fcc);margin-right:15px;}
        .recommend-star.open.jsx-2373216897{background-image:linear-gradient(45deg,rgba(63,96,204,0.1),rgba(94,63,204,0.1));}
        .search-page.kindergarten.jsx-2373216897 .recommend-star.jsx-2373216897{background-image:linear-gradient(45deg,#ff9d1f,#f65d58);}
        .search-page.kindergarten.jsx-2373216897 .recommend-star.open.jsx-2373216897{background-image:linear-gradient(45deg,rgba(255,157,31,0.1),rgba(246,93,88,0.1));}
        .recommend-star.jsx-2373216897>img.jsx-2373216897{margin:auto;height:14px;vertical-align:1px;}
    }

</style>
<style id="__jsx-2595981909">
  .filter.jsx-2595981909 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
  }

  h4.jsx-2595981909 {
    min-width: 74px;
    margin-top: 16px;
    font-size: 14px;
  }

  .btn-all.jsx-2595981909 {
    position: relative;
    height: 32px;
    min-width: 58px;
    padding: 0 16px;
    border: 1px solid #dfdfdf;
    border-radius: 4px;
    margin: 16px 8px 0 0;
    word-break: keep-all;
    font-size: 14px;
  }

  .btn-all.on.jsx-2595981909 {
    background-color: #5d7ee9;
    color: #ffffff;
    font-weight: 700;
    border: 1px solid transparent;
  }

  ul.jsx-2595981909 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    padding: 16px 0 8px 0;
    font-size: 14px;
  }

  li.jsx-2595981909 {
    margin-right: 8px;
  }

  li.jsx-2595981909 .btn-more.jsx-2595981909 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    width: 32px;
    height: 32px;
    padding: 0;
    border: 1px solid #dfdfdf;
    border-radius: 4px;
  }

  .filter--institute.jsx-2595981909 li.jsx-2595981909 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    width: 120px;
    height: 96px;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin: 0;
  }

  @media (max-width:1199px) {
    .filter.jsx-2595981909 {
      position: relative;
      width: 100%;
    }

    .filter--institute.jsx-2595981909 {
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
      padding-top: 4px;
    }

    .filter.jsx-2595981909:not(.filter--institute) {
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      padding: 0 16px;
    }

    h4.jsx-2595981909 {
      margin: 0;
      color: #666666;
    }

    .filter--institute.jsx-2595981909 h4.jsx-2595981909 {
      padding: 0 16px;
    }

    .filter-wrap.jsx-2595981909 {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      overflow-x: auto;
    }

    .filter-wrap.jsx-2595981909::-webkit-scrollbar {
      display: none;
      width: 0;
      background: transparent;
    }

    .filter--institute.jsx-2595981909 .filter-wrap.jsx-2595981909 {
      -webkit-align-items: flex-start;
      -webkit-box-align: flex-start;
      -ms-flex-align: flex-start;
      align-items: flex-start;
    }

    .filter-wrap.jsx-2595981909 .btn-all.jsx-2595981909 button.jsx-2595981909 {
      font-size: 12px;
      padding: 0 12px;
      vertical-align: top;
    }

    .filter-wrap.jsx-2595981909 .btn-all--institute.on.jsx-2595981909 button.jsx-2595981909,
    .filter-wrap.jsx-2595981909 .btn-all.on.jsx-2595981909 button.jsx-2595981909 {
      background-color: #5d7ee9;
      color: #ffffff;
      font-weight: 700;
      border: 0;
    }

    .filter--institute-kindergarten.jsx-2595981909 .filter-wrap.jsx-2595981909 .btn-all--institute.on.jsx-2595981909 button.jsx-2595981909,
    .filter--institute-kindergarten.jsx-2595981909 .filter-wrap.jsx-2595981909 .btn-all.on.jsx-2595981909 button.jsx-2595981909 {
      background-color: #ff9d1f;
    }

    .filter-wrap.jsx-2595981909 ul.jsx-2595981909 {
      padding: 0;
    }

    .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 {
      overflow: hidden;
    }

    .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 button.jsx-2595981909 {
      position: relative;
      background-color: #ffffff;
      height: 100%;
      vertical-align: top;
    }

    .filter.jsx-2595981909:not(.filter--institute):not(.filter--institute-kindergarten) .filter-wrap.jsx-2595981909 {
      height: 42px;
      margin-right: 0px;
    }

    .filter.jsx-2595981909:not(.filter--institute):not(.filter--institute-kindergarten) .filter-wrap.jsx-2595981909 ul.jsx-2595981909 {
      -webkit-flex-wrap: nowrap;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      white-space: nowrap;
      width: 100%;
    }

    .filter.jsx-2595981909:not(.filter--institute):not(.filter--institute-kindergarten) .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 {
      margin: 0 4px 0 0;
      padding: 0;
      height: 28px;
      min-width: 47px;
    }

    .filter--institute.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 {
      padding: 8px 16px;
      width: 100%;
      -webkit-box-pack: start;
      -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
      justify-content: flex-start;
    }

    .filter--institute.jsx-2595981909 .btn-all--institute.jsx-2595981909 button.jsx-2595981909 {
      border: 1px solid #ececec;
      width: 100%;
      height: 100%;
      background-color: #ffffff;
    }

    .filter--institute.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 {
      height: 100%;
    }

    .filter--institute-kindergarten.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 {
      padding: 0;
    }

    .filter--institute.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 button.jsx-2595981909 {
      width: 100%;
      height: 82px;
      border: 1px solid #ececec;
      border-radius: 4px;
    }

    .filter--institute.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li {
      width: 33.33%;
      padding-right: 8px;
    }

    .filter--institute.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li:nth-of-type(3n) {
      padding-right: 0;
    }

    .filter.jsx-2595981909:not(.filter--institute):not(.filter--institute-kindergarten) .filter-wrap.jsx-2595981909 ul.jsx-2595981909 .btn-more-box.jsx-2595981909 {
      position: absolute;
      right: 0;
      top: 0;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      height: 100%;
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      margin: 0;
    }

    .filter.filter--institute-kindergarten.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 .btn-more-box.jsx-2595981909 {
      display: none;
    }

    .filter.jsx-2595981909:not(.filter--institute):not(.filter--institute-kindergarten) .filter-wrap.jsx-2595981909 ul.jsx-2595981909 .btn-more-box.jsx-2595981909 .more-dot.jsx-2595981909 {
      width: 34px;
      height: 100%;
      background-color: #fbfbfb;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-pack: center;
      -webkit-justify-content: center;
      -ms-flex-pack: center;
      justify-content: center;
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
    }

    .filter.jsx-2595981909:not(.filter--institute):not(.filter--institute-kindergarten) .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 .btn-more.jsx-2595981909 {
      height: 32px;
      margin: 0 16px 0 9px;
    }

    .filter--institute.jsx-2595981909 .filter-wrap.jsx-2595981909 ul.jsx-2595981909 li.jsx-2595981909 .btn-more.jsx-2595981909:after {
      content: '';
      position: absolute;
      width: 32px;
      height: 32px;
      border: 1px solid #dfdfdf;
      border-radius: 4px;
      left: 50%;
      top: 50%;
      -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%);
    }
  }

  .filter.jsx-2595981909 {
    display: flex;
  }

  h4.jsx-2595981909 {
    min-width: 74px;
    margin-top: 22px;
    font-size: 14px;
    font-weight: bold;
  }

  .btn-all.on.jsx-2595981909 {
    background-color: rgb(93, 126, 233);
    color: rgb(255, 255, 255);
    font-weight: 700;
    border: 1px solid transparent;
  }

  .btn-all.jsx-2595981909 {
    position: relative;
    height: 32px;
    min-width: 58px;
    padding: 0px 16px;
    border: 1px solid rgb(223, 223, 223);
    border-radius: 4px;
    margin: 16px 8px 0px 0px;
    word-break: keep-all;
    font-size: 14px;
  }

  ul.jsx-2595981909 {
    display: flex;
    flex-wrap: wrap;
    padding: 16px 0px 8px;
    font-size: 14px;
  }
</style>
<style id="__jsx-786344230">
  h3.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-align-items: flex-end;
    -webkit-box-align: flex-end;
    -ms-flex-align: flex-end;
    align-items: flex-end;
    font-size: 24px;
    margin-bottom: 24px;
  }

  .sort-list.jsx-786344230 {
    font-size: 14px;
    line-height: 30px;
    border-top: 1px solid #212121;
    border-bottom: 1px solid #212121;
  }

  .sort-list.jsx-786344230>li.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: flex-start;
    -webkit-box-align: flex-start;
    -ms-flex-align: flex-start;
    align-items: flex-start;
    border-bottom: 1px solid #dfdfdf;
  }

  .sort-list.jsx-786344230>li.jsx-786344230:last-child {
    border-bottom: 0;
  }

  .sort-list.jsx-786344230>li.jsx-786344230 h4.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    min-width: 74px;
    margin-top: 16px;
  }

  .sort-list.jsx-786344230>li.jsx-786344230 button.jsx-786344230:hover,
  .sort-list.jsx-786344230>li.jsx-786344230 button.jsx-786344230:focus {
    background-color: #f4f7ff;
  }

  .btn-all.jsx-786344230 {
    position: relative;
    height: 32px;
    min-width: 58px;
    padding: 0 16px;
    border: 1px solid #dfdfdf;
    border-radius: 4px;
    margin: 16px 8px 0 0;
    word-break: keep-all;
  }

  .btn-all.active.jsx-786344230 {
    background-color: #5d7ee9;
    color: #ffffff;
    font-weight: 700;
    border: 1px solid transparent;
  }

  .list-item.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    padding: 16px 0 8px 0;
  }

  .list-item.jsx-786344230>li.jsx-786344230 {
    margin-right: 8px;
  }

  .btn-more-box.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    width: 120px;
    height: 96px;
  }

  .btn-more-box.jsx-786344230 .btn-more.jsx-786344230 {
    margin: auto;
  }

  .list-item.jsx-786344230>li.jsx-786344230 .btn-more.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    width: 32px;
    height: 32px;
    padding: 0;
    border: 1px solid #dfdfdf;
    border-radius: 4px;
  }

  .btn-box.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-align-items: flex-start;
    -webkit-box-align: flex-start;
    -ms-flex-align: flex-start;
    align-items: flex-start;
    margin-top: 16px;
  }

  .btn-box.jsx-786344230 button.jsx-786344230 {
    font-size: 14px;
    color: #666666;
    -webkit-text-decoration: underline;
    text-decoration: underline;
  }

  .search-result.jsx-786344230 {
    margin-top: 56px;
  }

  .btn-add-teacher.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-align-items: flex-end;
    -webkit-box-align: flex-end;
    -ms-flex-align: flex-end;
    align-items: flex-end;
  }

  .btn-add-teacher.jsx-786344230 span.jsx-786344230 {
    font-size: 14px;
    color: #666666;
    margin-bottom: 10px;
  }

  .btn-add-teacher.jsx-786344230 img.jsx-786344230 {
    vertical-align: -3px;
    margin-right: 4px;
  }

  ul.tutors.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    margin-top: 32px;
  }

  .btn-view-more.jsx-786344230 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
  }

  @media (max-width:1199px) {
    .sort-list.jsx-786344230 {
      margin-top: 8px;
      border-color: #ececec;
    }

    .sort-list.jsx-786344230 li.jsx-786344230 {
      border-color: #ececec;
    }

    .search-result.jsx-786344230 {
      background-color: #ffffff;
      padding: 16px 16px 24px;
      margin-top: 8px;
    }

    .btn-box.jsx-786344230,
    .btn-add-teacher.jsx-786344230 {
      display: none;
    }

    .btn-view-more.jsx-786344230,
    ul.tutors.jsx-786344230 {
      margin-top: 24px;
    }
  }
  .btn-view-more.jsx-786344230 {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
}
</style>
<style id="__jsx-3824006232">
    li.jsx-3824006232 {
    margin: 0px 12px 12px 0px;
    width: 120px;
    height: 96px;
}
li.jsx-3824006232 button.jsx-3824006232 {
    position: relative;
    display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 100%;
    height: 100%;
    border-radius: 4px;
}
.logo.jsx-3824006232 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    width: 26px;
    height: 44px;
    overflow: hidden;
    background-color: rgb(255, 255, 255);
    border-radius: 50%;
    margin-bottom: 4px;
}
.logo.jsx-3824006232 img.jsx-3824006232 {
    width: 100%;
    margin: auto;
}
.name.jsx-3824006232 {
    display: block;
    line-height: 22px;
    width: 120px;
    height: 22px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
</style>
<style id="__jsx-2749561681">
  li.jsx-2749561681 {
    margin: 0px 8px 8px 0px;
    height: 32px;
  }

  li.jsx-2749561681 button.jsx-2749561681 {
    position: relative;
    width: 100%;
    height: 100%;
    padding: 0px 16px;
    border: 1px solid rgb(223, 223, 223);
    border-radius: 4px;
  }
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" id="" src="https://cdn.megadata.co.kr/js/en_script/3.6/enliple_min3.6.js"></script>


</head>
<body>
	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
	  <div class="container d-flex align-items-center">
	
	    <h1 class="logo me-auto"><a href="main.do"><img src="${path}/resources/img/soupie.png" style="margin-right: 10px; margin-bottom: 10px;">Soupie</a></h1>
	    <!-- Uncomment below if you prefer to use an image logo -->
	<!--       <a href="mainWeb" class="logo me-auto"><img src="resources/img/soupie.png" alt="" class="img-fluid"></a> -->
	
	    <nav id="navbar" class="navbar">
	      <ul>
	        <li><a class="nav-link scrollto active" href="main.do">Home</a></li>
	        <li><a class="nav-link scrollto" href="#about">About</a></li>
	        <li class="dropdown"><a class="nav-link scrollto" href="#announcements"><span>Announcements</span><i class="bi bi-chevron-down"></i></a>
	         <ul>
	            <li><a href="adminBoard.do">공지사항</a></li>
	            <li><a href="faqsBoard">FAQs</a></li>
	          </ul>
	        </li>
	        
	        <li class="dropdown"><a href="#"><span>Teacher | Course</span> <i class="bi bi-chevron-down"></i></a>
	            <ul>
	              <li><a href="/teacher/getTeacherList.do">Teacher</a></li>
	              <li><a href="/course/getCourseList.do">Course</a></li>
	              <li><a href="/qnaBorad/getQnAList.do">Teacher | Course Q&A</a></li>
	            </ul>
	          </li>
	        
	<!--           <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li> -->
	        <li><a class="nav-link scrollto" href="#team">Team</a></li>
	<!--           <li><a class="nav-link scrollto" href="#contact">Contact</a></li> -->
	         <%
	  	if (userId == null) {
	  	
	  		%>
	        <li class="dropdown"><a href="#"><span>Get online</span> <i class="bi bi-chevron-down"></i></a>
	          <ul>
	            <li><a href="/member/login">로그인</a></li>
	            <li><a href="/member/join">회원가입</a></li>
	          </ul>
	        </li>
	      <% } else { %>
<%-- 	      <% if (admin.equals("admin") ) { %> --%>
	        
<!-- 	        <li class="dropdown" id="getonline"><a href="#"><span>Get Online</span> <i class="bi bi-chevron-down"></i></a> -->
<!-- 	          <ul> -->
<!-- 	            <li><a href="badComment">신고글 관리페이지</a></li> -->
<!-- 	            <li><a href="logoutAction">로그아웃</a></li> -->
<!-- 	          </ul> -->
<!-- 	        </li> -->
<%-- 	        <% } else { %> --%>
	        
	         <li class="dropdown" id="getonline"><a href="#"><span>Get Online</span> <i class="bi bi-chevron-down"></i></a>
	          <ul>
	            <li><a href="#"><%=userNick %>페이지</a></li>
	            <li><a href="logoutAction">로그아웃</a></li>
	          </ul>
	        </li>
<%-- 	        	<%} %> --%>
	        <%} %>
	<!--           <li><a class="getstarted scrollto" href="#about">Get Started</a></li> -->
	      </ul>
	<!--         <i class="bi bi-list mobile-nav-toggle"></i> -->
	    </nav><!-- .navbar -->
	
	  </div>
	</header><!-- End Header -->

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
			          
					<!-- 선택 리스트 -->
					<div class="jsx-1629185219 search-layout">
		  
						<div class="jsx-1629185219 title">
							<h4 class="jsx-1629185219">TEACHER</h4>
							<p class="jsx-1629185219">
							 	누가 나와 잘 맞는 선생님일까?
							</p>
						</div>
			
						<div class="jsx-2373216897 search-page">
						
							<!-- 해시태그 -->
							<ul class="jsx-786344230 sort-list">
								<li class="jsx-786344230">
									<div class="jsx-2595981909 filter filter--institute">
										<h4 class="jsx-2595981909">학원</h4>
										<button type="button" class="jsx-2595981909 btn-all on">전체</button>
										<ul class="jsx-2595981909">
											<c:forEach items="${bList}" var="bootcamp">
												<li class="jsx-3824006232">
													<button type="button" class="jsx-3824006232 bootcamp_btn">
														<span class="jsx-3824006232 logo">
														<img src="${path}/resources/imgs/pea_icon.png" alt="${bootcamp.bootcamp_name}" class="jsx-3824006232"></span>
														<div class="jsx-3824006232 bootcampName">${bootcamp.bootcamp_name}</div>
													</button>
												</li>
											</c:forEach>
										</ul>
									</div>
								</li>
								<li class="jsx-786344230">
									<div class="jsx-2595981909 filter">
										<h4 class="jsx-2595981909">과목</h4><button type="button" class="jsx-2595981909 btn-all on">전체</button>
										<ul class="jsx-2595981909">
											<li class="jsx-2749561681"><button type="button" class="jsx-2749561681 position front" value="front">프론트엔드</button></li>
											<li class="jsx-2749561681"><button type="button" class="jsx-2749561681 position back" value="back">백엔드</button></li>
											<li class="jsx-2749561681"><button type="button" class="jsx-2749561681 position full" value="full">풀스택</button></li>
										</ul>
									</div>
								</li>
							</ul>
						  
						</div>
					</div>
			
					<!-- 선생님 리스트 -->
					<div class="jsx-1629185219 search-result">
					
						<div class="jsx-1629185219 content">
							<div class="jsx-2875758176 sections">
					    
								<div class="jsx-283961174 section section--search">
					
									<div class="jsx-283961174 title">
										<h2 class="jsx-283961174">TEACHER&nbsp;</h2>
									</div>
					
									<!-- 학원에서만 보이는 버튼 -->
									<!-- 로그인 플래그가 b일 경우 -->
<%-- 									<c:if test="<%=loginFG %> eq 'b'}"> --%>
<%-- 									<% if(loginFG.equals("b")) { %> --%>
										<div class="jsx-786344230 btn-add-teacher mb-3">
											<span class="jsx-786344230">새로운 선생님을 등록하실 건가요?</span>
											<button type="button" class="jsx-3375816330 addTeacher" style="width: 140px;">
												<img src="https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_plus01.png" alt="" class="jsx-786344230 ">선생님 추가하기
											</button>
										</div>
<%-- 									<% } %> --%>
<%-- 									</c:if> --%>
					
									<ul class="jsx-2875758176 tutors">
										<c:forEach items="${tList}" var="teacher">
											<li class="jsx-2875758176 tutorsLi">
												<a class="jsx-2875758176" href="getTeacher.do?teacher_id=${teacher.teacher_id }">
										
													<div tabindex="0" class="jsx-445560552 card">
														<div class="jsx-445560552 content">
															<div class="jsx-445560552 info">
																<input type="hidden" value="${teacher.teacher_id }">
																<input type="hidden" value="${teacher.bootcamp_id }">
																<h3 class="jsx-445560552">${teacher.teacher_name }</h3>
																<p class="jsx-445560552">${teacher.bootcamp_name }</p>
															</div>
								                            
															<div class="jsx-445560552 star-box">
																<span class="jsx-445560552">2.3</span>
																<div class="jsx-2704879397 stars">
																	<div class="jsx-2704879397 star star-2"></div>
																	<div class="jsx-2704879397 star star-2"></div>
																	<div class="jsx-2704879397 star star-2"></div>
																	<div class="jsx-2704879397 star star-2"></div>
																	<div class="jsx-2704879397 star star-0"></div>
																</div>
															</div>
															
															<div class="jsx-445560552 profile-image tutor">
																<c:choose>
																	<c:when test="${empty teacher.fname_en}">
																		<span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=280&amp;f=webp&quot;);"></span>
																	</c:when>
																	<c:otherwise>
								<!-- 											<span class="jsx-445560552" style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=280&amp;f=webp&quot;);"> -->
								<%-- 											  <%= teacher.fname_en %> --%>
								<!-- 											</span> -->
																		<span class="jsx-445560552">
																			<img class="fname_en" src="/resources/upload/${teacher.fname_en}" alt="#"/>
																		</span>
																	</c:otherwise>
																</c:choose>
															</div>
															
														</div>
													</div>
												
												</a>
											</li>
										</c:forEach>
					
									</ul>
									
									<div class="jsx-786344230 btn-view-more">
										<button type="button" class="jsx-1662442796 seeMore">더보기</button>
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

<!-- my js -->
<script>
	let btn_add_teacher = document.querySelector(".addTeacher");
	
	btn_add_teacher.addEventListener("click", function() {
		location.href='teacherAdding.do';
	});

	
	$(function(){
	      $(".tutorsLi").slice(0, 6).show(); // 초기갯수
	      $(".seeMore").click(function(e){ // 클릭시 more
	          e.preventDefault();
	      	
	          if($(".tutorsLi:hidden").length == 0){ // 컨텐츠 남아있는지 확인
				alert("게시글이 더 이상 없습니다.");	              
	          } else {
		          $(".tutorsLi:hidden").slice(0, 6).show(); // 클릭시 more 갯수 지저정
	        	  
	          }
	      
	      });
	  });
	
// 	let buttons = document.querySelectorAll(".bootcamp_btn");
// 	let buttonArray = Array.from(buttons);


	$(function() {
		$(".bootcamp_btn").click(function() {
			let bootcampName = $(this).find(".bootcampName").html();
			
			console.log(bootcampName);
			
			// 전송할 데이터
			let data = { 'bootcamp_name' : bootcampName };
			
			$.ajax({
				url : "searchBootcampList.do",
				type: "POST",
				data: data,
				dataType: "JSON",
				success: function (json) {
					console.log(json);
					
					let resultUl = document.querySelector(".tutors");
					resultUl.textContent = "";
					let resultBootcamps = json.bootcampNameList;
					
					for (var i = 0; i < resultBootcamps.length; i++) {
						let li = document.createElement("li");
						li.classList.add("jsx-2875758176", "tutorsLi");
						li.setAttribute("style", 'display: list-item;');
						let a = document.createElement("a");
						a.classList.add("jsx-2875758176");
						a.href = "getTeacher.do?teacher_id=" + resultBootcamps[i].teacher_id;
						
						let divCard = document.createElement("div");
						divCard.tabIndex = 0;
						divCard.classList.add("jsx-445560552", "card");
						
						let divContent = document.createElement("div");
						divContent.classList.add("jsx-445560552", "content");
						
						let divInfo = document.createElement("div");
						divInfo.classList.add("jsx-445560552", "info");
						
						let hiddenInput1 = document.createElement("input");
						hiddenInput1.type = "hidden";
						hiddenInput1.value = resultBootcamps[i].teacher_id;
						
						let hiddenInput2 = document.createElement("input");
						hiddenInput2.type = "hidden";
						hiddenInput2.value = resultBootcamps[i].bootcamp_id;
						
						let h3 = document.createElement("h3");
						h3.classList.add("jsx-445560552");
						h3.textContent = resultBootcamps[i].teacher_name;
						
						let p = document.createElement("p");
						p.classList.add("jsx-445560552");
						p.textContent = resultBootcamps[i].bootcamp_name;
						
						divInfo.appendChild(hiddenInput1);
						divInfo.appendChild(hiddenInput2);
						divInfo.appendChild(h3);
						divInfo.appendChild(p); 
						
						divContent.appendChild(divInfo);
						
						let starBox = document.createElement("div");
						starBox.classList.add("jsx-445560552", "star-box");

						let starSpan = document.createElement("span");
						starSpan.classList.add("jsx-445560552");
						starSpan.textContent = "7.6";

						let starsDiv = document.createElement("div");
						starsDiv.classList.add("jsx-2704879397", "stars");

						let star1 = document.createElement("div");
						star1.classList.add("jsx-2704879397", "star", "star-2");

						let star2 = document.createElement("div");
						star2.classList.add("jsx-2704879397", "star", "star-2");

						let star3 = document.createElement("div");
						star3.classList.add("jsx-2704879397", "star", "star-2");

						let star4 = document.createElement("div");
						star4.classList.add("jsx-2704879397", "star", "star-2");

						let star5 = document.createElement("div");
						star5.classList.add("jsx-2704879397","star", "star-0");

						starsDiv.appendChild(star1);
						starsDiv.appendChild(star2);
						starsDiv.appendChild(star3);
						starsDiv.appendChild(star4);
						starsDiv.appendChild(star5);

						starBox.appendChild(starSpan);
						starBox.appendChild(starsDiv);

						let profileImageDiv = document.createElement("div");
						profileImageDiv.classList.add("jsx-445560552", "profile-image", "tutor");

						let profileImageSpan = document.createElement("span");
						profileImageSpan.classList.add("jsx-445560552");
						profileImageSpan.style.backgroundImage = 'url("https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=280&f=webp")';

						profileImageDiv.appendChild(profileImageSpan);

						divContent.appendChild(starBox);
						divContent.appendChild(profileImageDiv);

						divCard.appendChild(divContent);
						a.appendChild(divCard);
						li.appendChild(a);
						resultUl.appendChild(li);
					}
					
				},
				error: function () {
					alert('실패');
				}
				
			});
		});
	});

	let bootcamp_names = document.querySelectorAll(".bootcampName");
	for (var i = 0; i < bootcamp_names.length; i++) {
		
		console.log(bootcamp_names[i].innerHTML);
	}
	
// 	let btnFront = document.querySelector('front');
// 	let btnBack = document.querySelector('back');
// 	let btnFull = document.querySelector('full');
	
// 	btnFront.addEventListener("click", function() {
// 		alert("front end");
// 	});
// 	btnBack.addEventListener("click", function() {
// 		alert("front end");
// 	});
// 	btnBack.addEventListener("click", function() {
// 		alert("front end");
// 	});
	
	let btnPosition = document.querySelectorAll(".position");
	
	for (var i = 0; i < btnPosition.length; i++) {
		console.log(btnPosition[i].value);
	}
	
	$(function() {
		$(".position").click(function() {
// 			let btnPosition = $(this).find(".position").val();
			let btnPosition = $(this).attr('value');
			
			console.log(btnPosition);
			
			// 전송할 데이터
			let data = { 'position' : btnPosition };
			
			$.ajax({
				url : "searchPositionList.do",
				type: "POST",
				data: data,
				dataType: "JSON",
				success: function (json) {
					console.log(json);
					
					let resultUl = document.querySelector(".tutors");
					resultUl.textContent = "";
					let resultPositions = json.positionList;
					
					for (var i = 0; i < resultPositions.length; i++) {
						let li = document.createElement("li");
						li.classList.add("jsx-2875758176", "tutorsLi");
						li.setAttribute("style", 'display: list-item;');
						let a = document.createElement("a");
						a.classList.add("jsx-2875758176");
						a.href = "getTeacher.do?teacher_id=" + resultPositions[i].teacher_id;
						
						let divCard = document.createElement("div");
						divCard.tabIndex = 0;
						divCard.classList.add("jsx-445560552", "card");
						
						let divContent = document.createElement("div");
						divContent.classList.add("jsx-445560552", "content");
						
						let divInfo = document.createElement("div");
						divInfo.classList.add("jsx-445560552", "info");
						
						let hiddenInput1 = document.createElement("input");
						hiddenInput1.type = "hidden";
						hiddenInput1.value = resultPositions[i].teacher_id;
						
						let hiddenInput2 = document.createElement("input");
						hiddenInput2.type = "hidden";
						hiddenInput2.value = resultPositions[i].bootcamp_id;
						
						let h3 = document.createElement("h3");
						h3.classList.add("jsx-445560552");
						h3.textContent = resultPositions[i].teacher_name;
						
						let p = document.createElement("p");
						p.classList.add("jsx-445560552");
						p.textContent = resultPositions[i].bootcamp_name;
						
						divInfo.appendChild(hiddenInput1);
						divInfo.appendChild(hiddenInput2);
						divInfo.appendChild(h3);
						divInfo.appendChild(p); 
						
						divContent.appendChild(divInfo);
						
						let starBox = document.createElement("div");
						starBox.classList.add("jsx-445560552", "star-box");

						let starSpan = document.createElement("span");
						starSpan.classList.add("jsx-445560552");
						starSpan.textContent = "7.6";

						let starsDiv = document.createElement("div");
						starsDiv.classList.add("jsx-2704879397", "stars");

						let star1 = document.createElement("div");
						star1.classList.add("jsx-2704879397", "star", "star-2");

						let star2 = document.createElement("div");
						star2.classList.add("jsx-2704879397", "star", "star-2");

						let star3 = document.createElement("div");
						star3.classList.add("jsx-2704879397", "star", "star-2");

						let star4 = document.createElement("div");
						star4.classList.add("jsx-2704879397", "star", "star-2");

						let star5 = document.createElement("div");
						star5.classList.add("jsx-2704879397","star", "star-0");

						starsDiv.appendChild(star1);
						starsDiv.appendChild(star2);
						starsDiv.appendChild(star3);
						starsDiv.appendChild(star4);
						starsDiv.appendChild(star5);

						starBox.appendChild(starSpan);
						starBox.appendChild(starsDiv);

						let profileImageDiv = document.createElement("div");
						profileImageDiv.classList.add("jsx-445560552", "profile-image", "tutor");

						let profileImageSpan = document.createElement("span");
						profileImageSpan.classList.add("jsx-445560552");
						profileImageSpan.style.backgroundImage = 'url("https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_teacher01_03@2x.png?w=280&f=webp")';

						profileImageDiv.appendChild(profileImageSpan);

						divContent.appendChild(starBox);
						divContent.appendChild(profileImageDiv);

						divCard.appendChild(divContent);
						a.appendChild(divCard);
						li.appendChild(a);
						resultUl.appendChild(li);
					}
					
				},
				error: function () {
					alert('실패');
				}
				
			});
		});
	});

	

</script>

</html>