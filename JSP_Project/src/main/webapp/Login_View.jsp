<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in</title>
</head>
<style type="text/CSS">
.hr-sect {
	display: flex;
	flex-basis: 100%;
	align-items: center;
	color: rgba(0, 0, 0, 0.35);
	font-size: 12px;
	margin: 8px 0px;
}
.hr-sect::before,
.hr-sect::after {
	content: "";
	flex-grow: 1;
	background: rgba(0, 0, 0, 0.35);
	height: 1px;
	font-size: 0px;
	line-height: 0px;
	margin: 0px 16px;
}

</style>
<body>
<header></header>

	<h3>로그인</h3>
	<form action="MainVeiw" method="post">
		<table>
			<tr>
				<td style="text-align: center;"> <input type="text" name="id" size="20" > </td>
				<td colspan="2" , rowspan="2">
				<input type="submit" value="login" style="width: 70pt; height: 45pt;">
			</tr>
			
			<tr>
				<td style="text-align: center;"> <input type="password" name="pw" size="20" > </td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="userType" value="구매회원" checked="checked"> 구매회원 
					 <input type="checkbox" name="userType" value="판매회원"> 판매회원 </td>
				<td>
				<a href = "FindId.jsp">아이디</a> / 
				<a href = "FindId.jsp">비밀번호</a> 찾기
			</tr>
		</table>
			<br>
			<br>
			<div class="hr-sect">아직 회원이 아니신가요?</div>
			<br>
	</form>
	
	<form action="signUp.jsp" method="post">
		<input type="submit" value="회원가입">
	</form>
</body>
</html>