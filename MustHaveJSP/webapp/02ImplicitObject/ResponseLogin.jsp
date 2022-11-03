<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - Response </title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
if(id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
	response.sendRedirect("ResponseWelcome.jsp");  // 로그인 성공시 서버가 클라이언트에게 새로운 페이지를 띄우라고 명령 > 클라이언트가 다시 값을 입력 받아서 서버로 보냄. 직전에 보낸 response랑 다름 (request 객체 공유x)
} else {
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1") //로그인 실패시 ?loginErr=1 을 붙여서 서버 내부에서 다른 페이지로 토스해서 처리하다가 클라이언트에게 그대로 결과를 보여줌(request 객체 공유)
		.forward(request, response);
}
%>
</body>
</html>