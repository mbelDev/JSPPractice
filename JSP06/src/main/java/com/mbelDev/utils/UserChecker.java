package com.mbelDev.utils;

import java.sql.*;

import javax.servlet.http.HttpServletResponse;

public class UserChecker {
	public static boolean idChecker(HttpServletResponse response, String _userID) throws SQLException {
	
		boolean exitID = false;
			
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "gundam";
		String pw = "EFSFsaikou0079";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		ResultSet result = null;
		String sql = "SELECT COUNT(*) AS COUNT FROM MEMBER02 WHERE USERID = ?";
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,_userID);
			
			result = psmt.executeQuery();
	
			if(result.next()){
				exitID = true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(psmt!=null){	psmt.close();}
			if(conn!=null){	conn.close();}
			//연결을 끊을떄는 역순으로. 아주 !important! 하다
		}
		
		return exitID;
	}
	
}
