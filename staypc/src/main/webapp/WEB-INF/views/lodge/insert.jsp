<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>login</title>
<script src="../script/board.js" type="text/javascript"></script>
<link href="../css/board.css" rel="stylesheet" type="text/css">
    <script language="javascript">

    </script>
    <style type="text/css">

    </style>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
<h1>게시글 작성</h1>
<hr>
<form name="boardform" action='<c:url value="lodge/insertBoard.do"></c:url>' method="get">
	<table style="border:0px;">
		<tr>
		  <td>${member.picture }</td>
		  <td>아이디${vo.id}</td>
		 </tr>
		 <tr>
		   <td colspan="2">
		   	 <textarea rows="20" cols="80" name="content"></textarea>
		   	 </td>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="글쓰기" onclick="board_check(this.form)">
				<input type="button" value="리스트" onclick="location.href='boardList.do'">
				<input type="button" value="취소" onclick="board_cancle()">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>



