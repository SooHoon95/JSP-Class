<%@page import="java.io.PrintWriter"%>
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
		String count = request.getParameter("count");
		String color = request.getParameter("color");
		String size = request.getParameter("size");
		
		String filename = "file1.txt";
		String result;
		
		
		PrintWriter writer = null;
		try{
			
			String filePath = application.getRealPath("/" + filename);
			writer = new PrintWriter(filePath);
			writer.println("수량 : " + count);
			writer.println("크기 : " + size);
			writer.println("색상" + color);
			result = "sucess";
		}catch(Exception e){
		result = "fail";
		}finally{
			try{
				writer.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		response.sendRedirect("writeFileEx_03.jsp?result=" + result);
		
		


	%>

</body>
</html>