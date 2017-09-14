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
<center>
<div class="notice_wrap" >
	<h2>공지사항</h2>
	<table class="notice_table">
		<tr>
			<th style="width:100px;height:30px; background-color:#eeeeee; ">
				글번호
			</th>
			<th style="width:500px; background-color:#eeeeee; ">
				제목
			</th>
			<th style="width:100px;background-color:#eeeeee;  ">
				작성자
			</th>
			<th style="width:100px; background-color:#eeeeee; ">
				작성일
			</th>
		</tr>
		<c:forEach items="${notice_list}" var="list">
			<tr >				
				<td style=" border-bottom:1px solid #eeeeee;" >
					<center>${list.list_no}</center>
					
				</td>
				<td style=" border-bottom:1px solid #eeeeee;">
					${list.subject }	
								
				</td>
				<td style=" border-bottom:1px solid #eeeeee;">
					<center>${list.writer}	</center>	
								
				</td>
			 	<td style=" border-bottom:1px solid #eeeeee;">
					<center>${list.register_datetime}	</center>									
				</td>			
			</tr>
		</c:forEach>
	</table>
	<br>
	<div class="botton_box" style="margin-left:40%;">
		<input type="button" id="saveBtn" onclick="location.href='notice_insert_form.do'"  value="글쓰기" />		
    </div>
</div>
</center>
</body>
</html>