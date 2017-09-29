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
    <link href="/resources/css/host.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="hostList">
    <div class="common_wrapper">
        <div class="userHostList">
            <div class="Pagesubject" style="font-size:25px;">
                호스팅 확인
                <br><hr><br>
            </div>

            <div class="hostingList">
                <c:forEach var="row" items="${list}">
                    <div class="hostingImg">
                        <a href="/host/detail.do?lodge_code=${row.lodge_Code}"><img style="background-size: cover;" src="/host/displayFile.do?fileName=${row.main_Image}" width="300" height="280"></a>
                        <div class="roomNameCheck">
                            <div class="roomName">숙소코드 : ${row.lodge_Code}</div>
                            <div class="checkInOut">체크인,체크아웃 시간 : ${checkIn}~${checkOut}</div>
                        </div>
                    </div>

                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>



