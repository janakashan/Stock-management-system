package com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	  // Database URL
	private static String url = "jdbc:mysql://localhost:3306/stock_management_system";
	// Database username
	private static String userName = "root";
	// Database password
	private static String password = "janakashan@123";
	// Connection variable
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			// JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		 
		// Return
		return con;
	}

}