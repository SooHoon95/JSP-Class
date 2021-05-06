<%@page import="java.net.URLEncoder"%>
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

	int age = Integer.parseInt(request.getParameter("age"));
	String kind ="";
	String possible="";
	
	if (age>=20){
		
		kind = URLEncoder.encode("성인", "UTF-8");
		possible = URLEncoder.encode("가능", "UTF-8");
		response.sendRedirect("responseAge_07.jsp?age=" + age + "&kind=" + kind + "&possible=" + possible);
	
	}else if(age>=0){
		kind = URLEncoder.encode("미성년자", "UTF-8");
		possible = URLEncoder.encode("불가능", "UTF-8");
		response.sendRedirect("responseAge_07.jsp?age=" + age + "&kind=" + kind + "&possible=" + possible);
	
	}else {
		response.sendRedirect("responseAge_05.jsp");
	}

%>

</body>
</html>