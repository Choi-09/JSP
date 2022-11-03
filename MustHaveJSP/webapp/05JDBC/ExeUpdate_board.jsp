<%@ page import="common2.JDBConnectMySQL"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board 테이블 업데이트</title>
<script type = "text/javascript" src ="./sql_form.js"> </script>

</head>
<body>
	
	<%
	JDBConnectMySQL jdbc = new JDBConnectMySQL();

//	String id = null; // num에 따라 id 값이 달라져야하므로 조건문 전에 null값 초기화
	
	// MySQL에 전송해야하므로 초기화 데이터를 넣고 조건식 적는다. 
	String sql = "INSERT INTO board(name, title, content, id) VALUES (?, ?, ?, ?)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	
//	for(int i = 1; i <=10 ; i++) {	
//		String title = "제목" + i;
//		String content = "내용" + i;		
//		if( i % 2 == 0) {
//			id = "musthave" + "2";
//		} else {id = "musthave" + "1";}

//	psmt.setString(1, name);
//	psmt.setString(2, title);
//	psmt.setString(3, content);
//	psmt.setString(4, id);
//	} 
//	int result = psmt.executeUpdate();
//	out.print("완료");

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = request.getParameter("id");
	
	psmt.setString(1, name);
	psmt.setString(2, title);
	psmt.setString(3, content);
	psmt.setString(4, id);
	

	jdbc.close();
	%>

	
</body>
</html>