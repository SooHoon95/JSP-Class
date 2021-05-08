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
	int Age = Integer.parseInt(request.getParameter("Age"));
	

	if(Age>19){
		response.sendRedirect("responseAge_03.jsp?Age=" + Age);
	} else
		response.sendRedirect("responseAge_04.jsp?Age=" + Age);
%>
</body>
</html>