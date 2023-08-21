<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	HttpSession cSession = request.getSession();
	String userId = (String)cSession.getAttribute("userId");
	String company_name = (String)cSession.getAttribute("company_name");
	
	System.out.println("recruitAddingPage session userId: "+userId);
	System.out.println("recruitAddingPage session company name: "+company_name);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Recruit</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- 부트스트랩 CSS 링크 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
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

<style>
    /*글쓰기 ttitle*/
    .title.jsx-1629185219 {
      -webkit-box-pack: justify;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 24px;
      padding-bottom: 16px;
      border-bottom: 1px solid rgb(102, 102, 102);
    }

    /*이미지 업로드*/
    .flex-container {
      display: flex;
    }

    .wrapper {
      text-align: center;
      flex-grow: 1;

      .image-box {
        width: 200px;
        height: 200px;
        object-fit: cover;
        display: block;
        margin: 20px auto;
      }

      .upload-btn {
        border: 1px solid #ddd;
        padding: 6px 12px;
        display: inline-block;
        cursor: pointer;

        input[type=file] {
          display: none;
        }
      }
    }

    /*주소 버튼*/
    #addr-btn {
      margin-bottom: 10px;
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
                <li>Recruit</li>
                </ol>
                <h2>RECRUIT</h2>

            </div>
        </section><!-- End Breadcrumbs -->
        
        <section class="inner-page">
              <div class="container">
          <form action="insertRecruit.do" method="post" enctype="multipart/form-data">
          <!--  userId / ad_id -->
          <input type="hidden" value="<%=userId %>" name="userId">
          
        <!--  JOB LIST - MAIN SEARCH -->
        <div class="title">
          <h4 class="jsx-1629185219" style="color: #719a60;">JOB AD</h4>
          <p class="jsx-1629185219" style="color: #878e98; font-size: small;">공고 내용을 입력하세요.</p>
        </div>
        <!--제목-->
        <div class="mb-3">
          <input type="text" class="form-control" id="ad-title" placeholder="제목을 입력하세요." name="ad_title">
        </div>
        <hr>
        <br>

        <!--글쓰기 페이지-->
        <div class="row">
            <!--회사 정보 및 채용 마감-->
            <div class="mb-3">
              <!--company logo / company name / company location / contact email / manager name-->
              <!--company logo-->
              <h4 class="jsx-1629185219" style="color: #719a60; text-align: center;">COMPANY INFO</h4>
              <div class="flex-container">
                <div class="wrapper">
                  <p class="jsx-1629185219" style="color: #878e98; font-size: small; text-align: center;">기업 로고를 등록하세요.
                  </p>
                  <img src="https://i0.wp.com/adventure.co.kr/wp-content/uploads/2020/09/no-image.jpg" class="image-box"
                    alt="company-logo" />
                  <label for="file" class="upload-btn">
                    <input id="file" type="file" accept="image/*" name="company_logo_file" />
                  </label>
                </div>
              </div>
              <script type="text/javascript">
                //for preview - image
                const fileDOM = document.querySelector('#file');
                const previews = document.querySelectorAll('.image-box');
                fileDOM.addEventListener('change', () => {
                  const reader = new FileReader();
                  reader.onload = ({ target }) => {
                    previews[0].src = target.result;
                  };

                  reader.readAsDataURL(fileDOM.files[0]);
                });
              </script>
              <br>
              <!--company name / contact email / manager name--->
              <div class="row">
                <p class="jsx-1629185219" style="color: #878e98; font-size: small;">기업 정보를 입력하세요.</p><br>
                <div class="col-md-4">
                  <input type="text" class="form-control" id="company_name" placeholder="기업명" name="company_name">
                </div>
                <div class="col-md-4">
                  <input type="email" class="form-control" id="contact_email" placeholder="example@example.com"
                    name="contact_email">
                </div>
                <div class="col-md-4">
                  <input type="text" class="form-control" id="manager_name" placeholder="관리자 이름" name="manager_name">
                </div>
              </div>
              <br>
              <div class="row">
                <!--application deadline-->
                <p class="jsx-1629185219" style="color: #878e98; font-size: small;">공고 마감일을 입력하세요.</p><br>
                <div class="col-md">
                  <input type="date" class="form-control" id="application_deadline" name="application_deadline"
                    style="color: #878e98;" required>
                </div>
              </div>
              <br>
              <!--company location-->
              <div class="row">
                <p class="jsx-1629185219" style="color: #878e98; font-size: small;">기업 주소를 입력하세요.</p><br>
                <div class="col-md-4">
                  <button type="button" id="addr-btn" onclick="company_addr()" value="주소 찾기" class="btn btn-secondary"
                    style="background-color: #fff; color: #719a60; border: 1px solid #719a60;">
                    <i class="bi bi-geo-alt"></i> 주소 찾기
                  </button>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <input type="text" class="form-control" id="company_road" placeholder="도로명주소"
                    name="company_road">
                </div>
                <!-- <div class="col-md-3">
                  <input type="email" class="form-control" id="company_jibunAddress" placeholder="지번주소"
                    name="company_jibunAddress">
                </div> -->
                <span id="guide" style="color:#999;display:none"></span>
                <div class="col-md-4">
                  <input type="text" class="form-control" id="company_detail" placeholder="상세주소"
                    name="company_detail">
                </div>
                <div class="col-md-4">
                  <input type="text" class="form-control" id="company_extra" placeholder="참고항목"
                    name="company_extra">
                </div>


                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                <script>
                  //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
                  function company_addr() {
                    new daum.Postcode({
                      oncomplete: function (data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                        // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var roadAddr = data.roadAddress; // 도로명 주소 변수
                        var extraRoadAddr = ''; // 참고 항목 변수

                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                          extraRoadAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                          extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if (extraRoadAddr !== '') {
                          extraRoadAddr = ' (' + extraRoadAddr + ')';
                        }

                        //주소 정보를 해당 필드에 넣는다.
                        document.getElementById("company_road").value = roadAddr;
                        //document.getElementById("company_jibunAddress").value = data.jibunAddress;

                        // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                        if (roadAddr !== '') {
                          document.getElementById("company_extra").value = extraRoadAddr;
                        } else {
                          document.getElementById("company_extra").value = '';
                        }

                        var guideTextBox = document.getElementById("guide");
                        // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                        if (data.autoRoadAddress) {
                          var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                          guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                          guideTextBox.style.display = 'block';

                        } else if (data.autoJibunAddress) {
                          var expJibunAddr = data.autoJibunAddress;
                          guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                          guideTextBox.style.display = 'block';
                        } else {
                          guideTextBox.innerHTML = '';
                          guideTextBox.style.display = 'none';
                        }
                      }
                    }).open();
                  }
                </script>
              </div>

            </div>
            <hr>
            <br>

            <!--고용 조건-->
            <div class="mb-3">
              <h4 class="jsx-1629185219" style="color: #719a60; text-align: center;">HIRE CONDITIONS</h4>
              <p class="jsx-1629185219" style="color: #878e98; font-size: small; text-align: center;">고용조건을 입력하세요.</p>
              <br>
              <!--job experience / job education / job position-->
              <div class="row">
                <div class="col-md-4">
                  <div class="form-floating">
                    <select class="form-select" id="job_experience" name="job_experience"
                      aria-label="Floating label select example">
                      <option value="경력 무관">경력 무관</option>
                      <option value="1년 미만">1년 미만</option>
                      <option value="1년 이상 2년 미만">1년 ~ 2년</option>
                      <option value="2년 이상 3년 미만">2년 ~ 3년</option>
                      <option value="3년 이상 5년 미만">3년 ~ 5년</option>
                      <option value="5년 이상">5년 이상</option>
                    </select>
                    <label for="floatingSelectGrid2">경력사항을 선택해주세요.</label>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="form-floating">
                    <select class="form-select" id="job_education" name="job_education"
                      aria-label="Floating label select example">
                      <option value="학력 무관">학력 무관</option>
                      <option value="고등학교 졸업">고등학교 졸업</option>
                      <option value="전문학사 졸업">전문학사 졸업</option>
                      <option value="학사 학위">학사 학위</option>
                      <option value="석사 학위">석사 학위</option>
                      <option value="박사 학위">박사 학위</option>
                    </select>
                    <label for="floatingSelectGrid2">학력사항을 선택해주세요.</label>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="form-floating">
                    <select class="form-select" id="job_position" name="job_position"
                      aria-label="Floating label select example">
                      <option value="풀스택">풀스택</option>
                      <option value="백엔드">백엔드</option>
                      <option value="프론트엔드">프론트엔드</option>
                    </select>
                    <label for="floatingSelectGrid2">FULL / BACK / FRONT를 선택해주세요.</label>
                  </div>
                </div>
              </div>
              <br>

              <!--programming languages-->
              <div class="row">
                <p class="jsx-1629185219" style="color: #878e98; font-size: small;;">프로그래밍 언어를 입력하세요. (, 또는 / 로 구분하여 입력)
                </p><br>
                <div class="col">
                  <input type="text" class="form-control" name="programming_languages" required><br>
                </div>
                <br>
              </div>

              <div class="row">
                <!--probation period / coding test-->
                <div class="col-md-6">
                  <div class="form-floating">
                    <select class="form-select" id="probation_period" name="probation_period"
                      aria-label="Floating label select example">
                      <option value="O">O</option>
                      <option value="X">X</option>
                    </select>
                    <label for="floatingSelectGrid2">수습기간 여부를 선택해주세요.</label>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-floating">
                    <select class="form-select" id="coding_test" name="coding_test"
                      aria-label="Floating label select example">
                      <option value="O">O</option>
                      <option value="X">X</option>
                    </select>
                    <label for="floatingSelectGrid2">코딩테스트 여부를 선택해주세요.</label>
                  </div>
                </div>
              </div>
              <br>
              <!--hire type / job salary / working days / working hours-->
              <div class="row">
                <div class="col-md-3">
                  <div class="form-floating">
                    <select class="form-select" id="hire_type" name="hire_type"
                      aria-label="Floating label select example">
                      <option value="정규직">정규직</option>
                      <option value="계약직">계약직</option>
                      <option value="인턴">인턴</option>
                      <option value="기타">기타</option>
                    </select>
                    <label for="floatingSelectGrid2">고용 형태를 선택해주세요.</label>
                  </div>
                </div>

                <div class="col-md-3">
                  <div class="form-floating">
                    <select class="form-select" id="job_salary" name="job_salary"
                      aria-label="Floating label select example">
                      <option value="회사 내규에 따름">회사 내규에 따름</option>
                      <option value="면접 후 결정">면접 후 결정</option>
                      <option value="2700 이상">2700 이상</option>
                      <option value="3000 이상">3000 이상</option>
                      <option value="4000 이상">4000 이상</option>
                    </select>
                    <label for="floatingSelectGrid2">급여를 선택해주세요.</label>
                  </div>
                </div>

                <div class="col-md-3">
                  <div class="form-floating">
                    <select class="form-select" id="working_days" name="working_days"
                      aria-label="Floating label select example">
                      <option value="재택근무">재택</option>
                      <option value="주 4일">주 4일</option>
                      <option value="주 5일">주 5일</option>
                      <option value="other">기타</option>
                    </select>
                    <label for="floatingSelectGrid2">근무 일수를 선택해주세요.</label>
                  </div>
                </div>

                <div class="col-md-3">
                  <div class="form-floating">
                    <select class="form-select" id="working_hours" name="working_hours"
                      aria-label="Floating label select example">
                      <option value="8-5">8시 ~ 5시</option>
                      <option value="9-6">9시 ~ 6시</option>
                      <option value="10-7">10시 ~ 7시</option>
                      <option value="자율">자율</option>
                    </select>
                    <label for="floatingSelectGrid2">근무 시간을 선택해주세요.</label>
                  </div>
                </div>

              </div>
              <hr>
              <br>

              <!--상세설명 및 우대조건-->
              <div class="mb-3">
                <h4 class="jsx-1629185219" style="color: #719a60; text-align: center;">JOB DESCRIPTION</h4>
                <p class="jsx-1629185219" style="color: #878e98; font-size: small; text-align: center;">상세설명을
                  입력하세요.</p><br>
                <!--job description / preferential conditions-->
                <div class="col-md">
                  <span class="input-group-text">상세설명</span>
                  <textarea class="form-control" aria-label="With textarea" placeholder="업무 내용을 입력해주세요." name="job_description"></textarea>
                </div>
                <br>
              </div>
              <hr>
              <br>
              <!--글등록 취소 버튼-->
              <div class="mb-3" style="text-align: center;">
                <!--취소 버튼 클릭 시: 공고 작성을 취소하시겠습니까? 확인을 누르면 메인 페이지로 돌아갑니다. 경고창 뜸-->
                <!--확인 클릭: 취소가 완료되었습니다. / 취소 클릭: 공고 작성 페이지 유지-->
                <button type="button" id="cancel-btn" class="btn btn-secondary" data-bs-dismiss="modal"
                  style="background-color: #fff; color: #719a60; border: 1px solid #719a60;">취소</button>
                <!--저장 버튼 클릭 시: 공고 작성을 완료하시겠습니까? 저장 버튼을 누르면 공고가 등록됩니다. 안내창 뜸-->
                <!--확인 클릭: 글 등록이 완료되었습니다. -> 글 목록 화면으로 이동 / 취소 클릭: 공고 작성 페이지 유지-->
                <button type="submit" id="save-btn" class="btn btn-primary"
                  style="background-color: #719a60; color: #fff; border: 1px solid #719a60;">저장</button>
              </div>
              <script>
                // 취소 버튼 클릭 시 동작
                document.getElementById('cancel-btn').addEventListener('click', function () {
                  var confirmed = confirm('공고 작성을 취소하시겠습니까?');
                  if (confirmed) {
                    // 메인 페이지로 돌아가는 동작 구현
                    window.location.href = '메인페이지주소';
                  } else {
                    // 취소 클릭 시 작성중인 모달 페이지로 돌아가는 동작 구현
                    window.location.href = '메인페이지주소';
                  }
                });

                // 저장 버튼 클릭 시 동작
                document.getElementById('save-btn').addEventListener('click', function () {
                  var confirmed = confirm('공고 작성을 완료하시겠습니까?');
                  if (confirmed) {
                    // 글 등록이 완료되었습니다. 메시지 표시 후 글 목록 화면으로 이동하는 동작 구현
                    alert('글 등록이 완료되었습니다.');
                    window.location.href = '글목록주소';
                  } else {
                    // 취소 클릭 시 아무 동작 없음
                  }
                });
              </script>
            </div>
        </div>
</form>
      </div>
        </section>
	
	</main>
	
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

 <!-- 부트스트랩 JS 링크 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>