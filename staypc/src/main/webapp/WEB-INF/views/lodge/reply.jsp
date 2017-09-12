<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답글 작성</title>
<link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>
<script src="/resources/js/board.js"></script>
</head>
<body>
	<h1>답글 작성</h1>
	<hr>
	<form name="boardform" action='<c:url value="lodge/reply.do"></c:url>' method="post">
	<table style="border:0px;">
		<tr>
			<th>아이디</th>
			<td>
				<input type="hidden" name="id">
				&nbsp;<input type="text" name="email1" maxlength="25" size="15">@
				<input type="text" name="email2" maxlength="25" size="15" style="display:inline;">
				<select name="email3" onchange="email_check()">
					<option value="self">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="hotmail.com">hotmail.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>&nbsp;<input type="password" name="pwd" maxlength="20" size="15"></td>
		</tr>
		<tr>
			<th>제 목</th>
			<td>&nbsp;<input type="text" name="title" maxlength="100" size="59" value="[RE]${vo.title}"></td>
		</tr>
		<tr>
			<td colspan="2">
			<textarea rows="20" cols="80" name="content"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="hidden" value="${vo.parent }"  name="parent">
				<input type="hidden" value="${vo.sort }"  name="sort">
				<input type="hidden" value="${vo.tab }"  name="tab">
				<input type="button" value="글쓰기" onclick="board_check(this.form)">
				<input type="button" value="리스트" onclick="board_list(this.form)">
				<input type="button" value="취소" onclick="board_cancle()">
			</td>
		</tr>
	</table>
</form>
</body>
</html>








