<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
public static String gcm(int num1, int num2){
	int max;
	int min;
	
	max = (num1<num2)?num2:num1;
	min = (num1<num2)?num1:num2;
	
	int rem = max%min;
	while(rem != 0) {
		max = min;
		min = rem;
		rem = max%min;
	}
	
	return num1 + "과" + num2 + "의 최대공약수는" + min + "최소공배수는" +  ((num1*num2)/min);
}

%>    
<%

int num1=1;
int num2=2;

String snum1 = request.getParameter("num1");
if(snum1 != null && snum1.equals("") == false) {
	num1 = Integer.parseInt(snum1);
	}
String snum2 = request.getParameter("num2");
if(snum2 != null && snum2.equals("") == false) {
	num1 = Integer.parseInt(snum2);
	}


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>
	<%= gcm(num1,num2) %> 
<%-- 	"<%="는 값을 입력받는다 --%>
	</h2>
</body>
</html>