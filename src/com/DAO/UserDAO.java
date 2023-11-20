package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entities.User;

public class UserDAO {
	
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userRegister(User us)
	{
		boolean f = false;
		
		try{
			String query = "insert into users(name,email,password) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPasseword());
			
			ps.executeUpdate();
			f=true;
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return f;
		
	}

}
