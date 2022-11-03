package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class JdbcMain {

	//불러온 DB를 객체로 생성하여 클라이언트로 보내줘야함. 
	private static List<BoardDTO> getData(ResultSet rs) throws SQLException {
		List<BoardDTO> list = new ArrayList<>();
		
		//Collection 읽어오기
		while(rs.next()) {
			list.add(new BoardDTO(rs.getInt("num"),
					rs.getString("title"),
					rs.getString("content")));
		}
		return list;
	}
	
	//print
	private static void printData(List<BoardDTO> list) {
		for (BoardDTO b : list) {
			System.out.println(b.toString());
		}
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		
		//JVM이 driver가 있는지 Library를 뒤진다. 
		String driver = "com.mysql.cj.jdbc.Driver"; //mysql에서 만든 driver아이디
		
		
		//어디에 있는 				  //localhost를 IP로 변경하면 해당IP의 sql DB가 넘어온다.
		String url = "jdbc:mysql://localhost:3306/musthave"; //mysql 디폴트 포트번호: 3306. 반드시 한번에 한 DB에만 연결 
		
		//어떤 데이터베이스를 연결할까?
		String sql = "select * from board"; 
		
		Class.forName(driver); // 오라클or mysql과 연결 (driver load)
		Connection con = DriverManager.getConnection(url, "musthave", "tiger"); //접속하고자 하는 DB와 연결하는 객체 인터페이스 (DBurl, userId, pw)
		Statement st = con.createStatement(); // connection으로 연결한 객체에 쿼리작업을 실행하기 위한 객체
		ResultSet rs = st.executeQuery(sql); // 쿼리문 처리. 결과값 저장, 저장된 값을 한행단위로 불러오기.
		
//		// yyyy/MM/dd hh:mm:ss = 년 월 일 시간 분 초
//		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd"); //날짜 데이터 포맷 정의
//		
//		//숫자출력 포멧 정의
//		DecimalFormat df = new DecimalFormat("##,###"); //세자리씩 끊어서 콤마
//		
//		//다음 데이터가있는지 찾는 루프. while문으로 전체 데이터에 루프건다.
//		while(rs.next()) { //mysql에서 제일 처음 커서가 자동으로 대기하고 있다가 rs.next(); 명령문으로 첫번째 데이터에 접근. 더이상 읽을 데이터가 없으면 "false" 리턴
//			System.out.println(String.format("%d|%s|%s|%s|%s|%s|", 
//				rs.getInt("num"),
//				rs.getString("title"),
//				rs.getString("content"),
//				rs.getString("id"),
//				sf.format(rs.getDate("postdate")),
//				df.format(rs.getInt("visitcount"))));
//		}
		
		List<BoardDTO> list = null;
		try {
			list = getData(rs); //예외가 발생할 가능성이 있음(sql에서 데이터를받아 리스트라는 참조변수에 저장)
		} catch(SQLException e) { //예외가 발생하는경우를 e 로 두고
			e.printStackTrace(); // 현재 코드 위치까지 어떤 함수들을 거쳐왔나
		}
		
		//연결 역순으로 클로즈
		rs.close();
		st.close();
		con.close();
		//처리 전에 데이터베이스 접속이 끊어 서버오류를 방지한다. 
		
		printData(list);
	}

}



