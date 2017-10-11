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
                <li style="margin-top:10px;"><a href="/terms/accessTerms.do">이용약관</a></li>
                <br>
                <li style="margin-top:10px;"><a href="/terms/privacy.do">개인정보처리방침</a></li>
                <br>
                <li style="margin-top:10px;"><a href="/terms/company.do">회사소개</a></li>
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
					<input type="button" id="saveBtn" onclick="location.href='notice_insert_form.do'" value="글쓰기" />
				</div>
			</c:if>
			<!-- 페이징 처리 -->
			<table style="align-content:center; width:800px;">
				<td colspan="3" align="center">
				<!-- 처음 페이지 이동 -->
				<c:if test="${np.curPage > 1}">
					<a href="notice_list.do?curPage=1">[처음]</a>
				</c:if>
				
				<!-- 이전 페이지 이동 -->
				<c:if test="${np.curBlock > 1}">
					<a href="notice_list.do?curPage=${np.prevPage}">[이전]</a>
				</c:if>
				
				<!-- 한 블럭에 표현될 페이지 번호 출력 -->
				<c:forEach var="num" begin="${np.blockBegin}" end="${np.blockEnd}">
					<c:choose>
						<c:when test="${num == np.curPage}">
							<span style="color:red">${num}</span>&nbsp;
						</c:when>
						<c:otherwise>
							<a href="notice_list.do?curPage=${num}">${num}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<!-- 다음 페이지 이동 -->
				<c:if test="${np.curBlock <= np.totBlock}">
					<a href="notice_list.do?curPage=${np.nextPage}">[다음]</a>
				</c:if>
				
				<!-- 맨 마지막 페이지 이동 -->
				<c:if test="${np.curPage < np.totPage}">
					<a href="notice_list.do?curPage=${np.totPage}">[끝]</a>
				</c:if>
				</td>
			</table>		
		</div>
		</div>
</div>
</body>
</html>











