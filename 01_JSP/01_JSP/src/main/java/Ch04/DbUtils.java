package Ch04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Ch02.UserDto;



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
			System.out.println("...");
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
			pstmt = conn.prepareStatement("insert into tbl_user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,userDto.getUserid());
			pstmt.setString(2,userDto.getPassword());
			pstmt.setString(3,userDto.getUsername());
			pstmt.setString(4,userDto.getZipcode());
			pstmt.setString(5,userDto.getAddr1());
			pstmt.setString(6,userDto.getAddr2());
			pstmt.setString(7,userDto.getPhone1());
			pstmt.setString(8,userDto.getPhone2());
			pstmt.setString(9,userDto.getPhone3());
			pstmt.setString(10,userDto.getTel1());
			pstmt.setString(11,userDto.getTel2());
			pstmt.setString(12,userDto.getTel3());
			pstmt.setString(13,userDto.getEmail());
			pstmt.setString(14,userDto.getYear());
			pstmt.setString(15,userDto.getMonth());
			pstmt.setString(16,userDto.getDay());
			
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
					dto.setPhone1(rs.getString("phone1"));
					dto.setPhone2(rs.getString("phone2"));
					dto.setPhone3(rs.getString("phone3"));
					dto.setTel1(rs.getString("tel1"));
					dto.setTel2(rs.getString("tel2"));
					dto.setTel3(rs.getString("tel3"));
					dto.setEmail(rs.getString("email"));
					dto.setYear(rs.getString("year"));
					dto.setMonth(rs.getString("month"));
					dto.setDay(rs.getString("day"));
				
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
