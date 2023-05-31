<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="../resources/css/mylist.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>내 글 목록</title>
</head>
<body>
<h2>내가 쓴글</h2>
  <h3>목록</h3>
	<div class="search">
				<select id="list" name="list" required>
							<option value="" disabled selected>선택해주세요</option>
							<option value="title">제목</option>
							<option value="write">내용</option>
							
					</select>
				<input type="text" name="keyword" id="keyword" placeholder="검색을 해주세요" />
				<button id="searchBtn">검색</button>
        </div>
  <section>
  <table>
    <tr>
      <th style="width: 10px;">순번</th>
      <th style="width: 30px;">제목</th>
      <th style="width: 200px;">내용</th>
      <th style="width: 40px;">작성일자</th>
      <th style="width: 10px;">조회수</th>
    </tr>

  <!-- 목록 시작 -->
    <c:forEach items="${list}" var="list">
      <tr>
        <td>${list.bno}</td>
        <td>${list.title}</td>
        <td>${list.writer}</td>
        <td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></td>
        <td>${list.view}</td>
      </tr>
    </c:forEach>
    <!-- 목록 끝 -->
    </table>
    <!-- 페이지 이동목록 -->
			<div id="bno ">
				<ul>
					<c:if test="${pageMaker.prev}">
						<li><a
							href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">[이전]</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
						<li><a href="listPage${pageMaker.makeQuery(idx)}">[${idx}]</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a href="listPage${pageMaker.makeQuery(pageMaker.endPage + 1)}">[다음]</a></li>
					</c:if>
				</ul>
			</div>
			</section>
		
</body>
</html>