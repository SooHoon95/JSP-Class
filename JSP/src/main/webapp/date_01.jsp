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

�ڹٿ��� ��¥�� ������ ��<br>

<%
	GregorianCalendar now = new GregorianCalendar();
	
	String date = String.format("%TF", now); // %TF : yyyy-mm-dd
	String time = String.format("%TT", now);	//%TT : hh:mm:ss
	
%>

	������ ��¥ : <%=date %><br>
	���� �ð� : <%=time %><br>
	
	<%=String.format("%TY�� %Tm�� %Td", now, now, now) %><br>
	<%=String.format("%TH�� %TM�� %TS��", now, now, now) %>




</body>
</html>