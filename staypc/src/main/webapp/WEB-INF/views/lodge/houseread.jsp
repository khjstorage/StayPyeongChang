<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css"/>
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
            cursor: move;
        }

        .slider-for {
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

    <div class="container" style="z-index:99;">
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

    <!--게스트 정보-->
    <div class="right">
        호스트 사진${member.picture }<br>
        호스트 이름:${member.name }<br>
        호스트 이메일:${member.email}<br>
        숙소 연락처:${vo.room_Phone}<br><br>
       <c:if test="${sessionScope.userId !=null}">
        <button><a href="insertWishList.do?id=${sessionScope.userId}&lodge_Code=${vo.lodge_Code}">위시리스트 담기</a></button>&nbsp;        
        <button><a onclick="winOpen()">예약하기</a></button><br>
        </c:if>

    </div>

    <!--전체적인 설명-->
    <div class="info">
        집이름:${vo.title}<br>
        숙소가격(1박):${vo.charge}<br>
        주소:${vo.location}<br>
        최대 가능 인원수:${vo.max_People}<br>

        숙소 입실시간: ${vo.enter_Time}<br>
        숙소 퇴실시간: ${vo.out_Time}<br>
        <fmt:parseDate value='${vo.check_In}' var="check_In" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:parseDate value='${vo.check_Out}' var="check_Out" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:formatDate value='${check_In}' var="checkIn" pattern="yyyy-MM-dd"/>
        <fmt:formatDate value='${check_Out}' var="checkOut" pattern="yyyy-MM-dd"/>
        체크인:${checkIn}<br>
        체크아웃:${checkOut}<br>

        건물타입:${vo.bulid_Type}<br>
        방타입:${vo.room_Type}<br>
        침실 개수:${vo.room_Num}<br>
        침대 개수:${vo.bed_Num}<br>
        침대 타입:${vo.bed_Type}<br>
        편의시설: ${vo.convenient}<br>
        안전시설:${vo.secure}<br>

        설명:${vo.room_Explain}<br>
        환불 규정:${vo.refund_Provision}<br>

        숙소 등록일:<fmt:formatDate value="${vo.reg_Date}" pattern="yyyy년MM월dd일"/><br>
        최근 수정일:<fmt:formatDate value="${vo.update_Date}" pattern="yyyy년MM월dd일"/><br>
    </div>

    <!--후기-->
    <br>
    <h1>숙소 후기</h1>
    <table style="border: 0px; width: 1000px;">
        <tr>
            <th colspan="30"></th>
        </tr>
        <br><br>
        <tr>
            <td colspan="30" align="center">
                <!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->
                <c:if test="${sessionScope.userId != null}">
                    <button><a href="insertBoard.do?lodge_Code=${vo.lodge_Code}">후기 쓰기</a></button>
                    &nbsp;
                </c:if>
            </td>
        </tr>
        <c:if test="${ !empty rew}">
            <c:forEach items="${rew}" var="rew">
                <c:if test="${rew.lodge_Code==vo.lodge_Code}">
                    <tr>
                        <td rowspan="2" align="center" class="center" width="50">
                            <!-- 번호대신 사진 -->${ rew.review_num }</td>
                        <td class="left" align="center">${ rew.id }</td>
                        <td colspan="28"></td>
                    </tr>
                    <tr>
                        <td class="center" align="center"><fmt:formatDate value="${ rew.reg_date }"
                                                                          pattern="yyyy년MM월dd일"/></td>
                        <td colspan="28"></td>
                    </tr>
                    <tr>
                        <td colspan="12">
                            <c:if test="${ rew.tab > 0 }">
                                <c:forEach begin="1" end="${ rew.tab }">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </c:forEach>
                                &nbsp;&nbsp;&nbsp;[${ rew.id }]님의 답글
                            </c:if>
                        </td>
                        <td colspan="18"></td>
                    </tr>
                    <tr class="left">
                        <td></td>
                        <td colspan="12">
                            <a href="<c:url value="/lodge/reviewread.do?review_num=${rew.review_num }&lodge_Code=${vo.lodge_Code}"/>">${ rew.content}</a>
                        </td>
                        <td colspan="18"></td>
                    </tr>
                </c:if>
            </c:forEach>
        </c:if>
        <c:if test="${ empty rew }">
            <tr>
                <td colspan="12" align="center">등록된 게시물이 없습니다.</td>
                <td colspan="18"></td>
            </tr>

        </c:if>
    </table>
    <table style="border: 0px; width: 1000px;">
        <tr align="center">
            <td>
                <c:if test="${ pg > block }">
                    [ <a href="read.do?lodge_Code=${vo.lodge_Code}&pg=1">◀◀</a> ]
                    [ <a href="read.do?lodge_Code=${vo.lodge_Code}&pg=${ beginPage - 1 }">◀</a> ]
                </c:if>
                <c:if test="${ pg <= block }">
                    [ <span style="color: gray;">◀◀</span> ]
                    [ <span style="color: gray;">◀</span> ]
                </c:if>
                <c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
                    <c:if test="${ i == pg }"> [ ${ i } ] </c:if>
                    <c:if test="${ i != pg }"> [ <a
                            href="read.do?lodge_Code=${vo.lodge_Code}&pg=${ i }">${ i }</a> ]</c:if>
                </c:forEach>
                <c:if test="${ endPage < allPage }">
                    [ <a href="read.do?lodge_Code=${vo.lodge_Code}&pg=${ endPage + 1 }">▶</a> ]
                    [ <a href="read.do?lodge_Code=${vo.lodge_Code}&pg=${ allPage }">▶▶</a> ]
                </c:if>
                <c:if test="${ endPage >= allPage }">
                    [ <span style="color: gray;">▶</span> ]
                    [ <span style="color: gray;">▶▶</span> ]
                </c:if>
            </td>
        </tr>
    </table>
</div>
</body>
</html>