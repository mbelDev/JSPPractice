package com.mbelDev.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDao {
	private String driver = "oracle.jdbc.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "gundam";
	private String pw = "EFSFsaikou0079";

	private Connection conn = null;
	private PreparedStatement pstmt = null;
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
	public void close() {
		try {
			if (result != null)
				result.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// 이하 CRUD
	
	
	public int insertBoard(BoardDto boardDto) {
		int result = 0;
		getConnection();
		String sql = "INSERT INTO BOARD_TEST VALUES(BOARD_TEST_SEQ.NEXTVAL,?,?,SYSDATE)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,boardDto.getAuthor());
			pstmt.setString(2,boardDto.getContents());
			
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return result;
	}
	
	public int deleteBoard(int postNo, String postPW) {
		int result = 0;
		getConnection();
		String sql = "SELECT postPW FROM BOARD_TEST WHERE postNO = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,postNo);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				if(postPW.equals(rs.getString("postPW"))) {
					sql = "DELETE FROM BOARD_TEST WHERE postNO = ?";
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setInt(1, postNo);
					
					result = pstmt.executeUpdate();
				}else {
					result = 0;
				}
			}else {
				result = -1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	return result;
	}
	
	public ArrayList<BoardDto> getAll(){
		ArrayList<BoardDto> boardList = null;
		
		try {
			getConnection();
			String sql = "SELECT * FROM BOARD_TEST";
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			boardList = new ArrayList<>();
			while(result.next()) {
				BoardDto boardDto = new BoardDto();
				boardDto.setNo(result.getInt("POSTNO"));
				boardDto.setAuthor(result.getString("AUTHOR"));
				boardDto.setContents(result.getString("CONTENTS"));
				boardDto.setRegDate(result.getString("REGDATE"));
				boardList.add(boardDto);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return boardList;
	}
	
	public BoardDto getSelectOne(int postNo) {
		BoardDto boardDto = null;
		getConnection();
		String sql = "SELECT * FROM BOARD_TEST WHERE POSTNO = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,postNo);
					
			result = pstmt.executeQuery();
			if(result.next()) {
				boardDto = new BoardDto();
				boardDto.setNo(result.getInt("POSTNO"));
				boardDto.setAuthor(result.getString("AUTHOR"));
				boardDto.setContents(result.getString("CONTENTS"));
				boardDto.setRegDate(result.getString("REGDATE"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return boardDto;
		
	}
}
