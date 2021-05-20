<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 주소 API 다음API에서 가져옴  -->
<!-- 20021.05.14 최수훈 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
				
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('cPostalCode').value = data.zonecode;
                document.getElementById("cAddress1").value = roadAddr;
                

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<script type="text/javascript">
	function inputcIdChk() {
		doucument.signupSellerForm.idDuplication.value ="idUncheck";
	}
	function opencIdChk(cId) {
		var url = 'cIdCheck.jsp?cId='+ cId
		window.open(url, 'chkFrom', 'width=500, height=300, resizable=no, scrollbars=no');
	}

</script>

<body>
	<form name="signupCustomerForm" action="signupCustomer.do">
	<h3>회원가입</h3>
	<hr>
		<table>
			<tr>
				<td> <h4>구매 회원 기본정보</h4> </td>
			</tr>
			<tr>
			
				<td> <input type="text" name="textid" value="아이디*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="cId"	>
				<input type="button" name="Idcheck" value="중복체크" onclick=" opencIdChk(this.form.cId.value);">
				<input type="hidden" name ="idDuplication" value="idUncheck">
				</td>
			</tr>		
			<tr>
				<td> <input type="text" name="textpw" value="비밀번호*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="password" name="cPassword"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textpwc" value="비밀번호 확인*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="password" name="cPWcheck"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textname" value="이름*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="cName"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="texttel" value="전화번호*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="cTel"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textbirth" value="생년월일*" readonly="readonly" style="text-align: center"></td>
				<td> <select name="cBirthY">
					<%for(int i=2021; i>1900; i--){ %>
					<option value="<%=i%>" selected="selected"><%=i%></option>
					<%} %>
					</select>
					년
					<select name="cBirthM">
					<%for(int i=1; i<13; i++){ %>
					<option value="<%=i%>" selected="selected"><%=i%></option>
					<%} %>
					</select>
					월
					<select name="cBirthD">
					<%for(int i=1; i<32; i++){ %>
					<option value="<%=i%>" selected="selected"><%=i%></option>
					<%} %>
					</select>
					일
					</td>
			</tr>		
			<tr>
				<td> <input type="text" name="textemail" value="이메일*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="cEmail">
				<select name = "cmailAddress">
					 	<option value="@naver.com">@naver.com</option>
					 	<option value="@gmail.com">@gmail.com</option>
					 	<option value="@daum.net">@daum.net</option>
					 </select>
				</td>
			</tr>		
			<tr>
				<td> <input type="text" name="textnickname" value="닉네임" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="cNickname"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textnickname" value="주소*" readonly="readonly" style="text-align: center"></td>
				
				<td><input type="text" name ="cPostalCode" id="cPostalCode" placeholder="우편번호" >
					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="cAddress1" id="cAddress1" placeholder="도로명주소">
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" name="cAddress2" id="cAddress2" placeholder="상세주소">
				</td>
			</tr>		
			
		</table>
			<input type="submit" value="회원가입">
			
			</form>


</body>
</html>