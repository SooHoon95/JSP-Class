<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
		BufferedReader reader = null;
	
		try{
			String filePath = application.getRealPath("file1.txt");
			//FileReader - 한줄씩 불러
			//bufferReader - 한꺼번에 불러옴
				reader= new BufferedReader(new FileReader(filePath));
			
			//파일 내용 없을때까지 불러오기
			while(true){
				String str = reader.readLine();
				if(str==null)
					break;
				out.print(str + "<br>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{ // try, catch로 실행해서 문제 있어도 없어도 fically로 와서 처리
			try{
				reader.close(); //	잘 마쳤으면 reader 
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	
	%>
</body>
</html>