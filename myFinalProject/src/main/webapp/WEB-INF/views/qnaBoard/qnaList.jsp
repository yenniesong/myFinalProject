<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	HttpSession tSession = request.getSession();

	String userId = (String)tSession.getAttribute("userId");
	String loginFG = (String)tSession.getAttribute("loginFG");
	
	String bootcamp_name = "";
	
	if(loginFG != null && loginFG.equals("b")) {	
		bootcamp_name = (String)tSession.getAttribute("name");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>QnA list</title>
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
      .content.jsx-722889332 {
          position: relative;
          -webkit-flex: auto;
          -ms-flex: auto;
          flex: auto;
          width: 100%;
          max-width: 1240px;
          min-height: 532px;
          padding: 0 20px;
          margin: 32px auto 64px;
      }
      .board-box.jsx-3810764099 {
          position: relative;
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-box-pack: justify;
          -webkit-justify-content: space-between;
          -ms-flex-pack: justify;
          justify-content: space-between;
      }
      .content-box.jsx-2591363015 {
          position: relative;
          padding: 48px 94px;
          width: 100%;
          height: 100%;
          background-color: #ffffff;
          border: 1px solid #dfdfdf;
      }
      .board-title.jsx-2864104005 {
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
        margin-bottom: 24px;
    }
    .board-title.jsx-2864104005 h3.jsx-2864104005 {
        font-size: 24px;
    }
    .search-box.jsx-1738213615 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
    }
    .input.jsx-599077571 {
        position: relative;
        width: 100%;
    }
    input.jsx-599077571 {
        display: block;
        font-size: 14px;
        width: 100%;
        height: 42px;
        border-bottom: solid 1px #dfdfdf;
        color: #212121;
    }
    input.jsx-599077571.password {
        display: block;
        font-size: 14px;
        width: 100%;
        height: 42px;
        border-bottom: solid 1px #dfdfdf;
        color: #212121;
        margin-left: 80px;
        text-align: center;
    }
    input, textarea {
        border: 0;
        border-radius: 0;
    }
    button.jsx-411775790 {
        font-size: 14px;
        padding: 0;
        width: 80px;
        min-width: 80px;
        height: 42px;
        line-height: 40px;
        border-radius: 0;
        background-color: #ffffff;
        color: #212121;
        border: solid 1px #dfdfdf;
        -webkit-transition: background-color 0.3s;
        transition: background-color 0.3s;
    }
    .sort-number.jsx-485996613 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        -ms-flex-pack: justify;
        justify-content: space-between;
        font-size: 14px;
        margin: 32px 0 16px;
    }
    .total-number.jsx-485996613 {
        font-size: 14px;
        -webkit-align-self: flex-end;
        -ms-flex-item-align: end;
        align-self: flex-end;
    }
    .select-wrap.jsx-485996613 {
        display: flex;
    }
    button.jsx-3066370919 {
        margin-left: auto;
      	color: #719a60;
      	border-bottom: 1px solid #719a60;
    }
    .hide-on-desktop {
        display: none;
    }
    .board-list-footer.jsx-4203269740 {
        position: relative;
    }
    .pagination.jsx-2507860227 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -ms-flex-pack: center;
        justify-content: center;
        height: 36px;
        margin-top: 32px;
    }
    .pagination.jsx-2507860227 li.jsx-2507860227 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        margin: auto 14px;
        font-size: 14px;
        color: #666666;
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
    .pagination.jsx-2507860227 li.on.jsx-2507860227 {
        font-weight: 700;
        color: #2c428d;
    }
    .btn-write.jsx-4203269740 {
        position: absolute;
        right: 0;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
    }
    .btn-write.jsx-4203269740 button.jsx-4203269740 {
        font-size: 14px;
        text-align: center;
        width: 120px;
        min-width: 120px;
        height: 42px;
        line-height: 42px;
        border-radius: 26px;
        background-color: #1dc078;
        color: #ffffff;
        -webkit-transition: background-color 0.3s;
        transition: background-color 0.3s;
    }
    select {
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      padding: 8px 28px 8px 8px;
      background-image: url("data:image/svg+xml;charset=utf-8,<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'><polyline points='6 9 12 15 18 9' stroke='%238f8f8f' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'/></svg>");
      background-repeat: no-repeat;
      background-position: right 8px center;
      background-size: 16px;
      border: none;
      border-radius: 4px;
      background-color: #f2f2f2;
      color: #333;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
    }
    select:focus {
      outline: none;
      box-shadow: 0px 0px 0px 2px #a5d8ff;
    }
    .title.jsx-1629185219 {
    text-align: center;
    margin-bottom: 28px;
    padding-bottom: 16px;
    border-bottom: 1px solid rgb(102, 102, 102);
}
 </style>    
