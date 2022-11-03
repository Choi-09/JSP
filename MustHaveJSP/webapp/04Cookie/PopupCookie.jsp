<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
String chkVal = request.getParameter("inactiveToday"); // 클라이언트 요청시 파라미터 get. 파라미터값: "inactiveToday"

if (chkVal != null && chkVal.equals("1")) { //chkVal가 null이 아니고 1이면
    Cookie cookie = new Cookie("PopupClose", "off");  // 쿠키 생성 
    cookie.setPath(request.getContextPath());  // 경로 설정
    cookie.setMaxAge(60*60*24);  // 유지 기간 설정
    response.addCookie(cookie);  // 응답 객체에 추가 
    out.println("쿠키 : 하루 동안 열지 않음");  
}
%>