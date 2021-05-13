<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일 저장 결과</title>
	</head>
	<body>
		<h2>파일 저장 결과</h2>
		
		<%
			request.setCharacterEncoding("utf-8");
			
			String quantity = request.getParameter("quantity");
			String size = request.getParameter("size");
			String color = request.getParameter("color");
			
			String filename = "file1.txt";
			
			// 화면에 프린트 아니고 파일에 프린트
			PrintWriter writer = null;
			// 잘 들엉갔나 확인하는 텍스트 선언
			String result;
			
			try{
				String filePath = application.getRealPath("/" + filename);	// "/"가 꼭 있어야함
				writer = new PrintWriter(filePath);
				writer.println("수량 : " + quantity);	// 여기는 println 가능
				writer.println("크기 : " + size);
				writer.println("색상 : " + color);
				result = "success";
			}catch(Exception e){
				result = "fail";
			}finally{
				try{
					writer.close();	// close해줘야 실행되므로 꼭 닫아줘야함
				}catch(Exception e){
					e.printStackTrace();
				}
			}
			
			response.sendRedirect("05_writeFile_03.jsp?result=" + result);
		%>
		
	</body>
</html>