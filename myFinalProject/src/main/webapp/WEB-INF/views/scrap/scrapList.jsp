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
            /* margin-left: auto; */
	    color: #ffff;
	    /* border-bottom: 1px solid #719a60; */
	    border-color: #00c471;
	    /* font-weight: 700; */
	    background-color: #00c471;
	    border-radius: 4px;
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
          justify-content: center;
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
				<div class="jsx-722889332 content">
					<div class="jsx-3810764099 board-box">
						<div class="jsx-2591363015 content-box">
						  
							<div class="jsx-1629185219 title mb-3">
								<h4 class="jsx-1629185219">SCRAP</h4>
								<p class="jsx-1629185219">
								  	내가 스크랩 한 곳들은 어디지?
								</p>
							</div>
						
							<div class="jsx-485996613 sort-number">
								<c:set var="total" value="${fn:length(scrapList)}" />
								<span class="jsx-485996613 total-number">총 ${total}개</span>
								<div class="jsx-485996613 select-wrap talk fix-position">	
									<button type="button" class="jsx-3066370919 del_scrap" data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="submit" style="margin-left: 10px; padding: 0px 10px;">스크랩 삭제</button>
								</div>
							</div>
							<form action="deleteScrap.do" method="post">
								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								        	스크랩을 삭제하시겠습니까?
								      </div>
								      <input type="hidden" name="scrap_id" value="${scrap.scrap_id }">
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								        <button type="submit" class="btn btn-primary">삭제</button>
								      </div>
								    </div>
								  </div>
								</div>
							</form>
							
							<div class="jsx-1779968077 board-list-box">
								<ul class="jsx-1779968077 list-header" style="padding-left: 0px; margin-bottom: 0px;">
									<li class="jsx-1779968077">
										<div class="jsx-1779968077" style="max-width: 60px;">
											<input type="checkbox" class="scrap_id" name="allCheck">
										</div>
										<div class="jsx-1779968077" style="max-width: 60px;">번호</div>
										<div class="jsx-1779968077" style="max-width: 120px;">회사 명</div>
										<div class="jsx-1779968077" style="max-width: 100%;">공고 제목</div>
										<div class="jsx-1779968077" style="max-width: 100px;">등록일</div>
									</li>
								</ul>
								
								<script type="text/javascript">
								//class: scrap_id
								//선택 삭제 만들기
								var chkObj = document.getElementsByName("rowCheck");
								var rowCnt = chkObj.length;
								
								$("input[name='allCheck']").click(function(){
									var chk_listArr = $("input[name='rowCheck']");
									for (var i=0; i<chk_listArr.lenght; i++){
										chk_listArr[i].checked = this.checked;
									}
								});
								
								$("input[name='rowCheck']").click(function(){
									if($("input[name='rowCheck']:checked").length == rowCnt){
										$("input[name='allCheck']")[0].checked = true;
									}
									else {
										$("input[name='allCheck']")[0].checked = false;
									}
								});
								
								//delete data
								
								</script>
							
							
								<ul class="jsx-1779968077 list-body" style="padding-left: 0px;">
									<c:forEach items="${scrapList}" var="scrap">
										<li tabindex="0" class="jsx-989812570 ">
											<div class="jsx-989812570 col-notice" style="max-width: 60px;">
												<input type="checkbox" class="scrap_id" name="rowCheck" value="${scrap.scrap_id }">
											</div>
											<div class="jsx-989812570 col-notice" style="max-width: 60px;">${scrap.scrap_id }</div>
											<div class="jsx-989812570 col-category" style="max-width: 120px;">${scrap.company_name }</div>
											<div class="jsx-989812570 col-title">
												<a class="jsx-989812570" href="/recruit/getRecruit.do?ad_id=${scrap.ad_id}" style="color: rgb(102, 102, 102);">${scrap.ad_title}</a>
											</div>
											<div class="jsx-989812570 col-created" style="max-width: 100px;">${scrap.scrap_date }</div>
											<div class="jsx-989812570 read_count hide-on-desktop" style="max-width: 60px;">
												<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#c1c1c1" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="position: relative; margin-right: 2px; vertical-align: -2px;">
													<path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
													<circle cx="12" cy="12" r="3"></circle>
												</svg>
											</div>
										</li>
									</c:forEach>
								</ul>
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
										<li class="jsx-2507860227 on">
											<a href="getQnAList.do?groupNum=${pInfoVo.groupNum}&pageNum=${i }">${i }</a>
										</li>
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
							</div>
						</div>
					</div>
				</div>
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