<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>stay_main</title>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css"/>
</head>

<body>

<!--
	<center>
	<a href='<c:url value="/board/boardList.do"/>'>답변형 게시판</a>
	</center> -->


<div id="main">

    <!--숙박정보  -->
    <div id="info">

        <table>
            <tbody>
            <tr>
                <td>&nbsp;<img src="/resources/images/info.png" width="130" height="30" alt="" /> </td>
            </tr>
            </tbody>
        </table>
    </div>


    <!-- 여기서부터 슬기가  -->
    <!-- 검색바 (위치, 날짜, 인원) -->
    <table  id="search">
        <!--
         <tbody>

             <tr>
             <td>&nbsp;</td>
            <td> <img src="../icon/search.png" width="30" height="30" alt=""/></td>
               <td><input type="text" placeholder="위치"></input></td>

             <td>&nbsp;<p>날짜 <input type="text" id="datepicker"></p></td>
             <td>&nbsp;
                   <select>
                         <option selected="selected" disabled="disabled">인원</option>
                       <option value="1">1인</option>
                       <option value="2">2인</option>
                       <option value="3">3인</option>
                       <option value="4">4인</option>
                       <option value="5">5인</option>
                       <option value="6">6인</option>
                       <option value="7">7인</option>
                       <option value="8">8인</option>
                       <option value="9">9인</option>
                       <option value="10">10인</option>
                 </select>
            </td>
             <td>&nbsp;4</td>
           </tr>
         </tbody>  -->
    </table>


    <!-- 숙소 썸네일, 전체보기
    <div id="imglayout">
       <img src="image/imglayout.png" width="1388" height="800" alt=""/>

      <table id="whole_view">
          <tr>
              <td>&nbsp;<a href="#">전체보기</a></td>
          </tr>
      </table>
    </div>

     여기까지 슬기가  -->

    <!--  test -->

    <div id="image_layout">
        <div id="image_box">

        </div>

        <div id="image_box">

        </div>

        <div id="image_box">

        </div>

    </div>


    <!--동영상재생 / 경기일정  -->
    <div id="section4">
        <table>
            <tr>
                <td>
                    <iframe width="694" height="500" src="https://www.youtube.com/embed/ZgDvhixeQg0" frameborder="0" ></iframe></td
                <td><img src="/resources/images/schedule.png" ></td>

            </tr>
        </table>
    </div>

</div>

</body>
</html>