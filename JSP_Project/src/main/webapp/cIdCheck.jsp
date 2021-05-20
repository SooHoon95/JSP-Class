<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
		function cIdChk() {
				var frm = document.cIdchkForm;
				frm.action='signupcIdCheck.do';
				frm.submit();
				return true;
			}
</script>
<script type="text/javascript">
<!--결과불러오고 버튼숨기는 창--> 
	function ccallBack(){
	          
			if(${cIdchk} == "1"){
				 document.getElementById("cancelBtn").style.visibility='visible';
	             document.getElementById("useBtn").style.visibility='hidden';
			} else {
				 document.getElementById("cancelBtn").style.visibility='hidden';
	             document.getElementById("useBtn").style.visibility='visible';
			}
	}
    function sendCheckValue(){
        opener.document.signupCustomerForm.idDuplication.value ="idCheck";
        opener.document.signupCustomerForm.cId.value = document.getElementById("cId").value;
        
        if (opener != null) {
            opener.chkForm = null;
            self.close();
        }    
    }    
</script>
<%
	request.setCharacterEncoding("utf-8");
	String cId = request.getParameter("cId");
%>
<body onload="ccallBack()">
	${cIdchk }
	${cIdchkMessage }
<div>
<center>
	<h3 align = "center">회원가입</h3>
	<hr style = "width: 80%" >
</center>
</div>

<form name="cIdchkForm"  method="post">
<div>
<center>
	
	<div><input type="text" name="cId" style="width: 20; text-align: left;" value="<%=cId%>" id="cId">
	<input type="button" value="중복체크" onclick="cIdChk()"></div>

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