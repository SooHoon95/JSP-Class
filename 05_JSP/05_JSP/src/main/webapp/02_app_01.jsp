<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>application 내장변수</title>
	</head>
	<body>
		
		<%
			/* getContextPath = 어디에 위치하는지 알려줌(상대경로) */
			String appPath = application.getContextPath();
			/* getRealPath = 어디에 위치하는지 알려줌(절대경로) */
			String filePath = application.getRealPath("input.txt");
		%>
		<%=appPath %> <br>
		<%=filePath %>
	</body>
</html>