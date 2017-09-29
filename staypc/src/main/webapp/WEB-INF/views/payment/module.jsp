<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-09-18
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#paymentBtn').on("click", function (e) {
                var data = {
                    "id":"${sessionScope.userId}",
                    "lodge_Code":$('#lodge_Code').val(),
                    "card_num":$('#card1').val()+$('#card2').val()+$('#card3').val()+$('#card4').val(),
                    "card_valid":$('#month').val()+"/"+$('#year').val(),
                    "card_cvc":$('#card_cvc').val(),
                    "check_in":$('#checkIn').val(),
                    "check_out":$('#checkOut').val(),
                    "sum_money":$('#sum_money').val(),
                };
                e.preventDefault();
                $.ajax({
                    type: "get",
                    url: "/payment/pay.do",
                    data: data,
                    success: function (data) {
                        if(data==1){
                            alert("결제완료");
                        }
                    }
                });
            });
        });
    </script>
</head>
<body>
<form id="payment">
    <table>
        <tr>
            <td>아이디</td>
            <td>${sessionScope.userId}</td>
        </tr>
        <tr>
            <td>상품명</td>
            <td>${lodgeVO.title}</td>
            <input type="hidden" id="lodge_Code" value="${lodgeVO.lodge_Code}">
        </tr>
        <tr>
            <td>숙박기간</td>
            ${lodgeVO.check_In}
            <fmt:parseDate value='${lodgeVO.check_In}' var="check_In" pattern="yyyy-MM-dd HH:mm:ss"/>
            <fmt:parseDate value='${lodgeVO.check_Out}' var="check_Out" pattern="yyyy-MM-dd HH:mm:ss"/>
            <fmt:formatDate value='${check_In}' var="checkIn" pattern="yyyy년 MM월 dd일"/>
            <fmt:formatDate value='${check_Out}' var="checkOut" pattern="yyyy년 MM월 dd일"/>
            <td>
                 ${checkIn} ~ ${checkOut}
                <input type="hidden" id="checkIn" value="${lodgeVO.check_In}">
                <input type="hidden" id="checkOut" value="${lodgeVO.check_Out}">
            </td>
        </tr>
        <tr>
            <td>금액</td>
            <td><fmt:formatNumber value="${lodgeVO.charge}" pattern="#,###"/>원</td>
            <input type="hidden" id="sum_money" value="${lodgeVO.charge}">
        </tr>
        <tr>
            <td>카드번호</td>
            <td><input type="text" name="card1" id="card1" size="4"> - <input type="text" name="card2" id="card2" size="4"> - <input type="password" name="card3" id="card3" size="4"> - <input type="text" name="card4" id="card4" size="4"></td>
        </tr>
        <tr>
            <td>유효기간</td>
            <td>
                <select name="month" id="month">
                    <option value="1">1</option>월
                    <option value="2">2</option>월
                    <option value="3">3</option>월
                    <option value="4">4</option>월
                    <option value="5">5</option>월
                    <option value="6">6</option>월
                    <option value="7">7</option>월
                    <option value="8">8</option>월
                    <option value="9">9</option>월
                    <option value="10">10</option>월
                    <option value="11">11</option>월
                    <option value="12">12</option>월
                </select>
                <select name="year" id="year">
                    <option value="2017">2017</option>년
                    <option value="2018">2018</option>년
                    <option value="2019">2019</option>년
                    <option value="2020">2020</option>년
                    <option value="2021">2021</option>년
                    <option value="2022">2022</option>년
                    <option value="2023">2023</option>년
                    <option value="2024">2024</option>년
                    <option value="2025">2025</option>년
                    <option value="2026">2026</option>년
                    <option value="2027">2027</option>년
                </select>
            </td>
        </tr>
        <tr>
            <td>카드CVC</td>
            <td><input type="text" name="card_cvc" id="card_cvc" size="3"></td>
        </tr>
        <tr>
            <td rowspan="2">
                <button id="paymentBtn">결제하기</button>
                <button onclick="self.close()">결제취소</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
