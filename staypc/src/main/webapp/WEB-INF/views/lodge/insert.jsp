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
<h1>게시글 작성</h1>
<hr>
<form name="boardform" action='<c:url value="lodge/insert.do"></c:url>' method="get">
	<table style="border:0px;">
		<tr>
			<th>아이디</th>
			<td>
				<input type="hidden" name=${vo.id}>
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
		<!--  
		<tr>
			<th>제 목</th>
			<td>&nbsp;<input type="text" name="title" maxlength="100" size="59"></td>
		</tr>
		-->
		<tr>
			<td colspan="2">
			<textarea rows="20" cols="80" name="content"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="글쓰기" onclick="board_check(this.form)">
				<input type="button" value="리스트" onclick="board_list(this.form)">
				<input type="button" value="취소" onclick="board_cancle()">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>



