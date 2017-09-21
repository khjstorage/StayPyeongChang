<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<title>new_main</title>
<link href="resources/css/test.css" rel="stylesheet" type="text/css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<!-- responsiveslides  -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="resources/js/responsiveslides.min.js"></script>

<!--  bxslider -->
<script src="resources/js/jquery.bxslider.min.js"></script>
<link href="jquery.bxslider.css" rel="stylesheet" />


<script>
  $(function() {
    $(".rslides").responsiveSlides();
  });
  
  
  $(".rslides").responsiveSlides({
	  auto: true,             // Boolean: Animate automatically, true or false
	  speed: 100,            // Integer: Speed of the transition, in milliseconds
	  timeout: 4000,          // Integer: Time between slide transitions, in milliseconds
	  pager: false,           // Boolean: Show pager, true or false
	  nav: false,             // Boolean: Show navigation, true or false
	  random: false,          // Boolean: Randomize the order of the slides, true or false
	  pause: false,           // Boolean: Pause on hover, true or false
	  pauseControls: true,    // Boolean: Pause when hovering controls, true or false
	  prevText: "Previous",   // String: Text for the "previous" button
	  nextText: "Next",       // String: Text for the "next" button
	  minwidth: "1920px",           // Integer: Max-width of the slideshow, in pixels
	  navContainer: "",       // Selector: Where controls should be appended to, default is after the 'ul'
	  manualControls: "",     // Selector: Declare custom pager navigation
	  namespace: "rslides",   // String: Change the default namespace used
	  before: function(){},   // Function: Before callback
	  after: function(){}     // Function: After callback
	});   
  
</script>

<script>
$(document).ready(function(){
	var slider_03 =	$('.bxslider_03').bxSlider({
			auto: true,
			controls:false,
			pager:false,
			maxSlides: 3,
			moveSlides:1,  
			slideWidth: 250,
			slideMargin:0,
			autoHover:true,
		});
		// 클릭시 멈춤 현상 해결 //
		$(document).on('click','.bx-next, .bx-prev',function() {
		slider.stopAuto();
		slider.startAuto();
		slider_01.stopAuto();
		slider_01.startAuto();
		});
		$(document).on('mouseover','.bx-pager, #bx-pager1',function() {
		slider.stopAuto();
		slider.startAuto();
		slider_01.stopAuto();
		slider_01.startAuto();
		slider_02.stopAuto();
		slider_02.startAuto();
		});	
});


$(document).ready(function(){
	var slider_03 =	$('.bxslider_01').bxSlider({
			auto: true,
			controls:false,
			pager:false,
			maxSlides: 3,
			moveSlides:1,  
			slideWidth: 250,
			slideMargin:0,
			autoHover:true,
		});
		// 클릭시 멈춤 현상 해결 //
		$(document).on('click','.bx-next, .bx-prev',function() {
		slider.stopAuto();
		slider.startAuto();
		slider_01.stopAuto();
		slider_01.startAuto();
		});
		$(document).on('mouseover','.bx-pager, #bx-pager1',function() {
		slider.stopAuto();
		slider.startAuto();
		slider_01.stopAuto();
		slider_01.startAuto();
		slider_02.stopAuto();
		slider_02.startAuto();
		});	
});
</script>
</head>
<body>
<!-- logo image -->
<div class="img">
	<img src="resources/images/logo.png" width="150" height="110" alt=""/>
</div>

<!-- menu -->
<div class="header">
  	<div class="menu" style="color:#ffffff; font-size:16px;">
			<ul>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">호스팅</a></li>
				<li><a href="#">도움말</a></li>
				<li><a href="#">로그인</a></li>
			</ul>
	</div>	
</div>

<!-- rslider  image -->
<div class="slide_image">
	<ul class="rslides" style="width:1920px; height:500px; line-height:500px;
			 text-align: center; " >
		 <li><img src="resources/images/rslides01.png"  alt=""></li>
		 <li><img src="resources/images/rslides02.png"   alt=""></li>
		 <li><img src="resources/images/rslides03.png"  alt=""></li>
	</ul>
</div>

	
<!-- search -->
<div class="search_wrap">
	<div class="search_box" >
		<table id="search">
        <tr>
            <td>
                <form name="form1" method="post" action='<c:url value="/lodge/list.do"></c:url>'>
                    <input type="text" id="sdate" name="sdate" value="${map.sdate }">~<input type="text" id="edate" name="edate" value="${map.edate }">
                        <select name="num">
                        <option value="">인원</option>
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
            </td>
        </tr>
    </table>
	</div>
</div>


<!-- 공통 레이아웃 시작 -->
<div class="common_wrapper">
		<!--bxslider -->
		<div class="bx_box_01">
		<div>
					<span style="color:#000000; margin:35%;">PYEONGCHANG STAY 숙소 소개</span>
					<br><br>			
		</div>
		
		<div class="layout_section01">
					<img src="resources/images/update_image.png"  alt="" >
		</div>
		<div id="s_banner_wrap">				
			<div class="bxslider_03_box">
				 <ul class="bxslider_03">			
				    	<li class="banner_a1"><img src="resources/images/rslides01.png"></li>
				      	<li class="banner_a2"><img src="resources/images/rslides03.png"></li>
				      	<li class="banner_a3"><img src="resources/images/rslides02.png"></li>
				      	<li class="banner_a4"><img src="resources/images/rslides01.png"></li>
				      	<li class="banner_a4"><img src="resources/images/rslides02.png"></li>
				      	<li class="banner_a4"><img src="resources/images/rslides03.png"></li>
				      	<li class="banner_a4"><img src="resources/images/rslides01.png"></li>
				      	<li class="banner_a4"><img src="resources/images/rslides02.png"></li>
				      	<li class="banner_a4"><img src="resources/images/rslides03.png"></li>
				</ul>
		</div>	
		</div>
		
		
		<div id="s_banner_wrap_01">				
					<div class="bxslider_01_box">
						 <ul class="bxslider_01">			
					    	<li class="banner_a1"><img src="resources/images/rslides01.png"></li>
					      	<li class="banner_a2"><img src="resources/images/rslides03.png"></li>
					      	<li class="banner_a3"><img src="resources/images/rslides02.png"></li>
					      	<li class="banner_a4"><img src="resources/images/rslides01.png"></li>
					      	<li class="banner_a4"><img src="resources/images/rslides02.png"></li>
					      	<li class="banner_a4"><img src="resources/images/rslides03.png"></li>
					      	<li class="banner_a4"><img src="resources/images/rslides01.png"></li>
					      	<li class="banner_a4"><img src="resources/images/rslides02.png"></li>
					      	<li class="banner_a4"><img src="resources/images/rslides03.png"></li>
					    </ul>
					</div>	
					<div class="layout_section01">
								<img src="resources/images/review_image.png"  alt="" >			
					</div>
		</div>				
		</div>
</div><!-- 공통 레이아웃 끝 -->
 
</body>
</html>