<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 삭제 비밀번호 확인</title>
<link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>
<script src="/resources/js/board.js"></script>
</head>
<body>
	<h1>글 삭제 비밀번호 확인</h1>
	<hr>
	<form name="boardform" action='<c:url value="/board/delete.do"></c:url>' method="post">
		<table style="border:0px;">
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="hidden" name="pg" value="${param.pg }">
					<input type="hidden" name="review_num" value="${param.review_num }">
					<input type="hidden" name="sort" value="${param.sort }">
					&nbsp;<input type="password" name="pwd" maxlength="20" size="15">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" value="삭제" onclick="board_delete_check(this.form)">
					<input type="button" value="취소" onclick="board_cancle()">
					<input type="button" value="리스트" onclick="board_list(this.form)">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>





