<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 정보 게시판 입력</title>
</head>
<!-- id, pass, name, regidate -->
<body> 
	<%
	// 한글 깨지는 문제 인코딩해주기
	request.setCharacterEncoding("utf-8");
	// 파라미터 읽기
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	// String regidate = request.getParameter("regidate");  
	// 오류: DB는 DB형식대로 인풋해야하는데 날짜같은 경우 입력이 번거롭기 때문에 mysql에서 default 값으로 자동 넣어주기 때문에 따로 입력할 필요 없다.
	// 디폴트 값 확인 경로: mysql 해당 테이블 우클릭 > table inspector > DDL
	
	//데이터베이스 연결
	// 1.드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	// 2.데이터베이스 연결
	String dburl = "jdbc:mysql://localhost:3306/musthave";
	String dbid = "musthave";
	String dbpw = "tiger";
	Connection con = DriverManager.getConnection(dburl, dbid, dbpw);
	
	// 3.preparedStatement
	String sql = "insert into member (id, pass, name) values(?,?,?)";
	PreparedStatement psmt = con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pass);
	psmt.setString(3, name);
	// smt.setString(4, regidate);
	
	// 4. 쿼리 실행
	int result = psmt.executeUpdate(); 
	
	psmt.close();
	con.close();
	
	if(result == 1) {
		out.println("입력 성공");
	} else
		out.println("입력 실패");
	%>
	<br>
	<br>
	<a href = "MemberInputForm.jsp"> 입력창으로 돌아가기</a>	
</body>
</html>