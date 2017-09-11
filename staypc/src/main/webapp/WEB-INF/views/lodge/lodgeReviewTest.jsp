<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h5>후기 리스트</h5>
<form action="/lodge/lodgeReviewList.do" method="post">
<!--신규 테이블-->

	<table>
		<tr>
			<th class="list" style="width: 100px">글번호</th>
			<th class="list" style="width: 200px">작성자사진</th>
			<th class="list" style="width: 200px">작성자</th>
			<th class="list" style="width: 200px">작성일</th>
		</tr>후기 글이 적힐 자리 입니다<tr>
			
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
						${ b.review_num }&pg=${ pg }"></td>
					<td class="left">&nbsp;${ b.id }</td>
					<td class="center"><fmt:formatDate value="${ b.regdate }" pattern="yyyy년MM월dd일"/></td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${ empty list }">
			<tr>
				<td colspan="5" align="center">등록된 후기가 없습니다.</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="5" align="right">
				<a href="writeform.do"><button class="linkbutton">후기 작성하기</button></a>
			</td>
		</tr>
	</table>
	<br>
	<table style="border: 0px; width: 1000px;">
		<tr align="center">
			<td>
				<c:if test="${ pg > block }">
					[ <a href="boardList.do?pg=1">◀◀</a> ]
					[ <a href="boardList.do?pg=${ beginPage - 1 }">◀</a> ]
				</c:if>
				<c:if test="${ pg <= block }">
					[ <span style="color: gray;">◀◀</span> ]
					[ <span style="color: gray;">◀</span> ]
				</c:if>
				<c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${ i == pg }" > [ ${ i } ] </c:if>
					<c:if test="${ i != pg }" > [ <a href="boardList.do?pg=${ i }">${ i }</a> ]</c:if>
				</c:forEach>
				<c:if test="${ endPage < allPage }">
					[ <a href="boardList.do?pg=${ endPage + 1 }">▶</a> ]
					[ <a href="boardList.do?pg=${ allPage }">▶▶</a> ]
				</c:if>
				<c:if test="${ endPage >= allPage }">
					[ <span style="color: gray;">▶</span> ]
					[ <span style="color: gray;">▶▶</span> ]
				</c:if>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>