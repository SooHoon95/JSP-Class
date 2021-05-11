<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사하기</title>
</head>
<body>
	결국 이거 스위치 문이라고 생각하면 된다 <br><br>
	<c:choose>
		<c:when test="${param.num1 == 0 }">
			처음뵙겠습니다.<br>
		</c:when>
		
		<c:when test="${param.num1 == 1 }">
			반갑습니다.<br>
		</c:when>
	
		<c:otherwise>
			안녕하세요.<br>
		</c:otherwise>	
	
	</c:choose>	
</body>
</html>






