<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보확인</title>
</head>
<body>
<h1>내 정보</h1>
<table border="1">
         <tr>
            <th bgcolor="orange" width="100">번호</th>
            <th bgcolor="orange" width="100">아이디</th>
            <th bgcolor="orange" width="200">비밀번호</th>
            <th bgcolor="orange" width="150">이름</th>
         </tr>
         <c:forEach items="${memberInfoList }" var="member">
            <!-- 프라퍼티이름 변경 -->
            <tr>
               <td>${member.userNo }</td>
               <td>${member.userId }</td>
               <td>${member.userName }</td>
               <td>${member.userPass }</td>
            </tr>
         </c:forEach>
      </table>
</body>
</html>