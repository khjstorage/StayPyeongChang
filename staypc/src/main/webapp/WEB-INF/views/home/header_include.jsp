<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/css/header.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        $(document).ready(function(){
            var topBar = $("#topBar").offset();
            $(window).scroll(function(){
                var docScrollY = $(document).scrollTop()
                var barThis = $("#topBar")
                var fixNext = $("#fixNextTag")

                if( docScrollY > topBar.top ) {
                    barThis.addClass("top_bar_fix");
                    fixNext.addClass("pd_top_80");
                }else{
                    barThis.removeClass("top_bar_fix");
                    fixNext.removeClass("pd_top_80");
                }
            });
        })
    </script>
</head>
<body>
<div class="wrap">
    <div class="top_bn_zone">
        <header>
            <div class="navbar-brand">
                <a href="/main.do"><img class="img" src="/resources/images/logo_kr.png" alt="" /></a>
            </div>
        </header>
    </div>

    <div class="top_fix_zone" id="topBar">
        <nav>
            <ul class="menu">
                <c:choose>
                    <c:when test="${sessionScope.userId == null }">
                    	<li><a href='<c:url value="/notice/notice_list.do"></c:url>'>공지사항</a></li>
                        <li><a href="#">도움말</a></li>
                        <li><a href='<c:url value="/login/login.do"></c:url>'>로그인</a></li>
                    </c:when>
                    <c:otherwise>
                   	    <li><a href='<c:url value="/notice/notice_list.do"></c:url>'>공지사항</a></li>
                        <li><a href="<c:url value="/host/write.do"></c:url>">호스팅</a></li>
                        <li><a href="<c:url value="/member/modify.do"></c:url>">회원정보수정</a></li>
                        <li><a href='<c:url value="/login/logout.do"></c:url>'>로그아웃</a></li>
                    </c:otherwise>
                </c:choose>
                <li id="profile_icon"><a href=""><img src="/resources/images/profile.png"></a></li>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>