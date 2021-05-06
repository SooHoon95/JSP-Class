<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>선언부를 이용한 덧셈</title>
</head>
<body>

	2 + 1 = <%=decadd(2,1) %><br>
	3 + 1 = <%=decadd(3,1) %><br>
	4 + 1 = <%=decadd(4,1) %><br>
	5 + 1 = <%=decadd(5,1) %><br>

<br>
<br>
<br>
<br>
	2 ^ 1 = <%=decsquare(2,1) %><br>
	2 ^ 2 = <%=decsquare(2,2) %><br>
	2 ^ 3 = <%=decsquare(2,3) %><br>
	2 ^ 4 = <%=decsquare(2,4) %><br>
	2 ^ 5 = <%=decsquare(2,5) %><br>

<%
 	// 지시자
 		int[] iArr = {10, 20, 30};
		out.print(Arrays.toString(iArr));
%>

</body>
</html>

<%! 
	public int decadd(int a, int b){
	return a + b;
}

%>
	
	

<%! 
	public int  decsquare(int a, int b){
		int rs = 1;
		for(int i=0; i< b; i++){
			rs*= a;
		}
		return rs;
} 
%>


<% 
	out.println((int)Math.pow(2, 3) + "<br>");
	for (int i = 1;i<6; i++){
		
		out.println("2^" + i + " = " + decsquare(2,i) + "<br>");
	}

%>
