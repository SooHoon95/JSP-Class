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
			
			// 넘겨주는데 response 말고 request
			// num1 + num2를 ADD라는 어트리뷰트에 넣음
			// 어트리뷰트는 intn double 이미지 등 신경 안씀
			request.setAttribute("ADD", num1 + num2);
			request.setAttribute("SUB", num1 - num2);
			request.setAttribute("MUL", num1 * num2);
			request.setAttribute("DIV", (double)num1 / (double)num2);
			
			// request를 03으로 보냄 - 변수 명 dispatcher
			RequestDispatcher dispatcher = request.getRequestDispatcher("06_forward_03.jsp");
			dispatcher.forward(request, response);
			
			
			// forward 		 - 동일한 web server에서만 가능 	 - 빠름 - 한번에 전송 				- request 내장 변수를 통해 데이터 전달
			// sendReadirect - 다른 web sever에서도 가능	 - 느림 - 한개씩 전송해서 while문 필요 - url 뒤에 데이터를 붙여서 전달
		%>
		
	</body>
</html>