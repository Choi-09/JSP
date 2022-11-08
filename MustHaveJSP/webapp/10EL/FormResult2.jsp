<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String grade = request.getParameter("grade");
String[] inter = request.getParameterValues("inter");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormResult2</title>
</head>

<body>
	<h2>FormResult2</h2>
	<ul>
		<li>이름 :<%= name %></li>
        <li>성별 : <%= gender %></li>
        <li>학력 : <%= grade %></li>
        <li>관심사항: <%= inter[0] %>
			        <%= inter[1] %>
			        <%= inter[2] %>
			        <%= inter[3] %></li>
	</ul>
</body>