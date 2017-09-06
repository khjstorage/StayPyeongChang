<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>stay_main</title>
  <script type="text/javascript" src="../script/jquery-3.2.1.min.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        
    <!-- jQuery library (served from Google) -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <!-- bxSlider Javascript file -->
    <script src="../../../resources/js/jquery.bxslider.min.js"></script>
    
    <link href="css/jquery.bxslider.css" rel="stylesheet" />
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css"/>
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <!-- bxSlider CSS file -->

    

  
  
    <script>
        $(document).ready(function(){
            $('.bxslider').bxSlider({
                mode:'horizontal',
                auto:true,
                controls:false
            });
        });
      </script>
  <script type="text/javascript">
        function list(page){
            location.href="list.do?curPage="+page+"&num=${map.num}"+"&keyword=${map.keyword}";
        }
        
          $(document).ready(function () {
                $.datepicker.regional['ko'] = {
                    closeText: '닫기',
                    prevText: '이전달',
                    nextText: '다음달',
                    currentText: '오늘',
                   
                    weekHeader: 'Wk',
                    dateFormat: 'yy-mm-dd',
                    firstDay: 0,
                    isRTL: false,
                    showMonthAfterYear: true,
                    yearSuffix: '',
         
         
                    changeMonth: true,
                    changeYear: true,
                    showButtonPanel: true,
                    yearRange: 'c-99:c+99',
                };
                $.datepicker.setDefaults($.datepicker.regional['ko']);
             
                $('#sdate').datepicker();
                $('#sdate').datepicker("option", "maxDate", $("#edate").val());
                $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
                    $("#edate").datepicker( "option", "minDate", selectedDate );
                });
             
                $('#edate').datepicker();
                $('#edate').datepicker("option", "minDate", $("#sdate").val());
                $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
                    $("#sdate").datepicker( "option", "maxDate", selectedDate );
                });
            });
    </script>
</head>

<body>

<!--
	<center>
	<a href='<c:url value="/board/boardList.do"/>'>ëµë³í ê²ìí</a>
	</center> -->


<div id="main">

    <!--TITLE_BX_SLIDER -->
    <div>
        <ul class="bxslider">
            <li><img src="/resources/images/bxtest02.png" width="1920" height="700"/></li>
            <li><img src="/resources/images/bxtest01.png" width="1920" height="700"/></li>
        </ul>
    </div>


    <!--ìë°ì ë³´  -->
    <div id="info">

        <table>
            <tbody>
            <tr>
                <td>&nbsp;<img src="/resources/images/info.png" width="130" height="30" alt="" /> </td>
            </tr>
            </tbody>
        </table>
    </div>


    <!-- ì¬ê¸°ìë¶í° ì¬ê¸°ê°  -->
    <!-- ê²ìë° (ìì¹, ë ì§, ì¸ì) -->
    <table  id="search">
       <form name="form1" method="post" action='<c:url value="/staypc/list.do"></c:url>'>
       <input type="text" id="sdate" name="sdate" value="">~<input type="text" id="edate" name="edate" value="">
       <input type="text" value="${map.keyword }" name="keyword" placeholder="위치">
        <select name="num">
          <option value="" >전체</option>
          <option value="1" <c:out value="${map.num=='1'?'selected':'' }"/>>1명</option>
          <option value="2" <c:out value="${map.num=='2'?'selected':'' }"/>>2명</option>
          <option value="3" <c:out value="${map.num=='3'?'selected':'' }"/>>3명</option>
          <option value="4" <c:out value="${map.num=='4'?'selected':'' }"/>>4명</option>
          <option value="5" <c:out value="${map.num=='5'?'selected':'' }"/>>5명</option>
          <option value="6" <c:out value="${map.num=='6'?'selected':'' }"/>>6명</option>
          <option value="7" <c:out value="${map.num=='7'?'selected':'' }"/>>7명</option>
          <option value="8" <c:out value="${map.num=='8'?'selected':'' }"/>>8명</option>
          <option value="9" <c:out value="${map.num=='9'?'selected':'' }"/>>9명</option>
          <option value="10" <c:out value="${map.num=='10'?'selected':'' }"/>>10명</option>
        </select>
        <input type="submit" value="검색">
    </form>
    </table>






    <!--ëììì¬ì / ê²½ê¸°ì¼ì   -->
    <div id="section4">
        <table>
            <tr>
                <td>
                    <iframe width="694" height="500" src="https://www.youtube.com/embed/ZgDvhixeQg0" frameborder="0" ></iframe></td>
                <td><img src="/resources/images/schedule.png" ></td>

            </tr>
        </table>
    </div>

</div>

</body>
</html>