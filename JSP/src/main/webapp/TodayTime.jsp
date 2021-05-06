<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<%
	GregorianCalendar now = new GregorianCalendar();

%>
	
	현재일은 <%=String.format("%TY 년 %Tm 월 %Td 일", now, now, now) %>입니다<br>
	현재시각은<%=String.format("TH 시 %TM 분 %TS초" ,now, now, now) %>입니다<br>
	<hr>
