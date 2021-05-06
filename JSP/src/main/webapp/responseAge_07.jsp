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
<%
	String age = request.getParameter("age");
	String kind = URLDecoder.decode(request.getParameter("kind"), "utf-8");
	String possible = URLDecoder.decode(request.getParameter("possible"), "utf-8");
%>

<h1><%=kind %></h1>
<br>
당신의 나이는 <%=age %>세 이므로 주류 구매가 <%=possible %>합니다.
<br>
<a href="responseAge_05.jsp">처음으로 돌아가기</a>


</body>
</html>