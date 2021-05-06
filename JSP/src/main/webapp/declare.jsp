<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>선언부</title>
</head>
<body>

<%
	int i = 10;
	String str = " I haㅍe a dream.";
	%>


<%
	out.println("i = " + i + "<br>");	
	out.println("str = " + str + "<br>");	
	out.println("sum = " + sum(12,15) + "<br>");	
%>

<br>
<br>
<br>


</body>
</html>

<%!
	public int sum(int a, int b){
	
		return a + b;
}
// 위치는 상관없다.
%>
