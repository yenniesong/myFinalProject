/**
 * 
 */

$(document).ready(function() {
	$(".updatemember").click(function() {
		if(confirm("수정하시겠습니까?")){
			document.form1.action = "${path}/member/updatemember";
			document.form1.submit();
		}
	});
});

$(document).ready(function() {
	$("#memberdelete").click(function() {
		if(confirm("삭제하시겠습니까?")){
			document.form1.action = "${path}/member/memberdelete";
			document.form1.submit();
		}
	});
});