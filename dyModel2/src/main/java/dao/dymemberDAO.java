package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.dymember;


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
				dymember dy = new dymember();
				dy.setId(rs.getString("id"));
				dy.setPassword(rs.getString("password"));
				dy.setName(rs.getString("name"));
				dy.setBirthyear(rs.getInt("birthyear"));
				dy.setBirthmonth(rs.getInt("birthmonth"));
				dy.setBirthdate(rs.getInt("birthdate"));
				dy.setGender(rs.getInt("gender"));
				dy.setEmail(rs.getString("email")); 
				dy.setPhone(rs.getString("phone"));
				
				//id 있음
			return dy;
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
		System.out.println(dy);
		Connection conn = getConnection();
		//3. PreparedStatement
		PreparedStatement pstmt=null;
		String sql = 
		"update dymember set password=?, name=?, birthyear=?, birthmonth=?, birthdate=?, gender=?, email=?, phone=? where id = ?";
		//4. mapping
		try {
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, dy.getPassword());
			pstmt.setString(2, dy.getName());
			pstmt.setInt(3, dy.getBirthyear());
			pstmt.setInt(4, dy.getBirthmonth());
			pstmt.setInt(5, dy.getBirthdate());
			pstmt.setInt(6, dy.getGender());
			pstmt.setString(7, dy.getEmail());
			pstmt.setString(8, dy.getPhone());
			pstmt.setString(9, dy.getId());
			
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
	public List<dymember> memberList(){
		   Connection conn = getConnection();
		   PreparedStatement pstmt=null;
		   String sql = "select * from dymember";
		   List<dymember> li = new ArrayList<>();
		   try {
		      pstmt = conn.prepareStatement(sql);
		      ResultSet rs = pstmt.executeQuery();
		      while(rs.next()) {
		    	 dymember dy = new dymember();
		         dy.setId(rs.getString("id"));
		         dy.setPassword(rs.getString("password"));
		         dy.setName(rs.getString("name"));
		         dy.setBirthyear(rs.getInt("birthyear"));
		         dy.setBirthmonth(rs.getInt("birthmonth"));
		         dy.setBirthdate(rs.getInt("birthdate"));
		         dy.setGender(rs.getInt("gender"));
		         dy.setPhone(rs.getString("phone"));
		         dy.setEmail(rs.getString("email"));
		         li.add(dy);
		      }
		      return li;
		   }catch(SQLException e) {
		      e.printStackTrace();
		   }
		   return null;
		}
	
}