<style id="__jsx-2395210693">
      .select-wrap.jsx-2395210693 {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
      }
      .select-box.jsx-2395210693:first-child {
          margin-left: 0;
          margin-top: 5px;
      }
      .select-box.jsx-2395210693 {
          max-width: 160px;
          width: 100%;
          margin-left: 24px;
      }
      .search.jsx-2395210693 {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          margin-left: auto;
      }
    </style>
<style id="__jsx-2019229575">
      .select.jsx-2019229575 {
          position: relative;
          overflow: visible;
          color: #666666;
          background-color: #ffffff;
          cursor: pointer;
      }
      .choice.jsx-2019229575 {
          width: 100%;
          min-width: 137px;
          position: relative;
          display: inline-block;
          padding-right: 45px;
          font-size: 14px;
          height: 42px;
          line-height: 42px;
          text-align: left;
          border-bottom: solid 1px #dfdfdf;
          overflow: hidden;
          white-space: nowrap;
          text-overflow: ellipsis;
          vertical-align: top;
      }
    </style>
<style id="__jsx-1779968077">
      .board-list-box.jsx-1779968077 {
          width: 100%;
          text-align: center;
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
      .list-header.jsx-1779968077 li.jsx-1779968077>div.jsx-1779968077 {
          width: 100%;
      }
      
      /* 해당 div 요소에 width 속성을 추가하여 꽉 차게 표시 */
	.list-header.jsx-1779968077 li.jsx-1779968077 div {
	    width: calc(100% / 6); /* 6개의 열이 있으므로, 각 열의 너비는 100% / 6 입니다. */
	    box-sizing: border-box; /* width에 padding과 border가 포함되도록 box-sizing 설정 */
	    padding: 5px; /* 원하는 여백 설정 */
	}
    </style>
<style id="__jsx-989812570">
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
      li.jsx-989812570 div.col-title.jsx-989812570 {
          text-align: left;
          padding: 0px 16px;
          display: flex;
          -webkit-box-align: center;
          align-items: center;
      }
      li.jsx-989812570 div.col-title.jsx-989812570 {
          text-align: left;
          padding: 0px 16px;
          display: flex;
          -webkit-box-align: center;
          align-items: center;
      }
      li.jsx-989812570 div.col-title.jsx-989812570 span.jsx-989812570 {
          text-overflow: ellipsis;
          white-space: nowrap;
          overflow: hidden;
      }
      .comment-number.jsx-989812570 {
          vertical-align: middle;
          color: rgb(255, 51, 102);
      }
    </style>
</head>
<body>
	<%@include file="../includes/header.jsp" %>

	<main id="main">
	    <section id="breadcrumbs" class="breadcrumbs">
	      <div class="container">
	
	        <ol>
	          <li><a href="index.html">Home</a></li>
	          <li>Q&A</li>
	        </ol>
	        <h2>Q & A</h2>
	
	      </div>
	    </section>
	
	    <section class="inner-page">
	      <div class="container">
	        <div class="jsx-722889332 content">
	          <div class="jsx-3810764099 board-box">
	            <div class="jsx-2591363015 content-box">
	              
	              <div class="jsx-1629185219 title mb-3">
	                <h4 class="jsx-1629185219">Q & A</h4>
	                <p class="jsx-1629185219">
	                  	궁금한 건 절대 못 참아!
	                </p>
	              </div>
	
	              <div class="jsx-485996613 sort-number">
	              <c:set var="total" value="${fn:length(qnaList)}" />
	                <span class="jsx-485996613 total-number">총 ${total}개</span>
	                <div class="jsx-485996613 select-wrap talk fix-position">
                  		<button type="button" class="jsx-3066370919 myQna">내가 쓴 글 보기</button>
                	</div>
		            
	              </div>
	              <div class="jsx-1779968077 board-list-box">
	                <ul class="jsx-1779968077 list-header" style="padding-left: 0px;">
	                  <li class="jsx-1779968077">
	                    <div class="jsx-1779968077" style="max-width: 60px;">번호</div>
	                    <div class="jsx-1779968077" style="max-width: 120px;">분류</div>
	                    <div class="jsx-1779968077" style="max-width: 100%;">제목</div>
	                    <div class="jsx-1779968077" style="max-width: 100px;">작성자</div>
	                    <div class="jsx-1779968077" style="max-width: 100px;">등록일</div>
	                    <div class="jsx-1779968077" style="max-width: 100px;">답변상태</div>
	                  </li>
	                </ul>
	                
	                <c:forEach items="${qnaList }" var="qna">
		                <ul class="jsx-1779968077 list-body" style="padding-left: 0px;">
		                  <li tabindex="0" class="jsx-989812570 ">
		                  	<input type="hidden" class="academyName" name="academy" value="${qna.academy }">
		                    <div class="jsx-989812570 col-notice" style="max-width: 60px;">${qna.question_id }</div>
		                    <div class="jsx-989812570 col-category" style="max-width: 120px;">${qna.category_name }</div>
		                    <div class="jsx-989812570 col-title">
		                      <a class="jsx-989812570" href="#" style="color: rgb(102, 102, 102);">${qna.title }</a>
		                      <span class="jsx-989812570 comment-number hide-on-desktop">0
		                        <span class="jsx-989812570">댓글</span>
		                      </span>
		                    </div>
		                    <div class="jsx-989812570 col-userId" style="max-width: 100px;">${qna.userId }</div>
		                    <div class="jsx-989812570 col-created" style="max-width: 100px;">${qna.created_at }</div>
		                    <div class="jsx-989812570 read_count hide-on-desktop" style="max-width: 60px;">
		                      <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#c1c1c1" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative; margin-right: 2px; vertical-align: -2px;">
		                        <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
		                        <circle cx="12" cy="12" r="3"></circle>
		                      </svg>
		                    </div>
		                    
		                    <c:if test="${qna.answer_count gt 0}">
			                    <div class="jsx-989812570 like_count hide-on-mobile" style="max-width: 100px;">
			                    	답변 완료
			                    </div>
		                    </c:if>
		                    <c:if test="${qna.answer_count eq 0}">
			                    <div class="jsx-989812570 like_count hide-on-mobile" style="max-width: 100px;">
			                    	답변 미완료
			                    </div>
		                    </c:if>

		                  </li>
		                </ul>
	                </c:forEach>
	              </div>
	              
	              <div class="jsx-4203269740 board-list-footer">
	                <ul class="jsx-2507860227 pagination">
	                
	                	<c:if test="${pInfoVo.groupNum eq 1}">
			                  <li class="jsx-2507860227 prev disabled">
			                  	<a href="getQnAList.do?groupNum=${pInfoVo.groupNum-1}&pageNum=${pInfoVo.groupStartPage-1}">
				                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#dfdfdf" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
				                      <polyline points="11 17 6 12 11 7"></polyline>
				                      <polyline points="18 17 13 12 18 7"></polyline>
				                    </svg>
				                    <span class="jsx-2507860227 alt-text">앞으로</span>
			                    </a>
			                  </li>
	                	</c:if>
	                	<c:if test="${pInfoVo.groupNum > 1}">
			                  <li class="jsx-2507860227 prev">
			                  	<a href="getQnAList.do?groupNum=${pInfoVo.groupNum-1}&pageNum=${pInfoVo.groupStartPage-1}">
				                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#dfdfdf" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
				                      <polyline points="11 17 6 12 11 7"></polyline>
				                      <polyline points="18 17 13 12 18 7"></polyline>
				                    </svg>
				                    <span class="jsx-2507860227 alt-text">앞으로</span>
			                    </a>
			                  </li>
	                		
	                	</c:if>
	                  
	                  <c:forEach var="i" begin="${pInfoVo.groupStartPage }" end="${pInfoVo.groupEndPage }">
	                  	<li class="jsx-2507860227 on"><a href="getQnAList.do?groupNum=${pInfoVo.groupNum}&pageNum=${i }">${i }</a></li>
	                  </c:forEach>
	                  
	                  	<c:if test="${pInfoVo.groupNum eq pInfoVo.totalGroupCount}">
		                  <li class="jsx-2507860227 next disabled">
		                  	<a href="getQnAList.do?groupNum=${pInfoVo.groupNum+1}&pageNum=${pInfoVo.groupEndPage+1}">
			                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#dfdfdf" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
			                      <polyline points="13 17 18 12 13 7"></polyline>
			                      <polyline points="6 17 11 12 6 7"></polyline>
			                    </svg>
			                    <span class="jsx-2507860227 alt-text">뒤로</span>
		                    </a>
		                  </li>
	                  	
	                  	</c:if>
	                  	<c:if test="${pInfoVo.groupNum ne pInfoVo.totalGroupCount}">
		                  <li class="jsx-2507860227 next">
		                  	<a href="getQnAList.do?groupNum=${pInfoVo.groupNum+1}&pageNum=${pInfoVo.groupEndPage+1}">
			                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#dfdfdf" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative;">
			                      <polyline points="13 17 18 12 13 7"></polyline>
			                      <polyline points="6 17 11 12 6 7"></polyline>
			                    </svg>
			                    <span class="jsx-2507860227 alt-text">뒤로</span>
		                    </a>
		                  </li>
	                  	
	                  	</c:if>
	                  
	                </ul>
	                
	                <c:if test="${loginFG eq 'm'}">
		                <div class="jsx-4203269740 btn-write fix-position">
		                  <button class="jsx-4203269740 writeQna">글쓰기</button>
		                </div>
		            </c:if>
		            
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </section>
  	</main>

		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <p style="text-align: center;">비밀번호 입력</p>
		        <input type="password" name="password" title="비밀번호 입력" placeholder="비밀번호를 입력해 주세요." class="jsx-599077571 password" value="" style="width: 300px;">
		        <input type="hidden" name="question_id" id='hidden_question_id'>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary btnChkPwd">확인</button>
		      </div>
		    </div>
		  </div>
		</div>
	
	<%@include file="../includes/footer.jsp" %>
	
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
	
	$(document).ready(function() {
		
		$('div.jsx-989812570.col-title > a').click(function() {
			let question_id = $(this).parent().prev().prev().text();
			let selecteBootcampName = $(this).parent().prev().prev().prev().val();
			let selecteWriter = $(this).parent().next().text();
			
			if ("<%=loginFG%>" == 'm' ) {
				
				if (selecteWriter === "<%=userId%>") {
	 				$("#staticBackdrop").modal("show");
				} else {
					alert("내 글이 아니에요");
				}
				
			} else if ("<%=loginFG%>" == 'b') {
				function countCommonCharacters(str1, str2) {
					var count = 0;
					var minLength = Math.min(str1.length, str2.length);
					for (var i = 0; i < minLength; i++) {
					    if (str1[i] === str2[i]) {
					      count++;
					    } else {
					      break; 
					    }
					}
				  	return count;
				}

				var sessionBootcampName = "<%=bootcamp_name%>";
		        var commonCharacterCount = countCommonCharacters(sessionBootcampName, selecteBootcampName);
				var commonCharacterCount = countCommonCharacters(sessionBootcampName, selecteBootcampName);
			
				var threshold = 4;
				var isOverlap = commonCharacterCount >= threshold;
				
				if (isOverlap) {
					location.href = '/qnaBoard/getQnABoard.do?question_id=' + question_id;
				} else {
					alert("내가 쓴 글이 아니에요");
				}
			} 

			window.question_id = question_id;
			window.selecteBootcampName = selecteBootcampName;
		});
		

		$('li.jsx-2507860227.disabled a').removeAttr('href');

		$(".btnChkPwd").click(function() {
			let mySessionId = "<%=userId%>";
			let enteredPwd = $(".password").val();
			let selectedQuestionId = window.question_id;
			let userAcademy = window.selecteBootcampName;

			let data = {
					'userId' : mySessionId
					, 'password' : enteredPwd
					, 'question_id' : selectedQuestionId
			};
			
	 	    $.ajax({
	 	    	url : "chkPwd.do"
	 	    	, type: "POST"
	 	    	, data: data
	 	    	, dataType: "text"
	 	      	, success: function(resp) {
	 	        	if (resp == "null") {
	 	        		alert('비밀번호가 일치하지 않습니다.');
	 	        		location.href='/qnaBoard/getQnAList.do';
					} else {
						location.href='/qnaBoard/getQnABoard.do?question_id=' + selectedQuestionId + '&academy=' + userAcademy;
	 	      		}
	 	      	}
	 	      	, error: function() {
	 	        	console.log("에러 발생: " + error);
	 	      	}
	 	    });
		});
		  
	});
	

	let goWriting = document.querySelector('.writeQna');
	let btn_myQna = document.querySelector('div.jsx-485996613.select-wrap.talk.fix-position > button');
	let userIdFSession = "<%=userId%>";
	
	goWriting.addEventListener("click", function() {
		location.href = 'goingToWriting.do?userId=' + userIdFSession;
	});

	function findMyQuestion() {
		let userId = '<%= session.getAttribute("userId") %>';
		
		location.href='findMyQuestion.do?userId='+ userId;
	}
	
	$(function(){
		let myQuestion = '<%= session.getAttribute("MyQuestion") %>';

		let btn_myQna = document.querySelector('div.jsx-485996613.select-wrap.talk.fix-position > button');
		let goBackToList = '<button type="button" class="jsx-3066370919 myQna">전체 글 보기</button>'
		
		if (myQuestion != "null") {
			btn_myQna.innerHTML = '전체 글 보기';
			
			btn_myQna.onclick = function() {
				location.href='allQuestion.do';
			}
			
		} else {
			btn_myQna.innerHTML = '내가 쓴 글 보기'
			btn_myQna.onclick = findMyQuestion;
		}
		
	});
	

</script>
</html>