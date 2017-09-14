<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-09-14
  Time: 오전 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table style="border: 1px solid black">
<c:forEach var="row" items="${list}" varStatus="status">
    <tr>
        <td>title : ${row.title}</td>
        <td>code : ${row.lodge_code}</td>
            <c:forEach var="row1" items="${row.bookList}" varStatus="status">
                <td>date : <fmt:formatDate value="${row1.bookDate}" pattern="yyyy년MM월dd일"/> </td>
                <td>available : ${row1.available}</td>
            </c:forEach>
    </tr>
</c:forEach>
</table>
<input type="submit""

</body>
</html>
