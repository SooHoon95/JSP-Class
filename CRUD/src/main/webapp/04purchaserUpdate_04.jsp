<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
	
			<tr>
				<td class ="comment">사용자 ID : </td>
				<td> ${ID }</td>
			</tr>

			<tr>
				<td class ="comment">성명 : </td>
				<td> ${NNAME }</td>
			</tr>
			
			<tr>
				<td class ="comment">전화번호 : </td>
				<td> ${NTEL }</td>
			</tr>

			<tr>
				<td >주소</td>
				<td> ${NADDRESS  }</td>
			</tr>
	</table>

<%session.invalidate(); %>



</body>
</html>