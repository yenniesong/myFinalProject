/**
 * 
 */

	function confirmWithdrawal() {
		var confirmed = confirm("회원탈퇴를 하시겠습니까?");
		if (confirmed) {
			alert("회원탈퇴 되었습니다.");
			// 회원탈퇴가 완료된 후, index.jsp로 돌아가기
			window.location.href = "index.jsp";
		} else {
			// 아무 작업도 하지 않고 현재 창으로 돌아가도록 설정
			window.location.href = window.location.href;
		}
	}