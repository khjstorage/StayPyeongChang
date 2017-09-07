<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
<h1>${mao.lno }주경기장 근거리집을 소개합니다.....</h1>
<br>
<form action="read.do" method="post">
<h1>${vo.title }주경기장 근거리집을 소개합니다.....</h1>
<input name="lno" type="hidden" value="${vo.lno}" />
<img width="100px" height="100px" src=<c:url value='/resources/picture/${vo.picture}'/> /> <br>
집이름(주경기장 근거리집):${vo.title}<br>
짧은 주소(강원도 평창군 평창리):${vo.location}<br>
숙소 설명 요약:${vo.summary}<br>
숙소가격:10만원(1박):${vo.charge}<br>
<a href="logout.do">위시리스트  담기</a>&nbsp;
<a href="logout.do">예약하기</a>&nbsp;
<a href="logout.do">LOG-OUT</a>
<br>
<br>
<br>
<br>
호스트 사진${member.picture }&nbsp;
<a href="logout.do">호스트이름:${member.name }<br>}&nbsp;</a>
호스트 이메일:${member.email} <br>
숙소 연락처:"${vo.contact}<br>

<br>
<br>
집이름(주경기장 근거리집):${vo.title}<br>
<br>
<br>
숙소 정보<br>
숙소 설명:${vo.content}<br>
숙소 긴주소:${vo.location}${vo.location_detail}<br>
건물타입:${vo.building_type}<br>
숙소 타입:${vo.room_type}<br>
게스트 단독 사용 여부:${vo.guest_only}<br>
침실총개수:${vo.bedroom_cnt}<br>
침대 타입:${vo.bed_type}<br>
욕실개수:${vo.bathroom_cnt}<br>
게스트 전용 욕실 ${vo.bath_guest_only}<br>
편의시설: ${vo.convenient}<br>
안전시설:${vo.secure}<br>
<br>
<br>
이용시간<br>
숙소 입실시간: ${vo.check_in_time}<br>
숙소 퇴실시간:${vo.check_out_time}<br>


<h5>후기 리스트</h5>
</form>
<!-- 검색 시작 -->
<form action="getBoardList.do" method="post">
<table border="1" cellpadding="0" cellspacing="0" width="700">
<tr>
<td align="right">
	<select name="searchCondition">
	<c:forEach items="${conditionMap }" var="option">
	  <option value="${option.value }">${option.key}
	</c:forEach>
	</select>
	<input name="searchKeyword" type="text"/>
	<input type="submit" value="검색"/>
</td>
</tr>
</form>
<!-- 검색 종료
<center>
<table border="1" cellpadding="0" cellspacing="0" width="700">
<tr>
	<th bgcolor="orange" width="100">번호</th>
	<th bgcolor="orange" width="200">제목</th>
	<th bgcolor="orange" width="150">작성자</th>
	<th bgcolor="orange" width="150">등록일</th>
	<th bgcolor="orange" width="100">조회수</th>
</tr>
<c:forEach items="${boardList}" var="board">
<tr>
	<td>${board.seq}</td>
	<td align="left"><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
	<td>${board.writer}</td>
	<td>${board.regDate}</td>
	<td>${board.cnt}</td>
</tr>
</c:forEach>
</table>
<br>
<a href="insertBoard.jsp">새글 등록</a>
</center>
</table>
</div>
</body>
</html>