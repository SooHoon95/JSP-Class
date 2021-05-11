<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 가입 결과</h2>
<%

	request.setCharacterEncoding("utf-8");
	String signup = URLDecoder.decode(request.getParameter("signup"), "UTF-8");

%>
	<%=signup %>
	<h1>가입내용</h1>
	아이디 : <%=session.getAttribute("ID") %><br>
	패스워드 : <%=session.getAttribute("PW") %><br>
	성명 : <%=session.getAttribute("NAME") %>
	
	{$
	<%session.invalidate(); %>
	
	
</body>
</html>