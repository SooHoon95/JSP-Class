<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz1</title>
</head>
<body>
	<%
	int tot = 0;
	int tot2= 0;
	for (int i =1; i<=100; i++){
		tot+= i;
	}
	%>
	1 + 2 + 3 +.....+ 99 + 100 = <%=tot %><br>
================================<br>

1���� 100������ �� = <%=tot %><br>
	<% 
	for (int i=1; i<=200; i++){
		tot+= i;
	}
	
	%>
	
1���� 200������ �� = <%=tot %><br>

</body>
</html>