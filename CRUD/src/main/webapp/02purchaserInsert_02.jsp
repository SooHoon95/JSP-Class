<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	String result = "";
			
	session.setAttribute("ID", userid);
	session.setAttribute("NAME", name);
	session.setAttribute("ADDRESS", address);
	session.setAttribute("PHONE", tel);
	
			
	//------
	
	String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null;//자바 점 에스큐엘 
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			String A = "insert into purchaserinfo (userid, name, tel, address, insertdate";
			String B = ") values(?, ? ,?, ?, now())";
			
			ps = conn_mysql.prepareStatement(A+B);
			
			ps.setString(1, userid);
			ps.setString(2, name);
			ps.setString(3, tel);
			ps.setString(4, address);

			ps.executeUpdate();
			
			conn_mysql.close();
			
		result = "success";
		
		
		}catch(Exception e){
			e.printStackTrace();
			
			result = "fail";
		}
	
	
	//------
	
	
	if(result.equals("success")){
		response.sendRedirect("02purchaserInsert_03.jsp");
	}else {
		response.sendRedirect("02purchaserInsert_04.jsp");
	}



%>