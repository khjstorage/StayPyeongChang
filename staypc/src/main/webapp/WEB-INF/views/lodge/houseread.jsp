<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>houseread화면</title>
    <script>
        function winOpen() {
            var lodge_code = document.getElementById("lodge_Code");
            window.open("/payment/module.do?lodge_code=" + lodge_code, "new", "width=700,height=700,top=100,left=100")
        }
    </script>

    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.slider-for').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                asNavFor: '.slider-nav'
            });

            $('.slider-nav').slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                asNavFor: '.slider-for',
                dots: true,
                centerMode: true,
                focusOnSelect: true,
                variableWidth: true
            });
        });
    </script>

    <style>
        .container {
            width: 100%;
            overflow: hidden;
        }
        .slider-for__item {
            display: inline-block;
            width: 1500px;
            height: 700px;
            margin: 0.5px;
            text-align: center;
            cursor:move;
        }
        .slider-for{
            z-index: -1;
        }
        .slider-nav {
            width: 100%;
            overflow: hidden;
        }
        .item-nav {
            width: 250px;
            height: 250px;
            cursor: pointer;
        }
    </style>
</head>
<body>


<div class="top_con_zone">
    <input id="lodge_Code" type="hidden" value="${vo.lodge_Code}"/>
    <div class="container">
        <div class="slider-for">
            <c:forEach var="row" items="${listImg}" varStatus="status">
                <img class="slider-for__item" src="/host/displayFile.do?fileName=${row.filename}">
            </c:forEach>
        </div>

        <div class="slider-nav">
            <c:forEach var="row" items="${listImg}" varStatus="status">
                <img class="slider-for__item item-nav " src="/host/displayFile.do?fileName=${row.filename}">
            </c:forEach>
        </div>
    </div>

    <div class="right">
        집이름(주경기장 근거리집):${vo.title}<br>
        짧은 주소(강원도 평창군 평창리):${vo.location}<br>
        숙소 설명 요약:${vo.room_Explain}<br>
        최대 가능 인원수:${vo.max_People}<br>
        숙소가격(1박):${vo.charge}<br>
        호스트 사진${member.picture }<br>
        호스트이름:${member.name }<br>
        호스트 이메일:${member.email}<br>
        숙소 연락처:${vo.room_Phone}<br><br>
    </div>

    <div class="info">
        <button><a href="#">위시리스트담기</a></button>&nbsp;
        <button><a onclick="winOpen()">예약하기</a></button><br>

        집이름:${vo.title}<br>
        숙소 정보<br>
        숙소 설명:${vo.room_Explain}<br>
        숙소 긴주소:${vo.location}<br>
        환불 규정:${vo.refund_Provision}<br>
        숙소 입실시간: ${vo.enter_Time}<br>
        숙소 퇴실시간: ${vo.out_Time}<br>
        <fmt:parseDate value='${vo.check_In}' var="check_In" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:parseDate value='${vo.check_Out}' var="check_Out" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:formatDate value='${check_In}' var="checkIn" pattern="yyyy-MM-dd"/>
        <fmt:formatDate value='${check_Out}' var="checkOut" pattern="yyyy-MM-dd"/>
        체크인:${checkIn}<br>
        체크아웃시간:${checkOut}<br>
        숙소 등록일:<fmt:formatDate value="${vo.reg_Date}" pattern="yyyy년MM월dd일"/><br>
        최근 수정일:<fmt:formatDate value="${vo.update_Date}" pattern="yyyy년MM월dd일"/><br>
        건물타입:${vo.bulid_Type}<br>
        방타입:${vo.room_Type}<br>
        침실 개수:${vo.room_Num}<br>
        침대 개수:${vo.bed_Num}<br>
        침대 타입:${vo.bed_Type}<br>
        편의시설: ${vo.convenient}<br>
        안전시설:${vo.secure}<br>
    </div>

    <!--후기-->
    <div class="top_con_zone">
        <h1>숙소 후기</h1>
        <hr>
        <table style="border: 0px; width: 1000px;">
            <tr>
                <th colspan="8"></th>
            </tr>
            <tr>
                <td colspan="8" align="right">
                    <a href="insertBoard.do?lodge_Code=${vo.lodge_Code}">후기 쓰기</a>
                 </td>
            </tr>
            <c:if test="${ !empty rew }">
                <c:forEach items="${rew}" var="rew">
                    <tr>
                        <td rowspan="3" class="center" width="50">${ rew.review_num }</td>
                        <td rowspan="2">
                            <!--
						<c:if test="${ vo.tab > 0 }">
							<c:forEach begin="1" end="${ vo.tab }">
								&nbsp;&nbsp;
							</c:forEach>
							☞
						</c:if>	-->
                        </td>
                        <td class="left">${ rew.name }</td>
                        <td colspan="5"></td>
                    </tr>
                    <tr>
                        <td class="center"><fmt:formatDate value="${ rew.reg_date }" pattern="yyyy년MM월dd일"/></td>
                        <td colspan="5"></td>
                    </tr>
                    <tr class="left">
                        <td colspan="7">
                            <a href="<c:url value="/lodge/reviewread.do?review_num=${rew.review_num }&lodge_Code=${vo.lodge_Code}"/>">${ rew.content}</a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            <c:if test="${ empty rew }">
                <tr>
                    <td colspan="3" align="center">등록된 게시물이 없습니다.</td>
                </tr>
            </c:if>
        </table>
        <br>

        <table style="border: 0px; width: 1000px;">
            <tr align="center">
                <td>
                    <c:if test="${ pg > block }">
                        [ <a href="lodge/read.do?pg=1">◀◀</a> ]
                        [ <a href="lodge/read.do?pg=${ beginPage - 1 }">◀</a> ]
                    </c:if>
                    <c:if test="${ pg <= block }">
                        [ <span style="color: gray;">◀◀</span> ]
                        [ <span style="color: gray;">◀</span> ]
                    </c:if>
                    <c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
                        <c:if test="${ i == pg }"> [ ${ i } ] </c:if>
                        <c:if test="${ i != pg }"> [ <a href="lodge/read.do?pg=${ i }">${ i }</a> ]</c:if>
                    </c:forEach>
                    <c:if test="${ endPage < allPage }">
                        [ <a href="lodge/read.do?pg=${ endPage + 1 }">▶</a> ]
                        [ <a href="lodge/read.do?pg=${ allPage }">▶▶</a> ]
                    </c:if>
                    <c:if test="${ endPage >= allPage }">
                        [ <span style="color: gray;">▶</span> ]
                        [ <span style="color: gray;">▶▶</span> ]
                    </c:if>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>