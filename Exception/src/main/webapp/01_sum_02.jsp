<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="DataError.jsp"%> 
<%	//위에 제목에 에러페이지 설정해서 매번 트라이캐치 안써도 된다.
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	int result = num1 + num2;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덧셈 결과</title>
</head>
<body>
	<%=num1 %> + <%=num2 %> = <%=result %>

</body>
</html>