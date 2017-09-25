<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
<script>
    $(document).ready(function(){
        // 리스트 페이지로 이동
        $("#btnList").click(function(){
            location.href="wishList.do?id=${id}";
        });
    });
</script>
    <title>login</title>
<script src="../script/board.js" type="text/javascript"></script>
<link href="../css/board.css" rel="stylesheet" type="text/css">
    <script language="javascript"> 
    </script>
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
    <style type="text/css">

    </style>
</head>
    <h2>위시 리스트 </h2>
    <c:choose>
        <c:when test="${map.count == 0}">
            장바구니가 비어있습니다.
        </c:when>
        <c:otherwise>
        <form name="form1" id="form1" method="post" action='<c:url value="wishList.do?id=${vo.id}"></c:url>'>               
            <table border="1">
                <tr>
                    <th>숙소코드</th>
                    <th>숙소명</th>
                    <th>위시리스트 등록일</th>
                    <th>금액</th>
                 </tr>
                <c:forEach var="list" items="${map.list}" varStatus="i">
                <tr>
                    <td>
                        ${list.lodge_Code}
                    </td>
                    <td style="width: 80px" align="right">
                        <fmt:formatNumber pattern="###,###,###" value="${list.productPrice}"/>
                    </td>
                    <td>
                        <input type="number" style="width: 40px" name="amount" value="${list.amount}" min="1">
                        <input type="hidden" name="productId" value="${list.productId}">
                    </td>
                    <td style="width: 100px" align="right">
                        <fmt:formatNumber pattern="###,###,###" value="${list.money}"/>
                    </td>
                    <td>
                        <a href="${path}/shop/cart/delete.do?cartId=${list.cartId}">삭제</a>
                    </td>
                </tr>
                </c:forEach>
                <!--  
                <tr>
                    <td colspan="5" align="right">
                        장바구니 금액 합계 : <fmt:formatNumber pattern="###,###,###" value="${map.sumMoney}"/><br>
                        배송료 : ${map.fee}<br>
                        전체 주문금액  :<fmt:formatNumber pattern="###,###,###" value="${map.allSum}"/>
                    </td>
                </tr>
                -->
            </table>
            <input type="hidden" name="count" value="${map.count}">
            <button type="submit" id="btnUpdate">수정</button>
        </form>
        </c:otherwise>
    </c:choose>
    <button type="button" id="btnList">상품목록</button>
<body>

</body>
</html>