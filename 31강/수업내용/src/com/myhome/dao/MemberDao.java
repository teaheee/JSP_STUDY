package com.myhome.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.myhome.dto.MemberDto;

public class MemberDao {
	private String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String db_username = "myJsp";
	private String db_password = "jsppassword";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private String sql;
	
	public MemberDao() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(db_url, db_username, db_password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean insert(MemberDto dto) {
		boolean result = false;
		sql = "INSERT INTO member VALUES(member_seq.NEXTVAL, ?, ?, ?, ?, SYSDATE)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId() );
			ps.setString(2, dto.getPassword() );
			ps.setString(3, dto.getEmail());
			ps.setString(4, dto.getNickname() );
			result = ps.executeUpdate() == 1;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps!=null) ps.close();
				if(con!=null) con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public MemberDto select(String id, String password) {
		MemberDto dto = null;
		sql = "SELECT * FROM member WHERE id = ? AND password = ?"; 
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDto();
				dto.setId( rs.getString("id") );
				dto.setPassword( rs.getString("password") );
				dto.setEmail( rs.getString("email"));
				dto.setNo( rs.getInt("no") );
				dto.setNickname( rs.getString("nickname"));
				dto.setRegdate( rs.getString("regdate") );
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	}
}






