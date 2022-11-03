<!-- import 복사해오기 -->

<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.domain.MemberDTO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

   <%!
	// List<MemberDTO> list = new ArrayList<>();  //입력 후 MemberDTO 자바클래스 생성, import 잊지말기(경로적어준다)
   %>
   
   <%
   //↓ <%! 안에 넣으면 아웃풋 새로고침 시 
   List<MemberDTO> list = new ArrayList<>();  //입력 후 MemberDTO 자바클래스 생성, import 잊지말기(경로적어준다)
   
   Class.forName("com.mysql.cj.jdbc.Driver");
   
   String dburl = "jdbc:mysql://localhost:3306/musthave";
   String dbid = "musthave";
   String dbpw = "tiger";
   Connection con = DriverManager.getConnection(dburl, dbid, dbpw);
   
   Statement st = con.createStatement();
   
   ResultSet rs = st.executeQuery("select * from member");
   
   while(rs.next()) {  
	   list.add(new MemberDTO(  
			   rs.getString("id"),
			   rs.getString("pass"),
			   rs.getString("name"),
			   rs.getString("Regidate")
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
		for(MemberDTO m : list) {
	%>	
	
		<tr>
			<td><%=m.getId() %></td>
			<td><%=m.getPass() %></td>
			<td><%=m.getName() %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>