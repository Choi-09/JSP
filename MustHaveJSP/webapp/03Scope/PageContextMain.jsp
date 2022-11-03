
<!-- 1) common.Peron 임포트 %@:지시어 -->
<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 2) pageContext 객체를 통해 page영역에 속성값 저장 -->    
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));  //cannot be resolved 오류: 임포트시켜야한다.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
	<h2>page 영역의 속성값 읽기</h2>
<!-- 3) 속성값 읽기: object타입 > 원래의 타입으로 형변환-->
	<%
	int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
// 4) String타입은 toString으로 문자열로 변환하여 출력
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li> Integer 객체: <%= pInteger %></li>
		<li> String 객체: <%= pString %></li>
<!-- Person객체에서 멤버 변수값 읽어오기. Person은 DTO라서 멤버 변수가 private으로 선언되었으므로 게터메서드 이용-->
		<li> Person 객체: <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
	</ul>
   	
	<h2> include된 파일에서 page 영역 읽어오기</h2>
<!-- include 지시어로 다른 JSP파일 포함 -->
	<%@ include file = "PageInclude.jsp" %>
	

	<h2> 페이지 이동 후 page 영역 읽어오기</h2>
<!-- 하이퍼링크 연결로 '다른페이지'로 '이동' 다른페이지이기 때문에 PageLocation에서 Main의 pageContext를 읽을수 없다. 서로 다른 pageContext-->
	<a href = "PageLocation.jsp">PageLocation.jsp 바로가기 </a>
</body>
</html>