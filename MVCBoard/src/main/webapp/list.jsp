<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
=======
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>
<<<<<<< HEAD
<!-- 여긴 sql에 있는 DAO DTO(Bean) 모두 쓰임! (select) command가 먼저 있어야 함! -->
	<h3>MVC 게시판</h3>
=======
 <h3>MVC게시판</h3>
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
<<<<<<< HEAD
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${list }" var="dto">
		<!-- 		request.setAttribute("list", dtos); 여기서 정의해준 list임!-->			
		<!-- 		여기가 get!!!! -->			
		<tr>
			<td>${dto.bId }</td>
			<td>${dto.bName }</td>
			<!-- key 값이 uri이기 때문에 bId로 달아야함! -->
			<td><a href="content_view.do?bId=${dto.bId }">${dto.bTitle }</a></td>
			<td>${dto.bDate }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="4"><a href="write_view.do">글작성</a></td>
		</tr>
	</table>
</body>
</html>
=======
			<th>내용</th>
			<th>날짜</th>
		</tr>
		
		<c:forEach items="${list }" var ="dto">
			<tr>
				<td>${dto.bid }</td>
				<td>${dto.bName }</td>
				<td><a href = "content_view.do?bid=${dto.bid }">${dto.bTitle }</a></td>
				<td>${dto.bDate }</td>
			</tr>
		</c:forEach>
		
		<tr>
			<td colspan="4"><a href ="write_view.jsp">글작성</a></td>
		
		</tr>
		
	</table>
</body>
</html>
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
