package com.steps.persistencelayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PersistenceLayer {
	
	private DbAccess database;
	private Connection connection;
	
	/**
	 * Constructor
	 */
	public PersistenceLayer() {
		database = new DbAccess();
		connection = database.connect();
	}
	
	/**
	 * 
	 * @param email
	 * @param privilege
	 * @return
	 */
	public ResultSet getUserPassword(String email, String privilege) {
		ResultSet results = null;
		PreparedStatement getPassword = null;
		String query = "SELECT * FROM STEPS.user WHERE email=? AND privileges=?";
		
		try {
			getPassword = connection.prepareStatement(query);
			getPassword.setString(1, email);
			getPassword.setString(2, privilege);
			
			results = database.retrieve(connection, getPassword);
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return results;
	}

}
