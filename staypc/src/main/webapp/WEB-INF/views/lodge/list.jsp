<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>
<script type="text/javascript" src="../script/jquery-3.2.1.min.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	function list(page){
		location.href="list.do?curPage="+page+"&num=${map.num}"+"&keyword=${map.keyword}";
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
	        $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
	            $("#edate").datepicker( "option", "minDate", selectedDate );
	        });
	     
	        $('#edate').datepicker();
	        $('#edate').datepicker("option", "minDate", $("#sdate").val());
	        $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
	            $("#sdate").datepicker( "option", "maxDate", selectedDate );
	        });
	    });
</script>
</head>
<body>

	    <table  id="search">
    <tr>
        <td>
       <form name="form1" method="post" action='<c:url value="/lodge/list.do"></c:url>'>
       <input type="text" id="sdate" name="sdate" value="${map.sdate }">~<input type="text" id="edate" name="edate" value="${map.edate }">
       <input type="text" value="${map.keyword }" name="keyword" placeholder="위치">
        <select name="num">
          <option value="" >전체</option>
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
	총 ${map.count }개의 게시물이 있습니다.
	<table border="1" width="800px">
		<tr>
		<c:forEach var="row" items="${map.list }" varStatus="status">
			<td align="center">
				<a href="../read.do?lodge_Code=${row.lodge_Code }" style="text-decoration: none;">
				<img src="../resources/picture/${row.image }" width="150">
                    <br>
                    \ <fmt:formatNumber value="${row.charge}" pattern="#,###"/>
                    ${row.title }
				<!-- 후기가 있으면 게시글 이름 옆에 후기갯수 출력 -->
				
				</a>
			</td>
                 <c:if test="${status.count % 3 == 0}">
                    </tr>
                    <tr>   
                 </c:if>
            </c:forEach>
            </table>
            <table style="align-content: center" width="800px">
			<td colspan="3" align="center">
			<!-- 처음 페이지 이동 -->
			<c:if test="${map.boardPager.curBlock > 1}">
				<a href="javascript:list(1)">[처음]</a>
			</c:if>
			
			<!-- 이전 페이지 이동 -->
			<c:if test="${map.boardPager.curBlock > 1 }">
				<a href="javascript:list('${map.boardPager.prevPage }')">[이전]</a>
			</c:if>
			
			<!-- 한 블럭에 표현될 페이지 번호 출력 -->
			<c:forEach var="num" begin="${map.boardPager.blockBegin }" end="${map.boardPager.blockEnd }">
				<c:choose>
					<c:when test="${num == map.boardPager.curPage }">
						<span style="color:red">${num }</span>&nbsp;
					</c:when>
					<c:otherwise>
						<a href="javascript:list('${num }')">${num }</a>&nbsp;
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<!-- 다음 페이지 이동 -->
			<c:if test="${map.boardPager.curBlock<=map.boardPager.totBlock}">
				<a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
			</c:if>
			
			<!-- 맨 마지막 페이지 이동 -->
			<c:if test="${map.boardPager.curPage <= map.boardPager.totPage }">
				<a href="javascript:list('${map.boardPager.totPage }')">[끝]</a>
			</c:if>
			
			</td>
		</tr>
	</table>
</body>
</html>








