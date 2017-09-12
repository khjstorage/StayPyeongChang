<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 상세</title>
<link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>
<script src="/resources/js/board.js"></script>
</head>
<body>
	<h1>게시글 상세</h1>
	<hr>
	<table style="border:0px; width:600px;">
	 	<tr>
	 		<th class="read">글번호</th>
	 		<th class="read">아이디</th>
	 		<th class="read">작성일</th>
	 	</tr>
	 	<tr>
	 		<td><input type="text" name="no" size="27" disabled="disabled" value="${vo.review_num }"></td>
	 		<td><input type="text" name="id" size="27" disabled="disabled" value="${vo.id }"></td>
	 		<td><input type="text" name="regdate" size="27" disabled="disabled" value='<fmt:formatDate value="${vo.regdate }" pattern="yyyy년MM월dd일"/>'>
	 		</td>
	 	</tr>
	 	<tr>
	 		<th class="read">제목</th>
	 		<td colspan="2"><input type="text" name="title" size="58" disabled="disabled" value="${vo.title }">
	 		</td>
	 	</tr>
	 	<tr>
	 		<td colspan="3"><textarea rows="20" cols="90" name="content" disabled="disabled"><c:out value="${vo.content }" escapeXml="false"/></textarea>  </td>
	 	</tr>
	 	<tr>
	 		<td colspan="3" align="right">
	 			<a href="replyform.do?no=${vo.review_num }&pg=${param.pg}"><button class="linkbutton">답글쓰기</button></a>
	 			<a href="updateform.do?no=${vo.review_num }&pg=${param.pg}"><button class="linkbutton">수정하기</button></a>
	 			<a href="deleteform.do?no=${vo.review_num }&pg=${param.pg}&sort=${vo.sort}"><button class="linkbutton">삭제하기</button></a>
	 			<a href="boardList.do?pg=${param.pg}"><button class="linkbutton">리스트</button></a>
	 			<input type="button" value="취소" onclick="board_cancle()"> 
	 		</td>
	 	</tr>
	</table>
</body>
</html>









