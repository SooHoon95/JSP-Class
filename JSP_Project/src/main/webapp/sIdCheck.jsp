<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
<title>Insert title here</title>
</head>

<script type="text/javascript">
		function sIdChk() {
				var frm = document.sIdchkForm;
				frm.action='signupsIdCheck.do';
				frm.submit();
				return true;
			}
</script>
<script type="text/javascript">
<!--결과불러오고 버튼숨기는 창--> 
	function scallBack(){
	          
			if(${sIdchk} == "1"){
				 document.getElementById("cancelBtn").style.visibility='visible';
	             document.getElementById("useBtn").style.visibility='hidden';
			} else {
				 document.getElementById("cancelBtn").style.visibility='hidden';
	             document.getElementById("useBtn").style.visibility='visible';
			}
	}
    function sendCheckValue(){
        opener.document.signupSellerForm.idDuplication.value ="idCheck";
        opener.document.signupSellerForm.sId.value = document.getElementById("sId").value;
        
        if (opener != null) {
            opener.chkForm = null;
            self.close();
        }    
    }    
</script>
<script>
$(function(){
  $.validator.addMethod("regx",function(value,elemqnt,regexpr){
      return regexpr.test(value);
  });  
  $("form").validate({
      //규칙
      rules: {
    	  sId: {
              required : true,
              regx : /^[a-z0-9]{4,20}$/
          },
      },
      
      //규칙체크 실패시 출력될 메시지
      messages : {
          sId: {
                required : "필수입력사항입니다.",
                regx : "아이디는 문자 6~20자입니다"
            }
        }
  });
})
</script>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String sId = request.getParameter("sId");
	
%>
<body onload="scallBack()">
<div>
<center>
	<h3 align = "center">회원가입</h3>
	<hr style = "width: 80%" >
</center>
</div>

<form name="sIdchkForm"  method="post">
<div>
<center>
	
	<div><input type="text" name="sId" id="sId" style="width: 20; text-align: left;" value="<%=sId%>" id="sId">
	<input type="button" value="중복체크" onclick="sIdChk()"></div>

</center>
</div>
</form>
<div id="msg"></div>
        <br>
<div>
		<center>  
			<input id="cancelBtn" type="button" value="취소" onclick="window.close()" style="visibility: hidden;">
	        <input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()" style="visibility: hidden;">
		</center>
</div>
</body>
</html>