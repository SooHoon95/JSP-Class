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
		<form action="modify.do" method="post">
			<%-- <input type="hidden" name="bId" value="${content_view.bId }"> --%>
			<tr>
				<td>번호</td>
				<td><input type="text" name="bId" readonly="readonly" value="${content_view.bId }"></td>
			</tr>
=======
		<form action ="modify.do" method ="post">
			<input type="hidden" name="bid" value="${content_view.bid}">
			<tr>
				<td>번호</td>
				<td> <input type="text" name="bid" readonly="readonly" value="${content_view.bid }" ></td>
				
			</tr>
			
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="20" value="${content_view.bName }"></td>
			</tr>
			<tr>
				<td>제목</td>
<<<<<<< HEAD
				<td><input type="text" name="bTitle" size="50" value="${content_view.bTitle }"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name="bContent">${content_view.bContent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a>
				&nbsp;&nbsp;&nbsp;<a href="delete.do?bId=${content_view.bId }">삭제</a></td>
			</tr>
		</form>
	</table>
=======
				<td><input type="text" name="bTitle" size="20" value="${content_view.bTitle }"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name = "bContent">${content_view.bContent}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<a href = "list.do">목록보기</a>
				&nbsp;&nbsp;&nbsp;<a href = "delete.do?bid=${content_view.bid }">삭제</a></td>
			</tr>
			
		
		</form>		
	</table>

>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
</body>
</html>