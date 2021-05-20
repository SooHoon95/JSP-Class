<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
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

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sPostalCode').value = data.zonecode;
                document.getElementById("sAddress1").value = roadAddr;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.

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
<!-- 정규식체크 -->
<script type="text/javascript">
	function checkValue() {
		if (form.idDuplication.value != "idcheck"){
			alert('아이디 중복체크를 해주세요.');
			return false;
		}
	}

</script>
<script type="text/javascript">
	function inputsIdChk() {
		doucument.signupSellerForm.idDuplication.value ="idUncheck";
	}
	function opensIdChk(sId) {
		var url = 'sIdCheck.jsp?sId='+ sId
		window.open(url, 'chkFrom', 'width=500, height=300, resizable=no, scrollbars=no');
	}

</script>
<!-- Jquery의 Validate를 이용한 정규식 및 로그인 확인 -->
<script>
$(function(){
  $.validator.addMethod("regx",function(value,elemqnt,regexpr){
      return regexpr.test(value);
  });  
  $("form").validate({
      //validation이 끝난 이후의 submit 직전 추가 작업할 부분
      submitHandler: function() {
          var f = confirm("회원가입을 완료하겠습니까?");
          var form = documenmht.frm;
          if(f){
             alert(form.name.value + "회원가입이 완료되었습니다!")
              return true;
             
          } else {
              return false;
          }
      },
      //규칙
      rules: {
    	  sEmail: {
              required : true,
              regx : /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i,
          	  remote: 
          },
          sPassword: {
              required : true,
              regx : /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{6,20}$/
          },
          sPwcheck: {
              required : true,
              equalTo : pw
          },
          sName: {
              required : true,
              regx : /^[가-힣a-zA-z]{1,30}$/
          },
          sTel: {
        	  required : true,
            regx : /^[0-9]{11,12}$/
          },
          sPostalCode: {
        	  required : true
          },
          sAddress1: {
        	  required : true
          },
          sAddress2: {
        	  required : true
          },
          github: {
        	  maxlength : 20
          },
          agreechk: {
        	  required : true
          },
      },
      
      //규칙체크 실패시 출력될 메시지
      messages : {
          email: {
                required : "필수입력사항입니다.",
                regx : "이메일형식을 맞춰주세요",
                remote : "존재하는 아이디입니다"
            },
            pw: {
                required : "필수입력사항입니다.",
                regx : "비밀번호는 문자,숫자,특수문자 포함 6~20자입니다"
            },
            pw2: {
                required : "필수입력사항입니다.",
                equalTo : "비밀번호가 맞지 않습니다."
            },
            name: {
                required : "필수입력사항입니다.",
                regx : "이름은 한글,영어 1~30자입니다"
            },
            tel: {
              required : "필수입력사항입니다.",
                regx : "-없이 숫자11~12자리입니다"
            },
            address: {
              required : "필수입력사항입니다.",
            },
            github: {
              maxlength : "최대 {0}글자 이하입니다."
            },
            agreechk: {
              required : "개인정보처리방침에 동의해야합니다"
            },
        }
  });
})
</script>
<body>
<form name ="signupSellerForm" action="signupSeller.do">
	<h3>회원가입</h3>
	<hr>
		<table>
			<tr>
				<td> <h4>판매 회원 기본정보</h4> </td>
			</tr>
			<tr>
				<td> <input type="text" name="textid" value="아이디*" readonly="readonly" style="text-align: center" onkeydown="inputIdChk()"></td>
				<td> <input type="text" name="sId" id="sId">
				<input type="button" name="Idcheck" value="중복체크" onclick="opensIdChk(this.form.sId.value)">
				<input type="hidden" name ="idDuplication" value="idUncheck">
				</td>
				
			</tr>		
			<tr>
				<td> <input type="text" name="textpw" value="비밀번호*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="password" name="sPassword" id="sPassword"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textpwc" value="비밀번호 확인*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="password" name="sPWcheck" id="sPWcheck"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textname" value="이름*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="sName" id="sName"> </td>
				
			</tr>		
			<tr>
				<td> <input type="text" name="texttel" value="전화번호*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="sTel" id="sTel"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textbirth" value="생년월일*" readonly="readonly" style="text-align: center"></td>
				<td> <select name="sBirthY">
					<%for(int i=2021; i>1900; i--){ %>
					<option value="<%=i%>" selected="selected"><%=i%></option>
					<%} %>
					</select>
					년
					<select name="sBirthM">
					<%for(int i=1; i<13; i++){ %>
					<option value="<%=i%>" selected="selected"><%=i%></option>
					<%} %>
					</select>
					월
					<select name="sBirthD">
					<%for(int i=1; i<32; i++){ %>
					<option value="<%=i%>" selected="selected"><%=i%></option>
					<%} %>
					</select>
					일
					</td>
			<tr>
				<td> <input type="text" name="textemail" value="이메일*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="sEmail" id="sEmail">
				<select>
					 	<option value="@naver.com">@naver.com</option>
					 	<option value="@gmail.com">@gmail.com</option>
					 	<option value="@daum.net">@daum.net</option>
					 </select>
				</td>
			</tr>		
			<tr>
				<td> <input type="text" name="textnickname" value="주소*" readonly="readonly" style="text-align: center"></td>
				
				<td><input type="text" name = "sPostalCode" id="sPostalCode" placeholder="우편번호">
					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name = "sAddress1" id="sAddress1" placeholder="도로명주소">
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" name = "sAddress2" id="sAddress2" placeholder="상세주소">
				</td>
			</tr>
			<tr>
				<td> <input type="text" name="textShopname" value="상점이름*" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="sShopName" id="sShopName"> </td>
			</tr>		
			<tr>
				<td> <input type="text" name="textRegistNum" value="사업자 등록 번호 *" readonly="readonly" style="text-align: center"></td>
				<td> <input type="text" name="sNumber" id="sNumber" > </td>
			</tr>		
			
		</table>
		<input type="submit" value="회원가입">
	</form>

</body>
</html>