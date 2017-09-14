<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>login</title>
    <script language="javascript">

    </script>
    <style type="text/css">

    </style>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
    	<h1>숙소  후기</h1>
	<hr>
	<table style="border: 0px; width: 1000px;">
	    <tr>
    	  <th colspan="8"></th>
    	</tr>
         <tr>
			<td colspan="8" align="right">
				<a href="<c:url value="/lodge/insertBoard.do"/>">후기 쓰기</a>
			</td>
		</tr>
		<c:if test="${ !empty list }">
			<c:forEach items="${ list }" var="b">
				<tr>
					<td rowspan="3" class="center" width="50">${ b.review_num }</td>
					<td rowspan="2">
					<!--  
						<c:if test="${ b.tab > 0 }">
							<c:forEach begin="1" end="${ b.tab }">
								&nbsp;&nbsp;
							</c:forEach>
							☞
						</c:if>	-->		
						memberpicture						
						</td>						
						<td class="left">${ b.name }</td>
						<td colspan="5"></td>
				</tr>
				<tr>
						<td class="center"><fmt:formatDate value="${ b.reg_date }" pattern="yyyy년MM월dd일"/></td>
						<td colspan="5"></td>
				</tr>
				<tr class="left">
				<td colspan="7" >
				<a href="<c:url value="/lodge/reviewread.do?review_num=${b.review_num }"/>">${ b.content}</a>
				</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${ empty list }">
			<tr>
				<td colspan="3" align="center">등록된 게시물이 없습니다.</td>
			</tr>
		</c:if>

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