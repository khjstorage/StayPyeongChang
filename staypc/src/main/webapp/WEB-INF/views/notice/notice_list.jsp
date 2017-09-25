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
 <div class="notice_wrap"   align="center" >
 <div class="common_wrapper">
 		<div class="sidemenu">
            <ul>
                <li style="margin-top:40px;"><a href='<c:url value="/notice/notice_list.do"/>'>공지사항</a></li>
                <br>
                <li style="margin-top:10px;"><a href="/terms/accessTerms.do">약관 및 정책</a></li>
            </ul>
        </div>	
		<div class="teble_box" align="left">
			<span style="font-size:23px;">공지사항</span>
			<br><br>
			<table class="notice_table">
				<tr style="background-color:#eeeeee; font-size:16px; height:25px;">
					<th style="width:100px; vertical-align: middle;">
						글번호
					</th>
					<th style="width:500px; vertical-align: middle;">
						제목
					</th>
					<th style="width:100px; vertical-align: middle;">
						작성자
					</th>
					<th style="width:100px; vertical-align: middle;">
						작성일
					</th>
				</tr>
				<c:forEach items="${list}" var="list">
					<tr >
						<td style=" border-bottom:1px solid #eeeeee; line-height:25px; font-size:14px;" >
							<center>${list.list_no}</center>
						</td>
						<td style=" border-bottom:1px solid #eeeeee; line-height:25px; font-size:15px;">
							<a href="/notice/notice_view.do?list_no=${list.list_no}">${list.subject }</a>
						</td>
						<td style=" border-bottom:1px solid #eeeeee; line-height:25px; font-size:14px;">
							<center>${list.id}	</center>
						</td>
						<td style=" border-bottom:1px solid #eeeeee; line-height:25px; font-size:14px;">
							<center>${list.register_datetime}	</center>
						</td>
					</tr>
				</c:forEach>
			</table>
			<c:if test="${sessionScope.userId eq 'admin'}">
				<div class="botton_box" style="margin-left:100%;">
					<input type="button" id="saveBtn" onclick="location.href='notice_insert_form.do'"  value="글쓰기" />
				</div>
			</c:if>
		</div>
		</div>
</div>
</body>
</html>