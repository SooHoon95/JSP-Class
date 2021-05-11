<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>상품 선택 저장 결과</h1>

<%

	String result = request.getParameter("result");
	
	if (result.equals("sucess")){
		out.print("저장되었습니다");		
	}else {
		out.print("파일에 문제가 발생했습니다.");
	}

%>
<br>
<br>
<form action="writeFileEx_04.jsp">
 		<input type="submit" value="저장결과 불러오기">

</form>

</body>
</html>