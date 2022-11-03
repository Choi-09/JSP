<%@ page import = "java.sql.PreparedStatement"  %>
<%@ page import = "java.sql.Connection"  %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 입력</title>
</head>
<body>
	<!-- 1. 파라미터 읽기: title, content, id -->
	<!-- 2. 데이터베이스 연결 및 기타(1. 드라이버 로드  2. 데이터베이스 연결  3.prepared스테이트먼트  4. 쿼리)-->
	<!-- 3. 데이터베이스 입력-->
	<!-- 4. 완료 메시지 출력-->
	<%
		// 1. 파라미터 읽기(title, content, id)
		String num = request.getParameter("num");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		
		System.out.println(title + "," + content + "," + id);
		
		//2. 데이터베이스 연결 및 기타
		//(2-1)드라이버 로드
//		Class.forName("com.mysql.cj.jdbc.Driver");
		Class.forName("org.h2.Driver"); //h2데이터 연결
		
		//(2-2) 데이터베이스 연결 (mysql)
//		String dburl = "jdbc:mysql://localhost:3306/musthave";
//		String dbid = "musthave";
//		String dbpw = "tiger";

		// 데이터베이스 연결(h2)
		String dburl = "jdbc:h2:tcp://localhost/~/test";
		String dbid = "sa";
		String dbpw = "";
		Connection con = DriverManager.getConnection(dburl, dbid, dbpw); 
		// import 시킬때 java Resources 폴더에 java클래스 만들어서 패키지 쉽게 만들수있다!! ctrl + shift + o
			
		//(2-3) prepared스테이트먼트
		String sql = "insert into board (num, title, content, id) values(?,?,?,?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		psmt.setInt(1,Integer.parseInt(num));
		psmt.setString(2,title);
		psmt.setString(3,content);
		psmt.setString(4,id);
		
		//(2-4) query 실행
		// 3. 데이터베이스 입력
		int result = psmt.executeUpdate();
		
		psmt.close();
		con.close();
		
		// 4. 완료메세지 출력
		if (result ==1 ) {
			out.println("입력에 성공하였습니다.");
		} else 
			out.println("입력에 실패하였습니다.");
	%>
	<br>
	<br>
	<a href = "BoardInputForm.jsp">입력창으로 돌아가기</a>
</body>
</html>