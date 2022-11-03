<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
public void gugudan(int a, int b) {
	
	int dan=1;
	
	for(int i = 2; i <=9; i+=dan) {
		for(int j = 1; j<=9; j++) {
			for(int k = 0; k < dan; k++) {
				System.out.print(String.format("%d * %d = %d", i+k, j, i*j));
				
				if(k < dan-1)
					System.out.print("&nbsp;&nbsp;&nbsp;");
				else
					System.out.print("<br/>");
			}
		}
	}
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
	<% int a;
	   int b;

	String dan_ = request.getParameter("dan"); //선언문에서 사용하는 이름과 다르게.
	int dan = Integer.parseInt(dan_);
	
	for(int i = 2; i <=9; i+=dan) {
		for(int j = 1; j<=9; j++) {
			for(int k = 0; k < dan; k++) {
				out.print(String.format("%d * %d = %d", i+k, j, i*j));
	
				if(k < dan-1)
					out.print("&nbsp;&nbsp;&nbsp;");
				else
					out.print("<br/>");
			}
		}
	}
	%> 
	</h2>
</body>
</html>