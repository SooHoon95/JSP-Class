<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 2</title>
</head>
<body>
	<%
		int a = 30;
		int b = 20;
		int addition = a + b;
		
		/*out.println(a + " + " + b + "=" + (a+b));*/
		
	%>

	<%=a %> + <%=b %> = <%=addition %><br>
	==========================<br>
	
	<%=a %> - <%=b %> = <%=a-b %><br>
	<%=a %> * <%=b %> = <%=a*b %><br>
	<%=a %> / <%=b %> = <%=a/b %><br>
	<%=a %> % <%=b %> = <%=a%b %><br>
	=========================<br>
	
	<%
		for(int i = 1; i<=9; i++){
			out.println(2 + " * " + i + "=" + (2*i) + "<br>");
			out.println("================"+ "<br>");
		}
	
	%>
	
	While 문 작성해서 출력하기<br>
	
	<%
		int j = 1;
		while (j<10){
			out.println(3 + " * " + j + " = " + (3*j));
		%>
		<br>
	<%
			out.print("============<br>");
			j++;
		}
	%>
	
	
</body>
</html>