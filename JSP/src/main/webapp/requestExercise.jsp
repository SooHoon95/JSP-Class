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
		String plus1, plus2, mul1, mul2;
		

	request.setCharacterEncoding("utf-8");
	plus1 = request.getParameter("inputV1");
	plus2 = request.getParameter("inputV2");
	
	mul1 = request.getParameter("selectNum1");
	mul2 = request.getParameter("selectNum2");
	int plus1_val = Integer.parseInt(plus1);
	int plus2_val = Integer.parseInt(plus2);
	int selectNum1_val = Integer.parseInt(mul1);
	int selectNum2_val = Integer.parseInt(mul2);
	
%>
	
	<%=plus1_val %> + <%=plus2_val %> = <%=plus1_val + plus2_val %>
	<br>
	<%=selectNum1_val %> X <%=selectNum2_val %> = <%=(selectNum1_val * selectNum2_val)%>



</body>
</html>