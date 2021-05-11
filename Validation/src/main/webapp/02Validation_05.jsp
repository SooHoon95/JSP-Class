<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<script type="text/javascript">
	
				
		function checkLogin() {
			
	var empJ = /\s/g;
	//아이디 정규식  		a~Z ,0~9로 시작하는 4~12자리 아이디
	var idj = /^[a-z0-9]{4,12}%/;
	//비밀번호 정규식 		A~Z,a~z,0~9, 로 시작하는 4~12자리 비밀번호
	var pwj = /^[A-za-z0-9]{4,12}$/;
	//이름정규식 가~힣 		한글로이루어진 문자로만 가능
	var namej = /^[가-힣]{2,4}$/;
	//이메일 검사 정규식 	특수문자가 가능하며 중앙에 @ 필수 뒤에 2~3글자 필요
	var mailj = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	
			var form = document.typeForm
			//공백 Check
			if(form.id.value ==""){
				alert("아이디를 입력해주세요!");
				form.id.focus();
				return false;
			}
			if(form.pw.value ==""){
				alert("비밀번호를 입력해주세요!");
				form.id.focus();
				return false;
			}
			if(form.phone1.value ==""){
				alert("전화번호를 입력해주세요!");
				form.id.focus();
				return false;
			}
			if(form.phone2.value ==""){
				alert("전화번호를 입력해주세요!");
				form.id.focus();
				return false;
			}
			if(form.phone3.value ==""){
				alert("전화번호를 입력해주세요!");
				form.id.focus();
				return false;
			}
			if(form.name.value ==""){
				alert("이름을 입력해주세요!");
				form.id.focus();
				return false;
			}
			if(form.email.value ==""){
				alert("이메일를 입력해주세요!");
				form.email.focus();
				return false;
			}
			
			//Length Check 
			if(form.id.value.length <4 || form.id.value.length > 12 ){
				alert("아이디는 4~12 자리 이내로 입력 가능 합니다.");
				form.id.focus();
				return false;
			}
			if(form.pw.value.length < 4 ){
				alert("비밀번호는 4자 이상으로 입력해주세요.");
				form.pw.select();
				return false;
			}
			
			//typeCheck
			if(!namej.test(form.name.value)){
				alert("이름은 한글로만 입력하세요.")
				form.name.focus();
				return false;
			}
			if(!mailj.test(form.email.value)){
				alert("이메일 형식을 확인해주세요 ex) abc@naver.com")
				form.email.focus();
				return false;
			}
		
		
		
		form.submit();
		}
	
	</script>



<body>
	<form name="typeForm" action="02Validation_05_Process.jsp" method="post">
		<h2>회원가입</h2>
		
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pw"><br>
		이름 : <input type="text" name="name"><br>
		언락처 : <input type="text" name="phone1" size="5"> - 
				<input type="text" name="phone2" size="5"> - 
				<input type="text" name="phone3" size="5"> <br>
		이메일 : <input type="text" name="email"><br>
		<br>
		<input type="button" value="가입하기" onclick="checkLogin()">
		
		
	</form>


</body>
</html>