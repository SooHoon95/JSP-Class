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
		
		//num1 + num2라는 어트리뷰트를 리퀘스트에 집어넣음
		request.setAttribute("ADD", num1 + num2);
		request.setAttribute("SUB", num1 - num2);
		request.setAttribute("MUL", num1 * num2);
		request.setAttribute("DIV", (double)num1 / (double)num2);
		
		// 리퀘스트와 리스폰스를 따로가 아니라 같이 만드는 애
		RequestDispatcher dispatcher = request.getRequestDispatcher("forward_03.jsp");
		dispatcher.forward(request, response);
		//forward_03.jsp 를 달고 리퀘스트로 날려줌. 그래야 다음에 연결되는 페이지에서도 또 다른데로 날릴 수 있음.
		//결국 리퀘스트와 리스폰스를 같이 기능하는 애들 만들어서 한꺼번에 날려줌. 리퀘스트를 리스폰스로 포장해서 날림. 받는 애 입장애서는 리스폰스가 아니라 리퀘스트가 왔으니까 또 다른데로 날리는 것이 가능
		
		
%>

</body>
</html>