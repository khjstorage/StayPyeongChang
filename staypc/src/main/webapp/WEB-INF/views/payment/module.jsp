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
    <title>Title</title>
    <script src="/resources/js/payment.js" type="text/javascript"></script>
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
        </tr>
        <tr>
            <td>금액</td>
            <td>${lodgeVO.charge}</td>
        </tr>
        <tr>
            <td>카드번호</td>
            <td><input type="text" name="card1" size="4"> - <input type="text" name="card2" size="4"> - <input type="password" name="card3" size="4"> - <input type="text" name="card4" size="4"></td>
        </tr>
        <tr>
            <td>유효기간</td>
            <td>
                <select name="month">
                    <option value="">1</option>월
                    <option value="">2</option>월
                    <option value="">3</option>월
                    <option value="">4</option>월
                    <option value="">5</option>월
                    <option value="">6</option>월
                    <option value="">7</option>월
                    <option value="">8</option>월
                    <option value="">9</option>월
                    <option value="">10</option>월
                    <option value="">11</option>월
                    <option value="">12</option>월
                </select>
                <select name="year">
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
            <td><input type="password" name="card_cvc" size="3"></td>
        </tr>
        <tr>
            <td rowspan="2">
                <button>결제하기</button> <button onclick="self.close()">결제취소</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
