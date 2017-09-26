<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE>
<html>
<head>
    <title>위시 리스트</title>
<script src="../script/board.js" type="text/javascript"></script>
<link href="../css/board.css" rel="stylesheet" type="text/css">
    <script language="javascript"> 
    </script>
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
    <style type="text/css"></style>

</head>
<body>
<div class="top_con_zone" id="fixNextTag">
    <h2>위시 리스트 </h2>
 
        <form name="form1" id="form1">               
            <table border="1">
                <tr>
                    <th>숙소코드</th>
                    <th>숙소명</th>
                    <th>위시리스트 등록일</th>
                    <th>금액</th>
                    <th>삭제</th>
                 </tr>       
                <c:forEach var="list" items="${list}" varStatus="i">                
                <tr>
                    <td align="center">
                        ${list.lodge_Code}
                    </td>
                    <td style="width: 80px" align="center">
                    <a href="<c:url value="/lodge/read.do?lodge_Code=${list.lodge_Code}"/>">
                       ${list.title}</a>
                    </td>
                    <td align="center">
                          ${list.charge}
                    </td>
                    <td align="center">
                    <fmt:formatDate value="${list.reg_Date}" pattern="yy-MM-dd"/>
                    </td>
                    <td align="center">
                      	<input type="button" value="삭 제" onclick="board_delete(${list.lodge_Code})">
                    </td>
                </tr>
                </c:forEach>
                </table>
        </form>
     </div>
</body>
</html>