package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dtos.UserDto;



public class DbUtils {
	//속성(DB 연결관련된 멤버)
		//DB CONN DATA
		private static String id = "root";
		private static String pw = "1234";
		private static String url = "jdbc:mysql://localhost:3306/opendatadb";

		//JDBC참조변수
		private static Connection conn = null; // DBMS 의 특정 DB와 연결되는 객체
		private static PreparedStatement pstmt = null; // SQL Query 전송용 객체
		private static ResultSet rs = null; // Select 결과물 담을 객체
		
		public static void conn() throws Exception
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Loading Success...");
			conn = DriverManager.getConnection(url,id,pw);
			System.out.println("DB CONNECTED...");
		}
	
		public static void disConn() throws Exception {
			if(rs!= null)
			rs.close();
			if(pstmt!= null)
			pstmt.close();
			if(conn!= null)
			conn.close();
		}
		
		public static int insertUser(UserDto userDto) throws Exception 
		{
			pstmt = conn.prepareStatement("insert into tbl_user values(?,?,?,?,?,?)");
			pstmt.setString(1,userDto.getUserid());
			pstmt.setString(2,userDto.getPassword());
			pstmt.setString(3,userDto.getUsername());
			pstmt.setString(4,userDto.getZipcode());
			pstmt.setString(5,userDto.getAddr1());
			pstmt.setString(6,userDto.getAddr2());
			
			int result = pstmt.executeUpdate();
			
			return result;
		}

		public static UserDto selectUser(String userid) throws Exception{
			
			pstmt = conn.prepareStatement("select * from tbl_user where userid=?");
			pstmt.setString(1,userid);
			rs = pstmt.executeQuery();
			UserDto  dto = null;
			if(rs != null) {
				if(rs.next()) {
					dto = new UserDto();
					dto.setUserid(rs.getString("userid"));
					dto.setPassword(rs.getString("password"));
					dto.setUsername(rs.getString("username"));
					dto.setUsername(rs.getString("zipcode"));
					dto.setAddr1(rs.getString("addr1"));
					dto.setAddr2(rs.getString("addr2"));
				}
			}
			
			//tbl_member 에 userid 와 일치하는 데이터 받아와 MemberDto로 반환  
			return dto;
		}
		
		public static void TxStart() throws Exception{
			if(conn!=null)
				conn.setAutoCommit(false);
		}
		public static void TxEnd() throws Exception {
			if(conn!=null)
				conn.commit();
		}
		public static void RollBack() throws Exception {
			if(conn!=null)
				conn.rollback();	
		}
		
		
		

}
