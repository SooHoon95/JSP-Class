<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	GregorianCalendar now = new GregorianCalendar();

%>

	현재일은 <%=String.format("%TY년 %Tm월 %Td", now, now, now) %>입니다<br>
