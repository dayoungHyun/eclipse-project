package dyPro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dyPro.dymember;

public class dymemberDAO {
	public Connection getConnection() {
		//1. driver
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager
					.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic24", "1234");
	        return conn;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}

	public dymember getMember(String id) {
		Connection conn = getConnection();
		PreparedStatement pstmt=null;
		String sql = 
		"select * from dymember where id = ?";
		//4. mapping
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				dymember m = new dymember();
				m.setId(rs.getString("id"));
				m.setPassword(rs.getString("password"));
				m.setName(rs.getString("name"));
				m.setBirthyear(rs.getInt("birthyear"));
				m.setBirthmonth(rs.getInt("birthmonth"));
				m.setBirthdate(rs.getInt("birthdate"));
				m.setGender(rs.getInt("gender"));
				m.setEmail(rs.getString("email")); 
				m.setPhone(rs.getString("phone"));
				
				//id 있음
			return m;
			} else {
				return null;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
			return null;
		}
		
		
	public int insertMember(dymember dy) {
		Connection conn = getConnection();
		//3. PreparedStatement
		PreparedStatement pstmt=null;
		String sql = 
		"insert into dymember values (?,?,?,?,?,?,?,?,?)";
		//4. mapping
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dy.getId());
			pstmt.setString(2, dy.getPassword());
			pstmt.setString(3, dy.getName());
			pstmt.setInt(4, dy.getBirthyear());
			pstmt.setInt(5, dy.getBirthmonth());
			pstmt.setInt(6, dy.getBirthdate());
			pstmt.setInt(7, dy.getGender());
			pstmt.setString(8, dy.getEmail());
			pstmt.setString(9, dy.getPhone());
			//sql 실행
			int num = pstmt.executeUpdate();
			
			return num;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
	public int updateMember(dymember dy) {
		Connection conn = getConnection();
		//3. PreparedStatement
		PreparedStatement pstmt=null;
		String sql = 
		"update dymember set name=?, birthyear=?, birthmonth=?, birthdate=?, gender=?, email=?, phone=? where id = ?";
		//4. mapping
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dy.getName());
			pstmt.setInt(2, dy.getBirthyear());
			pstmt.setInt(3, dy.getBirthmonth());
			pstmt.setInt(4, dy.getBirthdate());
			pstmt.setInt(5, dy.getGender());
			pstmt.setString(6, dy.getEmail());
			pstmt.setString(7, dy.getPhone());
			pstmt.setString(8, dy.getId());
			//sql 실행
			int num = pstmt.executeUpdate();
			
			return num;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
	public int deleteMember(String id) {
	      Connection conn = getConnection();
	      //3. PreparedStatement
	      PreparedStatement pstmt=null;
	      String sql = 
	      "delete from  dymember where id = ?";
	      //4. mapping
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, id);
	         //sql 실행
	         int num = pstmt.executeUpdate();
	         return num;      
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      return 0;
	      
	   }
	public int chgPassMember(String id, String chgpass) {
	      Connection conn = getConnection();
	      //3. PreparedStatement
	      PreparedStatement pstmt=null;
	      String sql = 
	      "update dymember set password=? where id = ?";
	      //4. mapping
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, chgpass);
	         pstmt.setString(2, id);
	         //sql 실행
	         int num = pstmt.executeUpdate();
	         return num;      
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      return 0;
	      
	   }
}
