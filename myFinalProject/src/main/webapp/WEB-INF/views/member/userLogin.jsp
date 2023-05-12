<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table{border:#FF9900 double }
	td{text-align:center;padding:5}
</style>

</head>
<script>
	window.onload = function(){
		document.getElementById('Submit').onclick = check;	
	}
	
	function check(){
		if(document.form.userId.value==""){
			alert("ID를 입력하세요.")
			document.form.userId.focus();
			return false;
		}
		
		if(document.form.password.value==""){
			alert("패스워드를 입력하세요.")
			document.form.password.focus();
			return false;
		}
		
		document.form.submit();//전송
		
	}
	
	
</script>
<body>

<h4> 안녕하세요. 우리 홈페이지입니다.<p>
 사이트에 접속하기 위해서 사용자 인증 절차가 필요합니다.<p>
아이디와 패스워드를 입력하세요.</h4>

	<form name="form" action="login.do" method="post">
  <table width="300" height="120" >
    <tr> 
      <td width="100"> 아이디</td>
      <td ><input type="text" name="userId"></td>
    </tr>
    
	<tr> <td>  패스워드</td>
      <td> <input type="password" name="password"></td>
    </tr>
  <tr>
  <td colspan=2>
    <input type="button" name="Submit" id="Submit" value="로그인">
    <input type="button"  value="회원가입" onclick="location.href='userJoin.do'">
    <input type="reset" value="취소">
	
</td>
 </tr>
  </table>
  </form>

</body>
</html>

















