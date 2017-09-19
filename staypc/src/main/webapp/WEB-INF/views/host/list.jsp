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
	<form method="post" id="hostListForm" enctype="multipart/form-data">
	 <div class="userHostList">
	 	<div class="Pagesubject" style="font-size:25px;">	 	
	    	호스팅 확인
	    	<br><hr><br>
	    </div>
	    
	    <div>
	        <table>
	            <c:forEach var="row" items="${list}">
	                    <tr>
	                        <td rowspan="2"><a href="/host/detail.do?lodge_code=${row.lodge_Code}"><img style="width=100%;height=100%;background-size: cover;" src="/host/displayFile.do?fileName=${row.main_Image}" width="300" height="280"></a></td>
	                        <td style="border:solid 1px;">${row.room_Name}</td>
	                    </tr>
	                    <tr>
	                    
	                        <fmt:parseDate value='${row.check_In}' var="check_In" pattern="yyyy-MM-dd HH:mm:ss"/>
	                        <fmt:parseDate value='${row.check_Out}' var="check_Out" pattern="yyyy-MM-dd HH:mm:ss"/>
	                        <fmt:formatDate value='${check_In}' var="checkIn" pattern="yyyy-MM-dd"/>
	                        <fmt:formatDate value='${check_Out}' var="checkOut" pattern="yyyy-MM-dd"/>
	                        <td style="border:solid 1px;">${checkIn}~${checkOut}</td>
	                    
	                    </tr>
	            </c:forEach>
	        </table>
	        </div>
     </div>
   	</form>
</div>
</body>
</html>



