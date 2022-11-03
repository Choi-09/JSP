<%@ page import = "java.sql.ResultSet"  %>
<%@ page import = "java.sql.Statement"  %>
<%@ page import = "java.sql.Connection"  %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page import = "com.domain.BoardDTO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- java가 jsp로 들어갈때 속성으로 들어감 -->    
<%!
	List<BoardDTO> list = new ArrayList<>();
%>
    
   <%
//(2-1)드라이버 로드
//Class.forName("com.mysql.cj.jdbc.Driver");
   Class.forName("org.h2.Driver");

//(2-2) 데이터베이스 연결
//String dburl = "jdbc:mysql://localhost:3306/musthave";
//String dbid = "musthave";
//String dbpw = "tiger";
String dburl = "jdbc:h2:tcp://localhost/~/test";
String dbid = "sa";
String dbpw = "";
Connection con = DriverManager.getConnection(dburl, dbid, dbpw); 
// import 시킬때 java Resources 폴더에 java클래스 만들어서 패키지 쉽게 만들수있다!! ctrl + shift + o

// Statement
Statement st = con.createStatement();

//(2-4) query 실행
ResultSet rs = st.executeQuery("select * from board order by num ASC limit 10");  //오름차순으로정렬후 앞에서 10번째까지 끊어서 가져온다

//body에 넣지 않는 이유: 객체로 만들어서 객체를 화면에 출력하기 위해서. > DTO 자바클래스 생성 > 속성 추가 > 
//실행결과를 객체 리스트에 저장
while(rs.next()) {
	list.add(new BoardDTO(
			rs.getInt("num"),
			rs.getString("title"),
			rs.getString("content"),
			rs.getString("id"),
			rs.getString("postdate"),
			rs.getInt("visitcount")
			));
}

rs.close();
st.close();
con.close();

   %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1">
	<%
		for(BoardDTO b : list) {
			//out.println(b.toString() + "<br/>");
	%>
		<tr>
			<td><%=b.getNum() %></td>
			<td><%=b.getTitle() %></td>
			<td><%=b.getContent() %></td>
			<td><%=b.getId() %></td>
			<td><%=b.getPostdate() %></td>
			<td><%=b.getVisitcount() %></td>
		</tr>
	<%	//java와 html데이터나눠서 출력하기위해서.
		}
	%>
	</table>
</body>
</html>