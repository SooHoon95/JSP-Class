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

<h2>파일 저장결과</h2>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	
	String filename = "file.txt";
	String result;
	
	
	PrintWriter writer = null;
	try{
		
		String filePath = application.getRealPath("/" + filename);
		writer = new PrintWriter(filePath);
		writer.println("제목 :" + title);
		writer.println("글쓴이 :" + name);
		writer.println(content);
		out.print("저장 되었습니다 .");
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
	
	response.sendRedirect("writeFile_13.jsp?result=" + result);
	
	
	%>

</body>
</html>