<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객명단 리스트 검색</title>
</head>
<body>
	<h3>고객명단 리스트</h3>
	<%
	
			String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
			String id_mysql = "root";
			String pw_mysql = "qwer1234";

		
			String whereStatement = "select userid, name, tel, address, insertdate from purchaserinfo";
			int cnt = 0;
		   try{
		   		Class.forName("com.mysql.cj.jdbc.Driver");
		   		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		   		Statement stmt_mysql = conn_mysql.createStatement();
		   		
		   		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
%>
		<table border="1">
			<tr>
				<th>UserId</th><th>이름</th><th>전화번호</th><th>주소</th><th>입력일자</th>
			</tr>

<%
				while (rs.next()){
%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
			</tr>
<%

	cnt++;
				}
%>
		</table>	   		
<%		   		conn_mysql.close();
		   		
		   	}catch(Exception e){
		   		e.printStackTrace();
		   	}
%>

<br><br>
 총 인원은 <%=cnt %>입니다.


	
</body>
</html>