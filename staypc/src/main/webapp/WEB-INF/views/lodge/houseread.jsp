<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>houseread화면</title>
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

            $('#book').on("click", function () {
                var lodge_code = $('#lodge_Code').val();
                window.open("/payment/module.do?lodge_code=" + lodge_code, "new", "width=700,height=700,top=100,left=100")
            });

            $('#wishlist').on("click", function () {
                $.ajax({
                    type: "get",
                    url: "/wish/insertWishItem.do",
                    data: {
                        "id": "${sessionScope.userId}",
                        "lodge_Code": $('#lodge_Code').val(),
                        "title": $('#title').val()
                    },
                    success: function (data) {
                        if (data) {
                            alert("위시리스트에 담았습니다.");
                        }
                    }
                });
            });
        });
    </script>
    <style>    
 	.hostImg{
   		  width: 100px;
		  height: 100px;
		  background-size: cover;
		  display: block;
		  border-radius: 60px;
		  -webkit-border-radius: 60px;
		  -moz-border-radius: 60px;	
		}
        table.lodgeReview {
            font-size: 16px;
            color: #494d4d;
            margin-left: 60px;
            margin-right: 900px;
            line-height: 1.2em;
        }

        table.lodgeReview td {
            font-size: 16px;
            color: #494d4d;
            margin-left: 60px;
            margin-right: 1000px;
            line-height: 1.2em;
        }

        table.lodgeReview img {
            width: 60px;
            height: 60px;
            background-size: cover;
            display: block;
            border-radius: 30px;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;

        }

        :link {
            color: #494d4d;
        }

        :visited {
            color: #494d4d;
        }

        .bold_large {
            font-size: 30px;
            font-weight: bold;
            color: #494d4d;
            margin-left: 70px;
        }

        .right {
            font-size: 18px;
            color: #494d4d;
            margin-left: 60px;
        }

        .info {
            font-size: 18px;
            color: #494d4d;
            margin-left: 60px;
            margin-right: 900px;
            line-height: 1.3em;
        }

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
    <input id="title" type="hidden" value="${vo.title}"/>

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

    <!--호스트 정보-->
    <div class="bold_large">
        ${vo.title}
    </div>
    <br><br><br><br><br>
    <div class="right">
       <img class="hostImg" align="left" src="<c:url value='/resources/profile_photo/${host.picture}'/>"/><br>       
        ${host.name }<br>
        ${host.email}<br>
        숙소 연락처:${vo.room_Phone}<br><br>
        <c:if test="${sessionScope.userId !=null}">
            <button id="wishlist">위시리스트 담기</button>
            <button id="book">예약하기</button>
        </c:if>
    </div>
    <br><br><br><br><br>

    <!--전체적인 설명-->
    <div class="info">
        집이름:${vo.title}<br><br>
        숙소가격(1박):${vo.charge}<br><br>
        긴 설명:${vo.room_Explain}<br><br>
        주소:${vo.location}<br><br>
        최대 가능 인원수:${vo.max_People}<br><br><br><br>

        숙소 상세 설명
        <hr>
        숙소 입실시간: ${vo.enter_Time}<br><br>
        숙소 퇴실시간: ${vo.out_Time}<br><br>
        <fmt:parseDate value='${vo.check_In}' var="check_In" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:parseDate value='${vo.check_Out}' var="check_Out" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:formatDate value='${check_In}' var="checkIn" pattern="yyyy-MM-dd"/>
        <fmt:formatDate value='${check_Out}' var="checkOut" pattern="yyyy-MM-dd"/>
        체크인:${checkIn}<br><br>
        체크아웃:${checkOut}<br><br>

        건물타입:${vo.bulid_Type}<br><br>
        방타입:${vo.room_Type}<br><br>
        침실 개수:${vo.room_Num}<br><br>
        침대 개수:${vo.bed_Num}<br><br>
        침대 타입:${vo.bed_Type}<br><br>
        편의시설: ${vo.convenient}<br><br>
        안전시설:${vo.secure}<br><br><br><br>

        기타 안내사항
        <hr>
        환불 규정:${vo.refund_Provision}<br><br><br><br>
        숙소 등록일:<fmt:formatDate value="${vo.reg_Date}" pattern="yyyy년MM월dd일"/><br><br>
        최근 수정일:<fmt:formatDate value="${vo.update_Date}" pattern="yyyy년MM월dd일"/><br><br>
        <br><br><br><br><br>

        <!--후기-->
        숙소 후기
        <hr>
        <br><br>
    </div>
    <table class="lodgeReview">
        <tr>
            <th colspan="30"></th>
        </tr>
        <br><br>
        <tr>
            <td colspan="30" align="right">
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
                        <td class="img-circular" colspan="30" align="left">
                            <div>${member.picture}</div>
                            <img align="left" src="<c:url value='/resources/profile_photo/${member.picture}'/>"/>&nbsp;&nbsp;&nbsp;
                            <font size="4.5px" font-weight="bold">${ rew.id }</font><br>
                            &nbsp;&nbsp;&nbsp;<fmt:formatDate value="${ rew.reg_date }" pattern="yyyy년MM월dd일"/>
                        </td>
                    </tr>
                    <c:if test="${ rew.tab > 0 }">
                        <tr>
                            <td align="left" colspan="30">
                                <c:forEach begin="1" end="${ rew.tab }">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </c:forEach>
                                &nbsp;&nbsp;&nbsp;☞ 답글
                            </td>
                        <tr>
                    </c:if>
                    <tr class="left">
                        <td></td>
                        <td colspan="30">
                            <a href="<c:url value="/lodge/reviewread.do?review_num=${rew.review_num }&lodge_Code=${vo.lodge_Code}"/>">${ rew.content}</a>
                            <br><br>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
        </c:if>
        <c:if test="${ empty rew }">
            <tr>
                <td colspan="30" align="center">등록된 게시물이 없습니다.</td>
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