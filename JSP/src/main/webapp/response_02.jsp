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
	String siteName = request.getParameter("sitename");

	switch(siteName){
	
	case "naver" :
		response.sendRedirect("http://www.naver.com");
		break;
	case "daum" :
		response.sendRedirect("http://www.daum.net");
		break;
	case "google" :
		response.sendRedirect("http://www.google.com");
		break;
	default :
		response.sendRedirect("http://localhost:8080/JSP/response_01.jsp");
		break;
	}

%>

</body>
</html>