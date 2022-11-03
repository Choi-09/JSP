package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class JdbcWorld {
	
	private static List<CountryDTO> getData(ResultSet rs) throws SQLException {
		List<CountryDTO> list = new ArrayList<>();
		
		while(rs.next()) {
			list.add(new CountryDTO(rs.getString("code"),
					rs.getString("name"),
					rs.getInt("Population"),
					rs.getInt("GNP")));
		}
		return list;
	}

	private static void printData(List<CountryDTO> list) {
		for(CountryDTO c : list) {
			System.out.println(c.toString());
		}
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		
		String driver = "com.mysql.cj.jdbc.Driver"; //mysql에서 만든 driver아이디
		String url = "jdbc:mysql://10.125.121.174:3306/world"; //mysql 디폴트 포트번호: 3306. 한번에 한 DB에만 연결
		String sql = "select * from country";
		
		Class.forName(driver); // 오라클or mysql과 연결
		Connection con = DriverManager.getConnection(url, "musthave", "tiger"); //접속하고자 하는 DB와 연결. UserAccount와 DB이름 구분하기
		Statement st = con.createStatement(); // 
		ResultSet rs = st.executeQuery(sql); //
	
//		//DB title 출력하기
//		ResultSetMetaData rsm = rs.getMetaData();
//		
//		for(int i = 1; i<=rsm.getColumnCount(); i++) {
//			if(i > 1) {
//				System.out.print("|" + " ");
//			}
//			System.out.print(rsm.getColumnName(i));
//		}
//		System.out.println();
//		
//		//세자리 콤마 
//		DecimalFormat df = new DecimalFormat("##,###");
//		
//		//다음 데이터가있는지 찾는 루프. while문으로 전체 데이터에 루프건다.
//		System.out.println("code | name | Population | GNP");
//		while(rs.next()) { //mysql에서 제일 처음 커서가 자동으로 대기하고 있다가 rs.next(); 명령문으로 첫번째 데이터에 접근. 더이상 읽을 데이터가 없으면 "false" 리턴
//			System.out.println(String.format("%s | %s | %s | %.2f |",  // %.2f : 소수점 두자리까지 출력, f: float 타입 출력
//				rs.getString("code"),
//				rs.getString("name"),
//				df.format(rs.getInt("Population")), // format은 print: %s 
//				rs.getFloat("GNP")));
//		}
		
		List<CountryDTO> list = null;
		try {
			list = getData(rs);
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		//연결 역순으로 클로즈
		rs.close();
		st.close();
		con.close();
		
		printData(list);
	}
}
