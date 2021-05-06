<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

자바에서 날짜를 가져올 때<br>

<%
	GregorianCalendar now = new GregorianCalendar();
	
	String date = String.format("%TF", now); // %TF : yyyy-mm-dd
	String time = String.format("%TT", now);	//%TT : hh:mm:ss
	
%>

	오늘의 날짜 : <%=date %><br>
	현재 시간 : <%=time %><br>
	
	<%=String.format("%TY년 %Tm월 %Td", now, now, now) %><br>
	<%=String.format("%TH시 %TM분 %TS초", now, now, now) %>




</body>
</html>