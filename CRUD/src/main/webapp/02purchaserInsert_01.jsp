<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%//자바 스크립트 정규식 이용해서 체크하기 %>
<body>
	<h3>아래의 항목을 입력 후 확인 버튼을 누르세요!</h3>
	<form action="02purchaserInsert_02.jsp" method="post">
	<table>
	 <tr>
	 	<td>
		사용자 ID :</td>
		<td> <input type="text" name="userid" size ="8"></td>
	</tr>
	<tr>	
	<td>성명 : </td>
	<td><input type="text" name="name" size="8"></td>
	</tr>
	<tr>
	<td>전화번호 :</td> 
	<td><input type="text" name="tel" size="13"></td>
	</tr>
	<tr>
	<td>주소 : </td>
	<td><input type="text" name="address" size="20"></td>
	</tr>
	</table>
<br>
<br>
<br>
<br>
	<input type="submit" value="확인">
	</form>
	
	
	
	
</body>
</html>