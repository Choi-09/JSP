<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- url에서 parameter 입력 후 화면에서 값 호출하기-->

<%!
public static int factorial (int num) {
	int fact = 1;
	for (int i = num; i >=1; i--) {
		fact = fact*i; 
		} 
	return fact;
}
%>

<%
int num = 0;
/* int fact = 1; */

String snum = request.getParameter("num");
if(snum != null && snum.equals("") == false) {
	num = Integer.parseInt(snum);
	}
/* for (int i = num; i >=1; i--) {
fact = fact*i; 
} */
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	out.println (num + "의 팩토리얼은" + factorial(num) + "입니다.");
	%>
</body>
</html>