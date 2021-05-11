<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//세션이나 어트리뷰트로 지정해주면 해당 어트리뷰트 값만 ${}에 집어 넣는다.
//그렇지 않으면 param 으로 불러온다. 여기서는 배열이니까 [순서[]
%>
	아이디 : ${param.id }<br>
	선택한 동물 : ${paramValues.animal[0] }
				${paramValues.animal[1] }
				${paramValues.animal[2] }
</body>
</html>