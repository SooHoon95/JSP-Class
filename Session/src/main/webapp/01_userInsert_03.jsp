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
		request.setCharacterEncoding("utf-8");
	
		String confirm = request.getParameter("confirm");
		
		String signup = "";
		//session 값 넣어주기
		session.setAttribute("AGREE", confirm);

		if(session.getAttribute("AGREE").equals("동의")){
			signup = URLEncoder.encode("가입되었습니다.", "UTF-8");
			response.sendRedirect("01_userInsert_04.jsp?signup=" + signup);
		}else {
			signup = URLEncoder.encode("가입실패.", "UTF-8");
			response.sendRedirect("01_userInsert_04.jsp?signup=" + signup);
		}
		
		%>
</body>
</html>