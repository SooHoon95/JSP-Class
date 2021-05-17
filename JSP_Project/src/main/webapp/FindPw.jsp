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
<script type="text/javascript">
	function findId(frm) {
		frm.action='FindId.jsp'
		frm.submit();
		return true;
	}
</script>

<body>
<h4>비밀번호 찾기</h4>
<hr>
	<form action="findId.do">
		<table>
			<tr>
			<td> <h5> 비밀번호 찾기 </h5></td>
			</tr>
			<tr>
				<td> <input type="text" name="findingName" value="아이디를 입력하세요" style="text-align: left"></td>
				<td colspan="2"  rowspan="2">
				<input type="submit" value="login" style="width: 70pt; height: 45pt;"></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="userType" value="구매회원" checked="checked" onclick='checkOnlyOne(this)'> 구매회원 
					 <input type="checkbox" name="userType" value="판매회원" onclick='checkOnlyOne(this)'> 판매회원 </td>
			</tr>
		</table>
			아이디가 기억나지 않으세요?
			<input type="button" name="Idcheck" value="아이디 찾기" onclick='return findId(this.form);'>
		
	</form>

</body>
</html>