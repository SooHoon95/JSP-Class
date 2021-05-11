<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
   <%
   
   		String userid = request.getParameter("userid");
   
   //------
   
   String url_mysql = "jdbc:mysql://127.0.0.1/ecilpse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
   String id_mysql = "root";
   String pw_mysql = "qwer1234";
   
   PreparedStatement ps = null;//자바 점 에스큐엘 
   	try{
   		Class.forName("com.mysql.cj.jdbc.Driver");
   		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
   		Statement stmt_mysql = conn_mysql.createStatement();
   		
   		String A = "insert into wtest (userid";
   		String B = ") values(?)";
   		
   		ps = conn_mysql.prepareStatement(A+B);
   		ps.setString(1, userid);
   		ps.executeUpdate();
   		
   		conn_mysql.close();
   		
   		
   	}catch(Exception e){
   		e.printStackTrace();
   	}
   
   
   //------
   
   response.sendRedirect("01InsertTest03.jsp");
   
   %>