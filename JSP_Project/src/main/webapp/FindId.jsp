<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 체크박스 하나만 체크하기 -->
<script type="text/javascript">

function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("animal");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
	}
	</script>
<!-- 버튼 액션1 :비밀번호찾기로 이동 -->
<script>
	function info_chk() {
		return true;
	}
	function findPw(frm) {
		frm.action='FindPw.jsp';
		frm.submit();
		return true;
	}
<!-- 버튼 액션 2 : 로그인으로 이동 -->

	function backLogin(frm) {
		frm.action='Login_View.jsp';
		frm.submit();
		return true;
	}
</script>


<body>
<h4>아이디 찾기</h4>
<hr>
	<form action="findId.do">
		<table>
			<tr>
			<td> <h5>회원아이디 찾기 </h5></td>
			</tr>
			<tr>
				<td> <input type="text" name="findingName" value="이름을 입력하세요" style="text-align: left"></td>
				<td colspan="2" rowspan="2">
				<input type="submit" value="login" style="width: 70pt; height: 45pt;"></td>
			</tr>
			<tr>
				<td> <input type="text" name="findingEmail" value="이메일을 입력하세요" style="text-align: left"></td>				
			</tr>
			<tr>
				<td> <input type="checkbox" name="userType" value="구매회원" checked="checked" onclick='checkOnlyOne(this)'> 구매회원 
					 <input type="checkbox" name="userType" value="판매회원" onclick='checkOnlyOne(this)'> 판매회원 </td>
				<td>
			</tr>
		</table>
			<input type="button" name="Idcheck" value="비밀번호찾기" onclick=" return findPw(this.form);">
			<input type="button" name="Idcheck" value="로그인하기" onclick='return backLogin(this.form);'>
		
	</form>

</body>
</html>