<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In - Bootcamp</title>
<style>
	table{border:#FF9900 double }
	td{text-align:center;padding:5}
</style>
</head>
<body>
	<h4>
		안녕하세요. 우리 홈페이지 학원 로그인입니다.
		<p>사이트에 접속하기 위해서 사용자 인증 절차가 필요합니다.
		<p>아이디와 패스워드를 입력하세요.
	</h4>
	
	<form action="bootcampLogin.do" method="post">
		<table>
			<tr>
				<td width="100">아이디</td>
				<td><input type="text" name="userId"></td>
			</tr>
	
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" id="loginSubmit" value="로그인">
				</td>
			</tr>
		</table>
	</form>

</body>
<script >

</script>
</html>