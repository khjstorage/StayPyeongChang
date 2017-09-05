<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>평창스테이</h1>
<c:choose>
    <c:when test="${sessionScope.userId == null }">
        <a href='<c:url value="/login/login.do"></c:url>'>로그인</a>
    </c:when>
    <c:otherwise>
        <h2>${sessionScope.userId } (${sessionScope.userEmail })님 환영합니다.</h2>
        <a href="<c:url value="/member/modify.do"></c:url>">회원정보수정</a>
        <a href='<c:url value="/login/logout.do"></c:url>'>로그아웃</a>
    </c:otherwise>
</c:choose>
</body>
</html>