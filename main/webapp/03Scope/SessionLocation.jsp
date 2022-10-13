<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>session 영역</title></head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <%
    @SuppressWarnings("unchecked") // 어노테이션(@)으로 경고메세지 삭제.
    ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists"); //session영역에서 속성을 읽어온 후 형변환. <String> 이라는 제네릭스 표현식은 "ArrayList 안에 담을 수 있는 자료형은 String 타입 뿐이다"는 의미
    for (String str : lists)
        out.print(str + "<br/>");
    %>    
</body>
</html>
