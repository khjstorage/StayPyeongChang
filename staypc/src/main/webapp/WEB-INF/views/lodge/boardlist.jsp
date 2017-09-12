<!-- list.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 리스트</title>
<link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<h1>게시글 리스트</h1>
	<hr>
	<table style="border: 0px; width: 1000px;">
		<tr>
			<th class="list" style="width: 100px">글번호</th>
			<!-- 
			<th class="list" style="width: 400px">제목</th>
			 -->
			<th class="list" style="width: 200px">작성자</th>
			<th class="list" style="width: 200px">작성일</th>
			<th class="list" style="width: 100px">조회수</th>
		</tr>
		<c:if test="${ !empty list }">
			<c:forEach items="${ list }" var="b">
				<tr>
					<td class="center" width="100">${ b.review_num }</td>
					<td class="left">
						<c:if test="${ b.tab > 0 }">
							<c:forEach begin="1" end="${ b.tab }">
								&nbsp;&nbsp;
							</c:forEach>
							☞
						</c:if>
						<a href="read.do?no=${ b.review_num }&pg=${ pg }"></a></td>
					<td class="left">&nbsp;${ b.id }</td>
					<td class="center"><fmt:formatDate value="${ b.regdate }" pattern="yyyy년MM월dd일"/></td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${ empty list }">
			<tr>
				<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="5" align="right">
				<a href="lodge/writeform.do"><button class="linkbutton">글쓰기</button></a>
			</td>
		</tr>
	</table>
	<br>
	<table style="border: 0px; width: 1000px;">
		<tr align="center">
			<td>
				<c:if test="${ pg > block }">
					[ <a href="lodge/boardList.do?pg=1">◀◀</a> ]
					[ <a href="lodge/boardList.do?pg=${ beginPage - 1 }">◀</a> ]
				</c:if>
				<c:if test="${ pg <= block }">
					[ <span style="color: gray;">◀◀</span> ]
					[ <span style="color: gray;">◀</span> ]
				</c:if>
				<c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${ i == pg }" > [ ${ i } ] </c:if>
					<c:if test="${ i != pg }" > [ <a href="lodge/boardList.do?pg=${ i }">${ i }</a> ]</c:if>
				</c:forEach>
				<c:if test="${ endPage < allPage }">
					[ <a href="lodge/boardList.do?pg=${ endPage + 1 }">▶</a> ]
					[ <a href="lodge/boardList.do?pg=${ allPage }">▶▶</a> ]
				</c:if>
				<c:if test="${ endPage >= allPage }">
					[ <span style="color: gray;">▶</span> ]
					[ <span style="color: gray;">▶▶</span> ]
				</c:if>
			</td>
		</tr>
	</table>
</body>
</html>