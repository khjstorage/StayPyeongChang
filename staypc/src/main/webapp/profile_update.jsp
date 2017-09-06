<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>profile page</title>
<link href="css/profile_style.css" rel="stylesheet" type="text/css">
</head>
	
<body>
<div id="profilePage">

	<!-- profile page -->
	<div id="sidemenu">
		<ul>		
			<li style="margin-top:40px;"><a href="#">프로필 수정</a></li>
			<br>	
			<li style="margin-top:10px;"><a href="#">프로필 보기</a></li>
		</ul>
	</div>
	
	<div id="profileUpdate">
		<div id="profileUpdate_header">프로필 수정</div>
		
		<div id="profileImg">			
			<label>프로필 사진</label>
				<td>
				<input type="image" src="images/user_pic.png" id="user_proPic" style="margin-left:15px; width:200px; height:200px; margin-top:30px;">
				</td>	
			<div id="proPicBtn">			
				<td>
				<input type="button" id="user_proPicBtn" value="파일 업로드" style="width:200px; height:25px; margin-left:131px;">
				</td>
			</div>
		</div>
		
		<div id="lastName">
		<br>
			<label>이름(예 : 길동)</label>
			<td>
			<input type="text" id="user_lastName" style="padding:5px;">
			</td>			
		</div>
		<br>
		
		<div id="firstName">		
			<label>성(예 : 홍)</label>
			<td>
			<input type="text" id="user_firstName" style="padding:5px;">
			</td>		
		</div>
		<br>
		
		<div id="sex">
			<label>성별</label>
			<td>
			<select id="user_sex" style="padding:5px;">
			<option value="man">남자</option>
			<option value="woman">여자</option>			
			</select>
			</td>
		</div>
		<br>
		
		<div id="birthDate">
			<label>생년월일</label>
			<td>
			<select id="user_birthDate_month" style="padding:5px">
			<option value="1">1월</option>
			<option value="2">2월</option>
			<option value="3">3월</option>
			<option value="4">4월</option>
			<option value="5">5월</option>
			<option value="6">6월</option>
			<option value="7">7월</option>
			<option value="8">8월</option>
			<option value="9">9월</option>
			<option value="10">10월</option>
			<option value="11">11월</option>
			<option value="12">12월</option>
			</select>
			</td>
			
			<td>
			<select id="user_birthDate_day" style="padding:5px">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			</select>
			</td>
			
			<td>
			<select id="user_birthDate_year" style="padding:5px">
			<option value="1999">1999</option>
			<option value="1998">1998</option>
			<option value="1997">1997</option>
			<option value="1996">1996</option>
			<option value="1995">1995</option>
			<option value="1994">1994</option>
			<option value="1993">1993</option>
			<option value="1992">1992</option>
			<option value="1991">1991</option>
			<option value="1990">1990</option>
			<option value="1989">1989</option>
			<option value="1988">1988</option>
			<option value="1987">1987</option>
			<option value="1986">1986</option>
			<option value="1985">1985</option>
			<option value="1984">1984</option>
			<option value="1983">1983</option>
			<option value="1982">1982</option>
			<option value="1981">1981</option>
			<option value="1980">1980</option>
			<option value="1979">1979</option>
			<option value="1978">1978</option>
			<option value="1977">1977</option>
			<option value="1976">1976</option>
			<option value="1975">1975</option>
			<option value="1974">1974</option>
			<option value="1973">1973</option>
			<option value="1972">1972</option>
			<option value="1971">1971</option>
			<option value="1970">1970</option>
			<option value="1969">1969</option>
			<option value="1968">1968</option>
			<option value="1967">1967</option>
			<option value="1966">1966</option>
			<option value="1965">1965</option>
			<option value="1964">1964</option>
			<option value="1963">1963</option>
			<option value="1962">1962</option>
			<option value="1961">1961</option>
			<option value="1960">1960</option>
			<option value="1959">1959</option>
			<option value="1958">1958</option>
			<option value="1957">1957</option>
			<option value="1956">1956</option>
			<option value="1955">1955</option>
			<option value="1954">1954</option>
			<option value="1953">1953</option>
			<option value="1952">1952</option>
			<option value="1951">1951</option>
			<option value="1950">1950</option>
			<option value="1949">1949</option>
			<option value="1948">1948</option>
			<option value="1947">1947</option>
			<option value="1946">1946</option>
			<option value="1945">1945</option>
			<option value="1944">1944</option>
			<option value="1943">1943</option>
			<option value="1942">1942</option>
			<option value="1941">1941</option>
			<option value="1940">1940</option>
			<option value="1939">1939</option>
			<option value="1938">1938</option>
			<option value="1937">1937</option>
			<option value="1936">1936</option>
			<option value="1935">1935</option>
			<option value="1934">1934</option>
			<option value="1933">1933</option>
			<option value="1932">1932</option>
			<option value="1931">1931</option>
			<option value="1930">1930</option>
			<option value="1929">1929</option>
			<option value="1928">1928</option>
			<option value="1927">1927</option>
			<option value="1926">1926</option>
			<option value="1925">1925</option>
			<option value="1924">1924</option>
			<option value="1923">1923</option>
			<option value="1922">1922</option>
			<option value="1921">1921</option>
			<option value="1920">1920</option>
			<option value="1919">1919</option>
			<option value="1918">1918</option>
			<option value="1917">1917</option>
			</select>
			</td>
			
			<td>
			<input type="radio" id="unlock" value="unlock" style="margin-left:5px;"> 공개
			<input type="radio" id="lock" value="lock" style="margin-left:5px;"> 비공개
			</td>
		</div>
		<br>
		
		<div id="email">
			<label>이메일</label>
			<td>
			<input type="text" id="user_email" style="padding:5px;">
			</td>
			<td>
			<input type="radio" id="unlock" value="unlock" style="margin-left:10px;"> 공개
			<input type="radio" id="lock" value="lock" style="margin-left:10px;"> 비공개
			</td>
		</div>
		<br>
		
		<div id="phone">
			<label>전화번호</label>
			<td>
			<input type="text" id="user_phone" style="padding:10px;">
			</td>
			<td>
			<input type="radio" id="unlock" value="unlock" style="margin-left:10px;"> 공개
			<input type="radio" id="lock" value="lock" style="margin-left:10px;"> 비공개
			</td>
		</div>
		<br>		
		
		<div id="address">
			<label>거주도시</label>
			<td>
			<input type="text" id="user_address" style="padding:5px;">
			</td>
			<td>
			<input type="radio" id="unlock" value="unlock" style="margin-left:10px;"> 공개
			<input type="radio" id="lock" value="lock" style="margin-left:10px;"> 비공개
			</td>
		</div>
		<br>
		
		<div id="profileInfo">
			<label>자기소개</label>
					<td>
					<input type="text" id="user_profileInfo" style="padding:10px; width:400px; height:200px;">
					</td>
		</div>
		<br>
		
		<div id="creadit">
			<label>크레딧</label>
				<td>0 point</td>
		</div>		
		<br><br><br><br>		
		
		<div id="profileBnt">
			<td>
			<input type="submit" id="profileSaveBnt" value="저장하기" style="margin-left:350px; width:200px; height:50px; font-size:16px;">
			<input type="submit" id="cancleAccountBnt" value="회원탈퇴" style=" width:200px; height:50px; background-color:#ff5a5f; color:#ffffff; font-size:16px;">
			</td>
		</div>
		
</div>
</div>
</body>
</html>

	