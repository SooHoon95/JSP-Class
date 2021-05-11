<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
For 문 자바에서 쓰는 것 보다 빠르다.
<br>
<br>

	<c:forEach var = "cnt" begin ="1" end="5">
		<font size="${cnt }">
			대한민국 ! 
		</font><br>
	</c:forEach>

</body>
</html>