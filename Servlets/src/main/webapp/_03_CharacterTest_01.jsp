<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	</head>
		<body>
			<h1>성격 테스트</h1>
			
			
			당신의 성격을 테스트 합니다. 데이터를 입력한 후 확인 버튼을 눌러주세요.
			
			<br>
		<form action="_03_CharacterTest_01S" method="get">
			이름은 ? <input type="text" name="name" size="10">
			<br><br>
			좋아하는 색은 ? 
			<input type="radio"  name= "color" value="yellow"> 노랑
			<input type="radio"  name= "color" value="red"> 빨강
			<input type="radio"  name= "color" value="blue"> 파랑
			<br>
			<br>
			좋아하는 동물은?
			<select	name ="animal">
				<option value="animal" selected="selected">거북이</option>
				<option value="animal">호랑이</option>
				<option value="animal">강아지</option>
			</select>
			<br>
			<br>
			좋아하는 음식은?(모두 고르세요)
				<input type="checkbox" name ="food" value="짜장면">짜장면
				<input type="checkbox" name ="food" value="짬뽕">짬뽕
				<input type="checkbox" name ="food" value="탕수육">탕수육
			<br>	
			<br>	
			<input type="submit" value="확인">





		</form>
			
			
			
		</body>
	</html>