<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h5>�ı� ����Ʈ</h5>
<form action="reviewList.do" method="post">
<!--�ű� ���̺�-->

	<table>
		<tr>
			<th class="list" style="width: 100px">�۹�ȣ</th>
			<th class="list" style="width: 200px">�ۼ��ڻ���</th>
			<th class="list" style="width: 200px">�ۼ���</th>
			<th class="list" style="width: 200px">�ۼ���</th>
		</tr>�ı� ���� ���� �ڸ� �Դϴ�<tr>
			
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
							��
						</c:if>
						${ b.review_num }&pg=${ pg }"></td>
					<td class="left">&nbsp;${ b.id }</td>
					<td class="center"><fmt:formatDate value="${ b.regdate }" pattern="yyyy��MM��dd��"/></td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${ empty list }">
			<tr>
				<td colspan="5" align="center">��ϵ� �ıⰡ �����ϴ�.</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="5" align="right">
				<a href="writeform.do"><button class="linkbutton">�ı� �ۼ��ϱ�</button></a>
			</td>
		</tr>
	</table>
	<br>
	<table style="border: 0px; width: 1000px;">
		<tr align="center">
			<td>
				<c:if test="${ pg > block }">
					[ <a href="boardList.do?pg=1">����</a> ]
					[ <a href="boardList.do?pg=${ beginPage - 1 }">��</a> ]
				</c:if>
				<c:if test="${ pg <= block }">
					[ <span style="color: gray;">����</span> ]
					[ <span style="color: gray;">��</span> ]
				</c:if>
				<c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${ i == pg }" > [ ${ i } ] </c:if>
					<c:if test="${ i != pg }" > [ <a href="boardList.do?pg=${ i }">${ i }</a> ]</c:if>
				</c:forEach>
				<c:if test="${ endPage < allPage }">
					[ <a href="boardList.do?pg=${ endPage + 1 }">��</a> ]
					[ <a href="boardList.do?pg=${ allPage }">����</a> ]
				</c:if>
				<c:if test="${ endPage >= allPage }">
					[ <span style="color: gray;">��</span> ]
					[ <span style="color: gray;">����</span> ]
				</c:if>
			</td>
		</tr>
	</table>
</body>
</html>