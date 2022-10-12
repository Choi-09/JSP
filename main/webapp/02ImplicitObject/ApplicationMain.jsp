<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - application</title>
</head>
<body>
	<h2> web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수: <%= application.getInitParameter("INIT_PARAM") %> 		 <!--  (1)web.xml에 설정한 초기화 매개변수 읽어오기 -->	
	
	<h2> 서버의 물리적 경로 얻어오기</h2>
	application 내장 객체: <%= application.getRealPath("/02ImplicitObjecy") %>		<!--  (2)현재 작성중인 폴더의 물리적 경로를 얻어와서 출력, 인수로는 '컨텍스트 루트를 제외한' 경로 입력 -->	
	
	<h2> 선언부에서 application 내장 객체 사용하기</h2>
	<%! 
	public String useImplicitObject() {			// (3)선언부에 정의한 메서드. 02ImplicitObjecy의 경로를 얻어와 출력하지만 필요한 서블릿 컨텍스트를 this로 부터 얻음
		return this.getServletContext().getRealPath("/02ImplicitObjecy") ; 
	}
	public String useImplicitObject(ServletContext app) { 	// (4)선언부에 정의한 메서드. 02ImplicitObjecy의 경로를 얻어와 출력하지만 필요한 서블릿 컨텍스트를 매개변수로 부터 얻음
		return app.getRealPath("/02ImplicitObjecy"); //getRealPath : 현재 작성중인 폴더의 물리적 경로를 얻어와서 출력
	}
	%>
	<ul>
		<li>this 사용 : <%= useImplicitObject() %></li>	<!-- (5)this를 이용하는 (3)을 호출 -->
		<li>내장 객체를 인수로 전달 : <%= useImplicitObject(application) %></li>	<!-- (6) application내장객체를 인수로 하여 (4) 호출 -->
	</ul>
</body>
</html>