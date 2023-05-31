/**
 * 
 */

var path = "${pageContext.request.contextPath }";

	$(document).ready(function() {
		var msg = "${msg}";
		if (msg != "") {
			alert(msg);
		}
	});

	function fnSubmit() {

		var email_rule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var tel_rule = /^\d{2,3}-\d{3,4}-\d{4}$/;

		if ($("#userid").val() == null || $("#userid").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#userid").focus();

			return false;
		}


		if ($("#email").val() == null || $("#email").val() == "") {
			alert("이메일을 입력해주세요.");
			$("#email").focus();

			return false;
		}

		if (!email_rule.test($("#email").val())) {
			alert("이메일 형식에 맞게 입력해주세요.");
			return false;
		}

		if (confirm("비밀번호를 찾으시겠습니까?")) {

			$("#userpw").submit();

			return false;
		}
	}