<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Test2.jsp">
<%

	String test = "Test";

	request.setAttribute("TEST", test);


%>
<input type="submit" value="Test">

</form>
</body>
</html>