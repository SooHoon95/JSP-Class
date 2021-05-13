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
			
			String name = request.getParameter("name");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			String filename = "file.txt";
			
			// 화면에 프린트 아니고 파일에 프린트
			PrintWriter writer = null;
			
			try{
				String filePath = application.getRealPath("/" + filename);	// "/"가 꼭 있어야함
				writer = new PrintWriter(filePath);
				writer.println("제목 : " + title);	// 여기는 println 가능
				writer.println("글쓴이 : " + name);
				writer.println(content);
				out.print("저장 되었습니다.");
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					writer.close();	// close해줘야 실행되므로 꼭 닫아줘야함
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		%>
		
	</body>
</html>