package com.steps.persistencelayer;

import java.sql.Connection;

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
	
	// queries go here

}
