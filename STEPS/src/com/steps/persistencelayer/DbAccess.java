package com.steps.persistencelayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbAccess {
	
	static final String DRIVE_NAME = "com.mysql.jdbc.Driver";
	static final String CONNECTION_URL = "jdbc:mysql://localhost:3306/STEPS";
	static final String DB_CONNECTION_USERNAME = "root";
	static final String DB_CONNECTION_PASSWORD = "root";
	
	public Connection connect() {
		Connection con = null;
		try {
			Class.forName(DRIVE_NAME);
			con = DriverManager.getConnection(CONNECTION_URL, DB_CONNECTION_USERNAME, DB_CONNECTION_PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	} // connect

}
