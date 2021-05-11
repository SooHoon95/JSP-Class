<%@page import="org.apache.catalina.ant.jmx.JMXAccessorQueryTask"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
			String id = request.getParameter("id");
	
			String oldname = null;
			String oldtel = null;
			String oldaddress= null;
			
			String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
			String id_mysql = "root";
			String pw_mysql = "qwer1234";

		
			String whereStatement = "select name, tel, address from purchaserinfo where userid ='" + id + "'";

		   try{
		   		Class.forName("com.mysql.cj.jdbc.Driver");
		   		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		   		Statement stmt_mysql = conn_mysql.createStatement();
		   		
		   		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
		   		
				while (rs.next()){
					oldname = rs.getString(1);
					oldtel = rs.getString(2);
					oldaddress = rs.getString(3);
					
				}
		   		
		   		conn_mysql.close();
		   		
		   	}catch(Exception e){
		   		e.printStackTrace();
		   	}


%>

	<h2>수정 후 확인 버튼을 누르세요!</h2>
	
	<form action="04purchaserUpdate_03.jsp" method = "post">
		<table>
			<tr>
				<td>사용자 ID : </td>
				<td> <input type="text" readonly="true" name="userid" size="8" value="<%=id%>"></td>
			</tr>

			<tr>
				<td>성명 : </td>
				<td> <input type="text" name="name" size="8" value="<%=oldname%>"></td>
			</tr>
			
			<tr>
				<td>전화번호 : </td>
				<td> <input type="text" name="tel" size="15" value="<%=oldtel%>"></td>
			</tr>

			<tr>
				<td>주소</td>
				<td> <input type="text" name="address" size="25" value="<%=oldaddress%>"></td>
			</tr>
								
			<tr>
				<td></td>
				<td> <input type="submit" value="확인"></td>	
			</tr>
			
		
		</table>
	
	</form>
</body>
</html>