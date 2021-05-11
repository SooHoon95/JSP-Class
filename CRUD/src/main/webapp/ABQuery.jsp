<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h3>주소록 명단 리스트</h3>
		
		검색 선택 : <select>
					<option value="이름">이름</option>
					<option value="전화번호">전화번호</option>
					<option value="주소" selected="selected">주소</option>
					<option value="관계">관계</option>
				</select>
		
				<input type="text" name="search" size="15">
				<input type="submit" value="검색">
				<br>
				<br>
	
				<hr>
			
<%
			String url_mysql = "jdbc:mysql://127.0.0.1/ABQuery?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
			String id_mysql = "root";
			String pw_mysql = "qwer1234";

		
			String whereStatement = "select Seq, name, tel, address, email, relation from PracticeSearch";
			int cnt = 0;
		   try{
		   		Class.forName("com.mysql.cj.jdbc.Driver");
		   		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		   		Statement stmt_mysql = conn_mysql.createStatement();
		   		
		   		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
%>
		<table border="1">
			<tr>
				<th>Seq</th><th>이름</th><th>전화번호</th><th>주소</<th><th>이메일</th><th>관계</th>
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
				<td><%=rs.getString(6) %></td>
			</tr>
			<br>
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

			<input type="submit" value="입력">
			<hr>
<br><br>
 총 인원은 <%=cnt %>입니다.

							
				
				
		
</body>
</html>