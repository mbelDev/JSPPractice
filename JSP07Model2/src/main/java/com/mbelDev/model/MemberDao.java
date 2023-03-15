package com.mbelDev.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {
	private String driver = "oracle.jdbc.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "gundam";
	private String pw = "EFSFsaikou0079";

	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet result = null;

	public void getConnection() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
	}

	// CRUD작성
	public int insertMember(MemberDto memberDto) {
		int result = 0;
		getConnection();
		String sql = "INSERT INTO MEMBER02 VALUES(MEMBER02_SEQ.NEXTVAL,?,?,?,?,?,?,?,SYSDATE,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memberDto.getUserID());
			psmt.setString(2, memberDto.getUserPW());
			psmt.setString(3, memberDto.getUserNM());
			psmt.setString(4, memberDto.getUserEM());
			psmt.setString(5, memberDto.getUserHP());
			psmt.setInt(6, memberDto.getUserZIP());
			psmt.setString(7, memberDto.getUserAD());

			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return 1;
	}

	public MemberDto getMemberInfo(String userID) {
		MemberDto memberDto = new MemberDto();
		getConnection();
		String sql = "SELECT * FROM MEMBER02 WHERE USERID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, userID);
			result = psmt.executeQuery();
			if(result.next()) {
				memberDto.setUserID(result.getString("userID"));
				memberDto.setUserNM(result.getString("userNM"));
				memberDto.setUserEM(result.getString("userEM"));
				memberDto.setUserHP(result.getString("userHP"));
				memberDto.setUserZIP(result.getInt("userZIP"));
				memberDto.setUserAD(result.getString("userAD"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return memberDto;
	}

	public MemberDto getLoggedMemberInfo(String userID, String userPW) {
		MemberDto memberDto = null;
		getConnection();
		String sql = "SELECT * FROM MEMBER02 WHERE USERID = ? AND USERPW = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, userID);
			psmt.setString(2, userPW);
			result = psmt.executeQuery();
			if(result.next()) {
				memberDto = new MemberDto();
				memberDto.setUserID(result.getString("userID"));
				memberDto.setUserNM(result.getString("userNM"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return memberDto;
	}
	
	public int checkID(String userID) {
		int checkDuple = 0;
		getConnection();
		String sql = "SELECT COUNT(*) AS COUNT FROM MEMBER02 WHERE USERID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, userID);
			result = psmt.executeQuery();
			if(result.next()) {
				checkDuple = result.getInt("COUNT");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return checkDuple;
	}

	
	public void close() {
		try {
			if (result != null)
				result.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
