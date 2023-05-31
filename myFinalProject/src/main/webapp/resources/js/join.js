/**
 * 
 */

// 라디오 버튼 요소들을 가져온다.
const studentRadioButton = document.getElementById('student');
const companyRadioButton = document.getElementById('company');
const bootcampRadioButton = document.getElementById('bootcamp');

// 필드 요소들을 가져온다.
const studentFields = document.getElementById('student-fields');
const companyFields = document.getElementById('company-fields');
const bootcampFields = document.getElementById('bootcamp-fields');

// 각 라디오 버튼에 대한 이벤트 리스너를 등록한다.
studentRadioButton.addEventListener('change', (event) => {
  // "학생" 버튼을 선택한 경우, 학생 필드를 보여준다.
  if (event.target.checked) {
    studentFields.style.display = 'block';
    companyFields.style.display = 'none';
    bootcampFields.style.display = 'none';
    resetFields(companyFields, bootcampFields);
  }
});

companyRadioButton.addEventListener('change', (event) => {
  // "기업" 버튼을 선택한 경우, 기업 필드를 보여준다.
  if (event.target.checked) {
    studentFields.style.display = 'none';
    companyFields.style.display = 'block';
    bootcampFields.style.display = 'none';
    resetFields(studentFields, bootcampFields);
  }
});

bootcampRadioButton.addEventListener('change', (event) => {
  // "학원" 버튼을 선택한 경우, 학원 필드를 보여준다.
  if (event.target.checked) {
    studentFields.style.display = 'none';
    companyFields.style.display = 'none';
    bootcampFields.style.display = 'block';
    resetFields(studentFields, companyFields);
  }
});


// 일반회원 아이디 중복검사
$("#student-fields .idCheck").click(function() {
	var userId = $("#student-fields #userid").val();

  if (userId === "") {
    alert("아이디를 입력해주세요.");
    return;
  }

  var query = { userid: userId };

  $.ajax({
    url: "/member/idCheck",
    type: "post",
    data: query,
    success: function(data) {
      if (data == 1) {
        alert("중복되는 아이디 입니다.");
        $("#student-fields .msg").text("다른 아이디를 입력해주세요");
        $("#student-fields .msg").attr("style", "color: red");
        $("#student-fields #submit").attr("disabled", "disabled");
      } else {
        alert("사용 가능한 아이디 입니다.");
        $("#student-fields .msg").text("사용 가능");
        $("#student-fields .msg").attr("style", "color:green");
        $("#student-fields #submit").removeAttr("disabled");
      }
    }
  });
});


// 학원아이디 중복검사
$("#bootcamp-fields .idCheck").click(function() {
	var userId = $("#bootcamp-fields #userid").val();  // 수정: 변수명을
														// bootcampUserId로 변경

  if (userId === "") {
    alert("아이디를 입력해주세요.");
    return;
  }

  var query = { userid: userId };

  $.ajax({
    url: "/member/idCheck",
    type: "post",
    data: query,
    success: function(data) {
      if (data == 1) {
        alert("중복되는 아이디 입니다.");
        $("#bootcamp-fields .msg").text("다른 아이디를 입력해주세요");
        $("#bootcamp-fields .msg").attr("style", "color: red");
        $("#bootcamp-fields #submit").attr("disabled", "disabled");
      } else {
        alert("사용 가능한 아이디 입니다.");
        $("#bootcamp-fields .msg").text("사용 가능");
        $("#bootcamp-fields .msg").attr("style", "color:green");
        $("#bootcamp-fields #submit").removeAttr("disabled");
      }
    }
  });
});

// 기업아이디 중복검사
$("#company-fields .idCheck").click(function() {
	  var userId = $("#company-fields #userid").val();

  if (userId === "") {
    alert("아이디를 입력해주세요.");
    return;
  }

  var query = { userid: userId };

  $.ajax({
    url: "/member/idCheck",
    type: "post",
    data: query,
    success: function(data) {
      if (data == 1) {
        alert("중복되는 아이디 입니다.");
        $("#company-fields .msg").text("다른 아이디를 입력해주세요");
        $("#company-fields .msg").attr("style", "color: red");
        $("#company-fields #submit").attr("disabled", "disabled");
      } else {
    	  alert("사용 가능한 아이디 입니다.");
          $("#company-fields .msg").text("사용 가능");
          $("#company-fields .msg").attr("style", "color:green");
          $("#company-fields #submit").removeAttr("disabled");
        }
    }
  });
});

