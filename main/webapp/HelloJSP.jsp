 <!-- 지시어 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
 
<!-- 선언문(변수, 함수) %! -->  
<%!
String str1 = "JSP";
String str2 = "안녕하세요.";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloJSP</title>
</head>
<body>
				<!-- 리턴해주는 메소드 (표현식) -->
	<h2> 처음 만들어보는 <%= str1 %></h2>
	<p> 
	<!-- 실제 코드를 진행하는 부분 -->
		<%
		out.println(str2 + str1 + "입니다. 열공합시다.ヾ(•ω•`)o");
		%>
	</p>
</body>
</html>