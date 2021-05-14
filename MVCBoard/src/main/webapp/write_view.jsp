<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="0">
<<<<<<< HEAD
		<!-- 컨트롤러로 날아가는 것임! -->
		<form action="write.do" method="post">
=======
		<form action ="write.do" method ="post">
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="20"></td>
			</tr>
			<tr>
				<td>제목</td>
<<<<<<< HEAD
				<td><input type="text" name="bTitle" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name="bContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a></td>
			</tr>
		</form>
=======
				<td><input type="text" name="bTitle" size="20"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name = "bContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;<a href = "list.do">목록보기</a></td>
				
			</tr>
			
		
		</form>		
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
	</table>
</body>
</html>