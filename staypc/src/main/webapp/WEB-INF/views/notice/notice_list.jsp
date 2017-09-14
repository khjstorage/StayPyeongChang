<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>

<link href="css/notice.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="notice_wrap" >

	<table class="notice_table" style="">
		<tr>
			<th style="width:100px; background-color:#eeeeee;">
				글번호
			</th>
			<th style="width:500px; background-color:#eeeeee;">
				제목
			</th>
			<th style="width:100px; background-color:#eeeeee;">
				작성자
			</th>
			<th style="width:100px; background-color:#eeeeee;">
				작성일
			</th>
		</tr>
		<c:forEach items="${notice_list}" var="list">
			<tr>
				<td >
					${list.list_no}글번호
				</td>
				<td>
					${list.subject }
					제목
				</td>
				<td>
					${list.writer}
					작성자
				</td>
				<td>
					${list.register_datetime}
					작성일
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>