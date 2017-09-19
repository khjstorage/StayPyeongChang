<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>stay_main</title>
    <%--기본css--%>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css"/>
    <%--제이쿼리--%>
    <script src="/resources/js/jquery-3.2.1.min.js"></script>
    <%--데이터피커--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        function list(page) {
            location.href = "list.do?curPage=" + page + "&num=${map.num}" + "&keyword=${map.keyword}";
        }
        $(document).ready(function () {
            $.datepicker.regional['ko'] = {
                closeText: '닫기',
                prevText: '이전달',
                nextText: '다음달',
                currentText: '오늘',
                weekHeader: 'Wk',
                dateFormat: 'yy-mm-dd',
                firstDay: 0,
                isRTL: false,
                showMonthAfterYear: true,
                yearSuffix: '',
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                yearRange: 'c-99:c+99',
            };
            $.datepicker.setDefaults($.datepicker.regional['ko']);

            $('#sdate').datepicker();
            $('#sdate').datepicker("option", "maxDate", $("#edate").val());
            $('#sdate').datepicker("option", "onClose", function (selectedDate) {
                $("#edate").datepicker("option", "minDate", selectedDate);
            });

            $('#edate').datepicker();
            $('#edate').datepicker("option", "minDate", $("#sdate").val());
            $('#edate').datepicker("option", "onClose", function (selectedDate) {
                $("#sdate").datepicker("option", "maxDate", selectedDate);
            });
        });
    </script>
</head>
<body>

<div id="main">

	<!--검색-->
    <div class="main_section01" align="center">
		<div id="info">
			<table>
				<tbody>
				<tr>
					<td>&nbsp;<img src="/resources/images/info.png" width="130" height="30" alt=""/></td>
				</tr>
				</tbody>
			</table>
		</div>
		<table id="search">
			<tr>
				<td>
					<form name="form1" method="post" action='<c:url value="/lodge/list.do"></c:url>'>
						<input type="text" id="sdate" name="sdate" value="${map.sdate }">~<input type="text" id="edate" name="edate" value="${map.edate }">
						<input type="text" value="${map.keyword }" name="keyword" placeholder="위치">
						<select name="num">
							<option value="">인원</option>
							<option value="1" <c:out value="${map.num=='1'?'selected':'' }"/>>1명</option>
							<option value="2" <c:out value="${map.num=='2'?'selected':'' }"/>>2명</option>
							<option value="3" <c:out value="${map.num=='3'?'selected':'' }"/>>3명</option>
							<option value="4" <c:out value="${map.num=='4'?'selected':'' }"/>>4명</option>
							<option value="5" <c:out value="${map.num=='5'?'selected':'' }"/>>5명</option>
							<option value="6" <c:out value="${map.num=='6'?'selected':'' }"/>>6명</option>
							<option value="7" <c:out value="${map.num=='7'?'selected':'' }"/>>7명</option>
							<option value="8" <c:out value="${map.num=='8'?'selected':'' }"/>>8명</option>
							<option value="9" <c:out value="${map.num=='9'?'selected':'' }"/>>9명</option>
							<option value="10" <c:out value="${map.num=='10'?'selected':'' }"/>>10명</option>
						</select>
						<input type="submit" value="검색">
					</form>
				</td>
			</tr>
		</table>
    </div>


	<!--게시물 리스트-->
    <div align="center" >
		<table style="cellspacing:5px; cellpadding:auto;">
			<c:forEach var="row" items="${map.list }" varStatus="status">
				<tr>
					<td align="center">
						<a href="lodge/read.do?lodge_Code=${row.lodge_Code }" style="text-decoration: none;">
							<div id="displayFile" style="width:300px; height:300px; border:1px solid #eeeeee; margin:10px;" >
								<img style="width=100%;height=100%;background-size: cover;" src="/host/displayFile.do?fileName=${row.main_Image}" width="300" height="280">
							</div>
							<br>
							<fmt:formatNumber value="${row.charge}" pattern="#,###"/>원
								${row.title }
						</a>
					</td>
					<c:if test="${status.count % 3 == 0}">
				</tr>
			<c:if test="${status.count % 3 != 9 }">
			<tr>
				</c:if>
				</c:if>
				</c:forEach>
		</table>

		<div class="hostlist_view">
			<a href='<c:url value="/lodge/list.do" ></c:url>'>전체보기</a>
		</div>
	</div>

    <!--동영상재생 / 경기일정  -->
    <div id="section4">
        <table>
            <tr>
                <td><iframe width="694" height="500" src="https://www.youtube.com/embed/ZgDvhixeQg0"></iframe></td>
                <td><img src="/resources/images/schedule.png"></td>
            </tr>
        </table>
    </div>

</div>
</body>
</html>