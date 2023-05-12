<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성공</title>
</head>
<body>
	${message  } <br>
   <%
      if((Integer)request.getAttribute("result") == 0) {
   %>
      <a href="/user/userJoin.do" >회원가입하기</a>
   <%
      }else {
   %>
      <a href="/user/userLogin.do" >로그인하기</a>
   <%         
      }
   %>
</body>
</html>