<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("userName");
		
		//session 값 넣어주기
		session.setAttribute("ID", id);
		session.setAttribute("PW", pw);
		session.setAttribute("NAME", name);
	%>
	
	<h2>약관</h2>
	<form action="01_userInsert_03.jsp" method="post">
	---------------------------------------<br>
	1.회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.<br>
	2.웹 사이트의 정상운영을 방해하는 회원은 탈퇴처리 합니다.<br>
	---------------------------------------<br>
	위의 약관에 동의하십니까?
	<br>
	<br>
	<input type="radio" name="confirm" value="동의" checked="checked"> 동의
	<input type="radio" name="confirm" value="동의 안 함" > 동의 안 함
	<br>
	<br>
	<br>
	<input type="submit" value="확인">
	</form>
	
</body>
</html>