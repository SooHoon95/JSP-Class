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
String Age = request.getParameter("Age");

%>
<h1>미성년자</h1>
<br>
<br>
당신의 나이는 <%=Age %>살 이므로 주류구매가 불가능 합니다.
<br>
<a href="http://localhost:8080/JSP/responseAge_01.jsp">처음으로 이동</a>
</body>
</html>