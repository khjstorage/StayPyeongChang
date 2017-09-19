<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>공지사항 상세</title>
    <link href="/resources/css/notice_view.css" rel="stylesheet" type="text/css">
    <link href="css/notice_view.css" rel="stylesheet" type="text/css">
    <script>
        function test(idMyDiv) {
            var objDiv = document.getElementById(idMyDiv);
            if (objDiv.style.display == "none") {
                objDiv.style.display = "block";
            }
            else {
                objDiv.style.display = "none";
            }
        }
    </script>
</head>
<body>
<div class="noticeView" id="fixNextTag">
    <form method="post" id="noticeForm" enctype="multipart/form-data">

        <div class="sidemenu">
            <ul>
                <li style="margin-top:40px;"><a href='<c:url value="/notice/notice_list.do"/>'>공지사항</a></li>
                <br>
                <li style="margin-top:10px;"><a href="#">도움말</a></li>
            </ul>
        </div>

        <div class="notice">
            <h2>공지사항</h2>
            <br>
            <br>
            <div class="content">
                <div class="contentB">
                    <div class="subject">
                        <span style="font-size:18px;"><b>${object.subject}</b></span>
                    </div>

                    <hr>
                    <div class="writerNdate">
                        <span id="writer">등록자 : ${object.id}</span>
                        <span>&nbsp;|&nbsp;</span>
                        <span id="date">등록일 : ${object.register_datetime}</span>
                    </div>
                    <br><br>

                    <div class="noticeDetail">
                        <c:out value="${object.content}" escapeXml="false"/>
                        <br><br>
                    </div>

                    <div class="btn">
                        <input type="button" id="update" onclick="location.href='notice_update.do'" value="수정">
                        <input type="button" id="drop" value="삭제">
                        <input type="button" id="list" value="목록">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>