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
<h1>성인</h1>
<br>
<br>
당신의 나이는 <%=Age %>살 이므로 주류 구매가 가능합니다.
<br>
<a href="responseAge_01.jsp">처음으로 이동</a>

</body>
</html>