<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<%
	GregorianCalendar now = new GregorianCalendar();

%>
	
	�������� <%=String.format("%TY �� %Tm �� %Td ��", now, now, now) %>�Դϴ�<br>
	����ð���<%=String.format("TH �� %TM �� %TS��" ,now, now, now) %>�Դϴ�<br>
	<hr>
