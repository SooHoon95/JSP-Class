<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${sIdchk}

	<c:if test="${sIdchk == '1'}">
		alert(${sIdchkResult })
	</c:if>	
	<c:if test="${sIdchk == '0' }">
		alert(${sIdchkResult })
	</c:if>
</body>
</html>