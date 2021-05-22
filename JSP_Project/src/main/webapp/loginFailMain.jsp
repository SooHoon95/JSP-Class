<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in</title>
</head>
<!-- 선긋고 그 중간에 텍스트 입력하기 폼 2021.05.13 최수훈 -->
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
<!-- 체크박스 하나만 체크하기 -->
<script type="text/javascript">

function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("userType");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
	}
	
function name() {
	
}
	</script>
	
<body>

	<h3>로그인</h3>
	<form action="loginaction.do" method="post">
		<table>
			<tr>
				<td style="text-align: center;"> <input type="text" name="loginId" id="loginId" size="20" > </td>
				<td colspan="2" rowspan="2">
				<input type="submit" value="login" style="width: 70pt; height: 45pt;"></td>
			</tr>
			
			<tr>
				<td style="text-align: center;"> <input type="password" name="loginPw" size="20" > </td>
			</tr>
			<tr>
				<td colspan="2" >
				<font color="red" size="2pt">
					<i>가입되지 않은 아이디이거나, 잘못된 비밀번호입니다.</i>
				</font>
				</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="userType" value="구매회원" checked="checked" onclick='checkOnlyOne(this)'> 구매회원 
					 <input type="checkbox" name="userType" value="판매회원" onclick='checkOnlyOne(this)'> 판매회원 </td>
				<td>
				<a href = "FindId.jsp">아이디</a> / 
				<a href = "FindPw.jsp">비밀번호</a> 찾기
			</tr>
		</table>
			<br>
			<br>
			<div class="hr-sect">아직 회원이 아니신가요?</div>
			<br>
	</form>
		
	<form action="AgreementTerms.jsp" method="post">
		<input type="submit" value="회원가입">
	</form>
</body>
</html>