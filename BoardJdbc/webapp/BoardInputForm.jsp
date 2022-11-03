<!-- 파일 생성 경로 유의 : ① webapp 안에 jsp파일 생성 ② web-inf > lib 폴더 안에 mysql jar 파일 copy	 (programgiles(x86) > mysql > connecter J)-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 입력폼</title>
</head>
<body>
	<h2>게시판 입력폼</h2>
	
	<form action = "inputBoardProcess.jsp" method ="post">
		<table border ="1">
		
			<tr>
			<td>num</td><td><input type = "text" name = "num"></td> 
			</tr>
			<!-- num이 primary key값이라서 input할때 중복으로 적으면 오류난다! -->
			<tr>
			<td>title</td><td><input type = "text" name = "title"></td> 
			</tr>
			
			<tr>
			<td>content</td><td><input type = "text" name = "content"></td>
			</tr>
			
			<tr>
			<td>id</td><td><input type = "text" name = "id"></td>
			</tr>
			
			<tr>
			<td colspan="2"><input style = "width: 100%" type = "submit" name = "저장"></td>
			</tr>

			
		</table>
	</form>
</body>
</html>