<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>로그인 페이지</title>
</head>
<body>
	<form action="login_check.do">
		<table>
			<tr>
				<th>
					비밀번호
				</th>
				<td>
					<input type="password" name="pwd">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit"  value="로그인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>