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
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
		%>
		
		첫번째 수 : <%=num1 %> <br>
		두번째 수 : <%=num2 %> <br>
		
		<form action="01_Exforward_05.jsp" method="post">
			<%=num1 %> x <%=num2 %> = <%=num1 * num2 %>
			<input type="hidden" name="num1" value="<%=num1%>">
			<input type="hidden" name="num2" value="<%=num2%>">
			<input type="submit" value="나눗셈">
		</form>
		
	</body>
</html>