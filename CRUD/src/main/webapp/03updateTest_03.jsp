<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<body>
	<h4>아이디를 수정 한 후 버튼을 누르세요</h4>
	<%
		
	String userid = request.getParameter("id");
	String strUserid = null;
	
	
	   String url_mysql = "jdbc:mysql://127.0.0.1/ecilpse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	   String id_mysql = "root";
	   String pw_mysql = "qwer1234";
		
	   PreparedStatement ps  = null;
	
	   try{
	   		Class.forName("com.mysql.cj.jdbc.Driver");
	   		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	   		Statement stmt_mysql = conn_mysql.createStatement();
	   		
	   		String A = "update wtest set userid = ? where id = ?";
	   		
	   		ps = conn_mysql.prepareStatement(A);
	   		ps.setString(1, userid);
	   		ps.setString(2, (String)session.getAttribute("ID"));
	   		
	   		ps.executeUpdate();
	   	
	   	
	   		
	   		conn_mysql.close();
	   	session.setAttribute("NEW", userid);
	   	session.setAttribute("OLD", strUserid);
	   		
	   	}catch(Exception e){
	   		e.printStackTrace();
	   	}
	
	response.sendRedirect("03updateTest_04.jsp");
	%>
		
</body>
</html>