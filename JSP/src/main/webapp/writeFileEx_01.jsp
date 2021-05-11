<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<form action="writeFileEx_02.jsp" method = "post">
			
			수량 : <input type="text" name="count">
			<br>
			<br>
			크기 : 
				<input type="radio" name="size" value="대">대
				<input type="radio" name="size" value="중" checked="checked"> 중 
				<input type="radio" name="size" value="소">소
			<br>
			<br>
			색상 :
			<select name="color">
			<option  selected="selected">베이지</option>
			<option>브라운</option>
			<option>카키</option>
			</select>		
			<br>
			
			<input type="submit" value="저장">
			
			</form>
			
</body>
</html>