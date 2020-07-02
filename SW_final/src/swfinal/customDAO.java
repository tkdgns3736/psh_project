package swfinal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class customDAO {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String jdbcurl ="jdbc:oracle:thin:@localhost:1521:xe";
	
	Connection conn;
	PreparedStatement pstmt;
	
	public void connect() {
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(jdbcurl,"c##ippdb","1234");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	public void disconnect() {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void addcustom(custom s) {
		connect();
		String sql= "insert into custom_01 values(?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,s.getId());
			pstmt.setString(2,s.getPass());
			pstmt.setString(3,s.getName());
			pstmt.setString(4,s.getEmail());
			pstmt.setString(5,s.getPhone());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		disconnect();
	}
	public ArrayList<custom> findAll() {
		connect();

		ArrayList<custom> datas = new ArrayList<custom>();
		
		String sql = "select * from custom_01";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				custom s = new custom();
				s.setId(rs.getString("p_id"));
				s.setName(rs.getString("c_name"));
				s.setEmail(rs.getString("c_email"));
				s.setPhone(rs.getString("c_tel"));
				
				datas.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		disconnect();
		
		return datas;
	}
}
	
