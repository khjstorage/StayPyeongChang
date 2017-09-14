<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-09-13
  Time: 오후 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>호스팅 확인</h1>
        <table>
            <c:forEach var="row" items="${list }">
                    <tr>
                        <td>글제목:</td>
                        <td><a href="/host/detail.do?lodge_code=${row.lodge_Code}">${row.title}</a></td>
                    </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>



