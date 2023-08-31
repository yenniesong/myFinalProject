<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	HttpSession cSession = request.getSession();
	String userId = (String)cSession.getAttribute("userId");
	String userName = (String)cSession.getAttribute("name");
	
	System.out.println("recruitAddingPage session userId: "+userId);
	System.out.println("recruitAddingPage session user name: "+userName);
	
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
      /*all*/
      /*h4*/
      h4 {
      -webkit-box-pack: justify;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 24px;
      padding-bottom: 16px;
      color: #719a60;
      text-align: center;

    }

    /*page title*/
    .page-title {
      border-bottom: #878e98;
      padding: 10px;
      text-align: center;
    }

    #page-title {
      text-align: center;
      padding: 20px;
      margin: 20px;
      border: #878e98;

    }

      /*resume section 01*/

      /*resume section 02*/
      /*img*/
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

      /*resume section 03*/

      /*resume section 04*/
      textarea {
        display: block;
    width: 100%;
    height: 300px;
    padding: 15px;
    box-sizing: border-box;
    border: 0;
    resize: vertical;
    border: 1px solid #878e98;
    border-radius: 10px;
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
                <li>Resume</li>
                </ol>
                <h2>WRITE RESUME</h2>

            </div>
        </section><!-- End Breadcrumbs -->
        
        <section class="inner-page">
      <div class="container">
        <!-- mini title -->
        <div class="row">
          <span class="page-title">
          <p id="page-title">
            WRITE RESUME FOR <%=userName%>
          </p>
        </span>
        </div>

        <!--resume write for user-->
        <!-- form tag: move to insertResume.do -->
        <form action="insertResume.do" method="post" enctype="multipart/form-data">
          <!--
                RESUME_ID -> sequence
                USERID 1 -> input type hidden  RESUME_TITLE 1

                USER_NAME 2 USER_EMAIL 2 USER_PHONE_NUMBER 2 USER_ADDRESS 2 USER_PHOTO 2 USER_PHOTO_EN 2
                USER_EDUCATION 3 USER_SKILLS 3 USER_PORTFOLIO_LINK 3 USER_PORTFOLIO_FILE 3 
                USER_EXPERIENCE 4 SELF_INTRODUCE 4
          -->

          <!-- resume section 01. userId (hidden), resume_title(text) -->
          <input type="hidden" value="<%=userId%>" name="userId"/>
          <h4>RESUME TITLE</h4>
          <div class="row">
            <div class="col">
            <input type="text" class="form-control" id="resume-title" name="resume_title"/>
          </div>
          </div>
          <hr>
          <br>

          <!--resume section 02. user_name, user_email, user_phone_number, user_address, user_photo-->
          <h4>USER INFORMATION</h4>
          <div class="row">
            <!-- user photo -->
            <div class="flex-container">
              <div class="wrapper">
                <p class="jsx-1629185219" style="color: #878e98; font-size: small; text-align: center;">이력서 사진을 등록하세요.
                </p>
                <img src="https://i0.wp.com/adventure.co.kr/wp-content/uploads/2020/09/no-image.jpg" class="image-box"
                  alt="${resume.user_photo}" />
                <label for="file" class="upload-btn">
                  <input id="file" type="file" accept="image/*" name="file"/>
                </label>
              </div>
            </div>
          </div>
          <hr>
          <br>
            <!-- script for preview -->
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
            <!--user name, user email, user phone number, user address-->
            <h4>USER INFORMATION</h4>
            <div class="row">
              <div class="col-md-3">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;">이름을 입력하세요</p>
                <input type="text" class="form-control" id="user_name" placeholder="<%=userName%>" value="<%=userName%>" name="user_name"/>
              </div>
              <div class="col-md-4">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;">번호를 입력하세요</p>
                <input type="text" class="form-control" id="user_phone_number" placeholder="${Member.tel}" value="${Member.tel}" name="user_phone_number"/>
              </div>
              <div class="col-md-5">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;">이메일을 입력하세요</p>
                <input type="text" class="form-control" id="user_email" palceholder="${Member.email}" value="${Member.email}" name="user_email"/>
              </div>
            </div>
          <br>
            <div class="row">
              <div class="col">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;">주소를 입력하세요</p>
                <input type="text" class="form-control" id="user_address" placeholder="${Member.location}" value="${Member.location}" name="user_address"/>
              </div>
            </div><hr>
            <br>

            <!-- resume section 03. USER_EDUCATION USER_SKILLS USER_PORTFOLIO_LINK USER_PORTFOLIO_FILE -->
            <h4>USER INFORMATION</h4><br>
            <div class="row">
              <div class="col-md-4">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;"> 학력을 선택하세요. </p>
                <!--education select box-->
                <div class="form-floating">
                  <select class="form-select" id="user_education" name="user_education"
                    aria-label="Floating label select example">
                    <option value="고등학교 졸업">고등학교 졸업</option>
                    <option value="전문대학교 졸업">전문대학교 졸업</option>
                    <option value="4년제 대학교 졸업">4년제 대학교 졸업</option>
                    <option value="석사">석사</option>
                    <option value="박사">박사</option>
                  </select>
                  <label for="floatingSelectGrid2">학력사항을 선택해주세요.</label>
                </div>
              </div>
              <div class="col-md-8">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;"> 사용 가능한 언어를 , 혹은 / 로 구분하여 입력하세요. </p>
                <!--skills-->
                <input type="text" class="form-control" id="user_skills" placeholder="</>" name="user_skills"/>
              </div>
            </div>
            <div class="row">
              <div class="col-md">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;"> 포트폴리오 링크를 첨부하세요. </p>
                <!--portfolio link-->
                <input type="text" class="form-control" id="user_portfolio_link" placeholder="portfolio link" name="user_portfolio_link"/>
              </div>
            </div><br>
            <div class="row">
              <div class="col-md">
                <p class="jsx-1629185219" style="color: #878e98; font-size: x-small; text-align: center;"> 포트폴리오 파일을 첨부하세요. </p>
                <!--portfolio file-->
                <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="/*" name="file2">
              </div>
            </div><hr>
            <br>

            <h4>USER INTRODUCE</h4>
            <!-- resume section 04.  USER_EXPERIENCE SELF_INTRODUCE -->
            <div class="row">
              <div class="col">
                <!--user experience-->
                <textarea id="user_experience" name="user_experience" placeholder="write your experience (ex: 해외경험, 인턴, 아르바이트, 경력사항 등)"></textarea>
              </div>
            </div>
            <br>
            <div class="row">
              <div class="col">
                <!--user introduce-->
                <textarea id="self_introduce" name="self_introduce" placeholder="Introduce your self"></textarea>
              </div>
            </div>
            <hr>
            <br>
            <!-- submit / cancel button -->
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
                    alert('이력서 작성을 취소하셨습니다. 공고 리스트 페이지로 이동합니다.')
                    location.href='/recruit/getRecruitList.do';
                  } else {
                    // 취소 클릭 시 동작 x
                    
                  }
                });

                // 저장 버튼 클릭 시 동작
                document.getElementById('save-btn').addEventListener('click', function () {
                  var confirmed = confirm('이력서 작성을 완료하시겠습니까?');
                  if (confirmed) {
                    // 글 등록이 완료되었습니다. 메시지 표시 후 글 목록 화면으로 이동하는 동작 구현
                    alert('이력서 등록이 완료되었습니다.');
                    //location.href = '글목록주소';
                  } else {
                    // 취소 클릭 시 아무 동작 없음
                  }
                });
              </script>
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