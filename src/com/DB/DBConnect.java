package com.DB;
import java.sql.*;

public class DBConnect {
	private static Connection conn;
	
	public static Connection getConnection() {
	    try {
	        if (conn == null || conn.isClosed()) {
	            Class.forName("com.mysql.jdbc.Driver");
	            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_emploi_temps_jee", "root", "vealeto");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return conn;
	}


}
