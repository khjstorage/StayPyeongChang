<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정</title>
<link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>
<script src="/resources/js/board.js"></script>
</head>
<body>
	<h1>게시글 수정</h1>
	<hr>
	<form name="boardform" action='<c:url value="lodge/update.do"></c:url>' method="post">
		<table style="border:0px; width:600px;">
			<tr>
				<th>글번호</th>
				<th>아이디</th>
				<th>작성일</th>
				<th>비밀번호</th>
			</tr>
			<tr>
				<td><input type="text" size="27" disabled="disabled" value="${vo.review_num }"></td>
				<td><input type="text" size="27" disabled="disabled" value="${vo.id }" name="id"></td>
				<td><input type="text" size="27" disabled="disabled" value='<fmt:formatDate value="${vo.regdate }" pattern="yyyy년MM월dd일"/>' name="regdate"></td>
				<td><input type="password" size="27" name="pwd"></td>
			</tr>
			<tr>
				<th class="read">제목</th>
				<td colspan="3"><input type="text" name="title" size="90" value="${vo.title }"> </td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="20" cols="110" name="content"><c:out value="${vo.content}" escapeXml="false"/></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<input type="hidden" name="no" value="${vo.review_num }">
					<input type="button" value="수정" onclick="board_update_check(this.form)">
					<input type="button" value="취소" onclick="board_cancle()">
					<input type="button" value="리스트" onclick="board_list(this.form)">
				</td>
			</tr>
		</table>	
	</form>
</body>
</html>




