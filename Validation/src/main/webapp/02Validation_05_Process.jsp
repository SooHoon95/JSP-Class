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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String name = request.getParameter("name");
	String email = request.getParameter("email");

%>

		아이디 : <%=id%> <br>
		비밀번호 : <%=pw%> <br>
		전화번호 : <%=phone1%> - <%=phone2 %> - <%=phone3 %> <br>
		이름 : <%=name%> <br>
		이메일 : <%=email%> <br>

</body>
</html>