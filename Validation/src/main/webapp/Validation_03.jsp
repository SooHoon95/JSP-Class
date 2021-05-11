<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
</head>
	<script type="text/javascript">
		function checkLogin(){
			var form = document.loginForm
			if(form.id.value == ""){
				alert("아이디를 입력해주세요!");
				form.id.focus();
				return false;
			}else if (form.passwd.value == ""){
				alert("비밀번호를 입력해 주세요!");
				form.passwd.select();
				return false;
			}
			//Length Check
			if(form.id.value.length <4 || form.id.value.length > 12 ){
				alert("아이디는 4~12 자리 이내로 입력 가능 합니다.");
				fomr.id.focus();
				return false;
			}
			if(form.passwd.value.length < 4){
				alert("비밀번호는 4자 이상으로 입력해주세요.");
				fomr.passwd.select();
				return false;
			}
			
			
			
			form.submit();
		}
	
	
	</script>	
<body>

	<form name="loginForm" action="Validation_03_Process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<P> <input type="button" value="전송" onclick="checkLogin()"> </P>

	</form>
	
	버튼 클릭했을 때 저 위에 자바 스크립트 부분을 실행한다.는 형식
</body>
</html>