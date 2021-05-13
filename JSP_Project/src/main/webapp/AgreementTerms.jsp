<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관 동의</title>
</head>
<body>
	<h3>약관동의</h3>
	<hr>
	<form action="">
		<input type="checkbox" name="check_all" value="agree"> 전체 동의하기 <!-- 누르면 전체 체크되고 다시 누르면 전체 해제하기 -->
		<br>
		<br>
		<input type="checkbox" name="check1" value="agree"> <B>(필수)</B> 본인은 만 14세 이상입니다.
		<br>
		<br>
		<input type="checkbox" name="check2" value="agree"> <B>(필수)</B> 이용악관 동의 <a>전체보기></a>
		<br>
		<br>
		<textarea rows="10" cols="100"></textarea>
		<br>
		<br>
		<input type="checkbox" name="check3" value="agree"> <B>(필수)</B> 개인정보 수집 및 이용. <a>전체보기></a>
		<br>
		<br>
		<input type="submit" value=" 이전단계 " style="text-align: center"> <input type="submit" value=" 다음단계 "> 
	</form>
</body>
</html>