package com.mbelDev.utils;

import java.sql.*;

public class SqlConnect {
	public static void connect() {
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "gundam";
		String pw = "EFSFsaikou0079";

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet result = null;

	}
}
