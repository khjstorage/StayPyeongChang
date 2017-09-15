<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>

<link href="/resources/css/notice.css" rel="stylesheet" type="text/css"/>
</head>
<body>
 
<div class="notice_wrap"   align="center" class="container" >	
	<div class="teble_box" align="left" style="width:800px; padding:20px; padding-left:50px; margin-top:20px; background-color:#ffffff">

	<span>공지사항</span>
	<br><br>
	<table class="notice_table">
		<tr>
			<th style="width:100px; ">
				글번호
			</th>
			<th style="width:500px; ">
				제목
			</th>
			<th style="width:100px;  ">
				작성자
			</th>
			<th style="width:100px; ">
				작성일
			</th>
		</tr>
		<c:forEach items="${notice_list}" var="list">
			<tr >				
				<td style=" border-bottom:1px solid #eeeeee;" >
					<center>${list.list_no}</center>
					
				</td>
				<td style=" border-bottom:1px solid #eeeeee;">
					<a href="notice/notice_view.do?list_no=${list.list_no} }">${list.subject }</a>
					
					
								
				</td>
				<td style=" border-bottom:1px solid #eeeeee;">
					<center>${list.id}	</center>	
								
				</td>
			 	<td style=" border-bottom:1px solid #eeeeee;">
					<center>${list.register_datetime}	</center>									
				</td>			
			</tr>
		</c:forEach>
	</table>
	</div>
	<br>
	<div class="botton_box" style="margin-left:55%;">
		<input type="button" id="saveBtn" onclick="location.href='notice_insert_form.do'"  value="글쓰기" />			
    </div>
</div>

</body>
</html>