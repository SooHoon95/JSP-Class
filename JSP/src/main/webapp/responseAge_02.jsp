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
	String Age = request.getParameter("Age");
	int Age_val = Integer.parseInt(Age);
	

	if(Age_val>19){
		response.sendRedirect("responseAge_03.jsp?Age=" + Age_val);
	} else
		response.sendRedirect("responseAge_04.jsp?Age=" + Age_val);
%>
</body>
</html>