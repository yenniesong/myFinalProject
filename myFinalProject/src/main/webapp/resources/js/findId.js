/**
 * 
 */

// 아이디 찾기 
//	var path = "${pageContext.request.contextPath }";
//
//	$(document).ready(function() {
//		var msg = "${msg}";
//		if (msg != "") {
//			alert(msg);
//		}
//	});

	 function fnSubmit() {
    var tel_rule = /^\d{2,3}\d{3,4}\d{4}$/;

    if ($("#name").val() === null || $("#name").val() === "") {
      alert("이름을 입력해주세요.");
      $("#name").focus();
      return false;
    }

    if ($("#tel").val() === null || $("#tel").val() === "") {
      alert("전화번호를 입력해주세요.");
      $("#tel").focus();
      return false;
    }

    if (!tel_rule.test($("#tel").val())) {
      alert("전화번호 형식에 맞게 입력해주세요.");
      return false;
    }

    if (confirm("아이디를 찾으시겠습니까?")) {
      $("#createForm").submit();
      return false;
    }
  }