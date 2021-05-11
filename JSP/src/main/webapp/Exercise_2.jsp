<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="requestExercise.jsp">

	<input type="text" name="inputV1" size="10"> + 
	<input type="text" name="inputV2" size="10">
	<br>
	
	<select name="selectNum1">
	<%for(int i=1; i<1000; i++){ %>
	<option value="<%=i%>" selected="selected"><%=i%></option>
	<%} %>
	</select>
	X
	<select name="selectNum2">
	<%for(int i=1; i<1000; i++){ %>
	<option value="<%=i%>" selected="selected"><%=i%></option>
	<%} %>
	</select>
	<br>
	
	<input type="submit" value="OK">
	
	
	</form>
</body>
</html>