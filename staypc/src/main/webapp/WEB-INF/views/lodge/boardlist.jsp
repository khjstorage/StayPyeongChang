<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>login</title>
    <script language="javascript">

    </script>
    <style type="text/css">

    </style>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
    	<h1>게시글 리스트</h1>board
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
						<a href="lodge/read.do?review_num=${ b.review_num }&pg=${ pg }"></a></td>
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
				<a href="insert.do"><button class="linkbutton">글쓰기</button></a>
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
</div>
</body>
</html>