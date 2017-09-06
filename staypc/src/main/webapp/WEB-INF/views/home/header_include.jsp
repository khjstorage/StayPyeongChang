<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <link href="/resources/css/header.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<!-- header -->
<div id="header">
    <div id="logo">
        <img src="/resources/images/logo.png"  alt="" />
    </div>
    <div id="nav">
        <ul id="menu">
            <li><a href="#">호스팅하기</a></li>
            <li><a href="">도움말</a></li>
            <c:choose>
                <c:when test="${sessionScope.userId == null }">
                    <li><a href='<c:url value="/login/login.do"></c:url>'>로그인</a></li>
                </c:when>
                <c:otherwise>
                    <%--<h2>${sessionScope.userId } (${sessionScope.userEmail })님 환영합니다.</h2>--%>
                    <li><a href="<c:url value="/member/modify.do"></c:url>">회원정보수정</a></li>
                    <li><a href='<c:url value="/login/logout.do"></c:url>'>로그아웃</a></li>
                </c:otherwise>
            </c:choose>
            <li id="profile_icon"><a href=""><img src="/resources/images/profile.png"></a></li>
        </ul>
    </div>
</div>
</body>
</html>