
package com.mbelDev.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mbelDev.utils.ScriptWriter;

public class FileDao {
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
	// CRUDÃ³¸®
	public int insertFile(FileDto fileDto) {
		int result = 0;
		
		try {
			getConnection();
			String sql = "INSERT INTO CLOCK VALUES(FILE_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, fileDto.getTitle());
			psmt.setString(2, fileDto.getCategory());
			psmt.setInt(3, fileDto.getDepth());
			psmt.setInt(4, fileDto.getPrice());
			psmt.setString(5, fileDto.getFileImage());
			psmt.setString(6, fileDto.getFielRealImage());
			result = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return result;
	}
	
	public ArrayList<FileDto> getAllFile(){
		ArrayList<FileDto> fileList = new ArrayList<>();
		
		try {
			getConnection();
			String sql = "SELECT * FROM CLOCK";
			psmt = conn.prepareStatement(sql);
			result = psmt.executeQuery();
			while(result.next()) {
				FileDto fileDto = new FileDto();
				fileDto.setNo(result.getInt("no"));
				fileDto.setTitle(result.getString("TITLE"));
				fileDto.setCategory(result.getString("CATEGORY"));
				fileDto.setDepth(result.getInt("DEPTH"));
				fileDto.setPrice(result.getInt("PRICE"));
				fileDto.setFileImage(result.getString("IMG"));
				fileDto.setFielRealImage(result.getString("IMGREAL"));
				fileList.add(fileDto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return fileList;
	}
}


