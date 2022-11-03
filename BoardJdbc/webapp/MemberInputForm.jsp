<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 입력폼</title>
</head>
<body>
	<h2>멤버 입력폼</h2>
	
	<form action  = "inputMemberProcess.jsp" method = "post">  <!-- action을 줘야 mysql에 데이터 input 가능!! -->
		<table>
			<tr>
			<td>id</td> <td><input type = "text" name = "id"></td>
			</tr>
			
			<tr>
			<td>pass</td> <td> <input type = "text" name = "pass"></td>
			</tr>
		
			<tr>
			<td>name</td> <td><input type = "text" name = "name"></td>
			</tr>
			
			<!-- 
			<tr>
			<td>regidate</td> <td><input type = "text" name = "regidate"></td>
			</tr>
			 -->
			
			<tr>
			<td colspan = "2"><input type = "submit" name = "저장" style = "width:100%"></td>
			</tr>
		</table>
	</form>
</body>
</html>