/**
 * 
 */

	$(document).ready(function() {
			$("#logoutBtn").on("click", function() {
				location.href = "member/logout";
			})

		})

		window.onload = function() {
			document.getElementById('submit').onclick = check1;
		}

		function check1() {
			if (document.form.userid.value == "") {
				alert("아이디를 입력하세요.")
				document.form.userid.focus();
				return false;
			}

			if (document.form.password.value == "") {
				alert("패스워드를 입력하세요.")
				document.form.password.focus();
				return false;
			}

			document.form.submit();//전송

		}