// 회원가입 버튼 클릭 시
 $("#student-fields #submit").click(function() {
 var userId = $("#student-fields #userid").val();
  
 // 중복 체크를 통해 사용 가능한 아이디인지 확인
 if ($("#student-fields #submit").is(":disabled")) {
 alert("아이디 중복검사를 완료해주세요.");
 return ;
 }

 });



 // 학원 가입 버튼 클릭 시
 $("#bootcamp-fields #submit").click(function() {
 var userId = $("#bootcamp-fields #userid").val();

 // 중복 체크를 통해 사용 가능한 아이디인지 확인
 if ($("#bootcamp-fields #submit").is(":disabled")) {
 alert("아이디 중복검사를 완료해주세요.");
 return;
 }

 });

 // 기업 가입 버튼 클릭 시
 $("#company-fields #submit").click(function() {
 var userId = $("#company-fields #userid").val();

 // 중복 체크를 통해 사용 가능한 아이디인지 확인
 if ($("#company-fields #submit").is(":disabled")) {
 alert("아이디 중복검사를 완료해주세요.");
 return;
 }

 });

// 비밀번호 검사
 function checkPassword() {
	  var password = document.querySelector(".password").value;
	  var passwordConfirm = document.querySelector(".password_confirm").value;
	  var passwordCheckResult = document.querySelector(".passwordCheckResult");

	  if (password.trim() === '' || passwordConfirm.trim() === '') {
		  alert("비밀번호를 입력하고 눌러주세요.");
	    passwordCheckResult.textContent = "비밀번호를 입력하고 눌러주세요.";
	    passwordCheckResult.style.color = "red";
	  } else if (password === passwordConfirm) {
		  alert("비밀번호가 일치합니다.");
	    passwordCheckResult.textContent = "비밀번호가 일치합니다.";
	    passwordCheckResult.style.color = "green";
	  } else {
		  alert("비밀번호가 일치하지 않습니다.");
	    passwordCheckResult.textContent = "비밀번호가 일치하지 않습니다.";
	    passwordCheckResult.style.color = "red";
	  }
	}

 
//이전에 입력한 값 초기화 함수
 function clearFields() {
   var inputs = document.getElementsByTagName('input');
   for (var i = 0; i < inputs.length; i++) {
     if (inputs[i].type !== 'radio') {
       inputs[i].value = '';
     }
   }
 }

 // 회원 유형 선택 라디오 버튼 클릭 시 이전 값 초기화
 var userTypeRadios = document.getElementsByName('user-type');
 for (var i = 0; i < userTypeRadios.length; i++) {
   userTypeRadios[i].addEventListener('click', function() {
     clearFields();
   });
 }
 
 
//회원가입 취소 및 입력 내용 초기화 함수
 function resetFields(userType) {
   document.getElementById(userType + '-form').reset();
 }

 // 일반 회원가입 폼의 취소 버튼 클릭 시 입력 내용 초기화
 document.getElementById('student-reset').addEventListener('click', function() {
   resetFields('student');
 });

 // 학원 회원가입 폼의 취소 버튼 클릭 시 입력 내용 초기화
 document.getElementById('bootcamp-reset').addEventListener('click', function() {
   resetFields('bootcamp');
 });

 // 기업 회원가입 폼의 취소 버튼 클릭 시 입력 내용 초기화
 document.getElementById('company-reset').addEventListener('click', function() {
   resetFields('company');
 });

// // Attach event listeners
// var passwordConfirmButtons = document.querySelectorAll('.');
// for (var i = 0; i < passwordConfirmButtons.length; i++) {
// passwordConfirmButtons[i].addEventListener("click", checkPassword);
// }

// // 비밀번호 8자리 이상
// $("#passwordbtn").click( function (){
// var passwordInput = document.getElementById("password");
// var passwordLength = passwordInput.value.length;
//	
// if (passwordLength < 8) {
// alert("비밀번호는 8자리 이상이어야 합니다.");
// }
// });

function confirmWithdrawal() {
	var confirmed = confirm("회원가입을 하시겠습니까?");
	if (confirmed) {
		alert("회원가입 되었습니다.");
		// 회원탈퇴가 완료된 후, index.jsp로 돌아가기
		window.location.href = "member/loginok";
	} else {
		// 아무 작업도 하지 않고 현재 창으로 돌아가도록 설정
		alert("기입하지 않은 내용이 있습니다.");
		window.location.href = window.location.href;
	}
}

  
 