<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	if(session.getAttribute("userName") == null) {
		response.sendRedirect("/user/userLogin.do");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style>
  a{text-decoration: none}
</style>
</head>
<body>

<h1>로그인 결과</h1>

<table width="500">
<tr>
<th>
<!-- sessionTime과 userName는 세션 속성에 저장된 값 :  sessionScope 접근 없이도 가능  -->
 [ ${sessionScope.sessionTime} ] ${userName}님 
</th>
</tr>
<tr>
<th>
 <a href="logOut.do">[로그아웃]</a>
 <a href="memberInfo.do">[회원정보]</a>
 <a href="/board/getBoardList.do"> [글 목록]</a>

</th>
</tr>
</table>


<c:if test="${list!=null}">
  <h2>[ 회원정보 ]</h2>
   <table>
    <tr>
       <th>UserNo</th>
       <th>UserId</th>
       <th>UserName</th>
       <th>UserPass</th>
     </tr>
   <c:forEach items="${list}" var="vo">
     <tr>
       <td>${vo.userNo}</td>
       <td>${vo.userId}</td>
       <td>${vo.userName}</td>
       <td>${vo.userPass}</td>
     </tr>
   </c:forEach>
   </table>
   <p/>
   <form action="userSearch.do" method="post">
   <select name="keyField">
      <option value="0">--선택--</option>
      <option value="userName">이름</option>
      <option value="userId">아이디</option>
   </select>
   <input type="text" name="keyWord"/>
   <input type="submit" value="검색"/>
   </form>
</c:if>


</body>
</html>







