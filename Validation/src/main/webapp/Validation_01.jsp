<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<script type="text/javascript">
		function CheckForm() {
			alert("아이디 :" + document.loginForm.id.value + "\n"
					+  "비밀번호" + document.loginForm.passwd.value);	
		}
	
	
	</script>
	
<body>

	<form name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<P> <input type="submit" value="전송" onclick="CheckForm()"> </P>

	</form>
	
	버튼 클릭했을 때 저 위에 자바 스크립트 부분을 실행한다.는 형식
</body>
</html>