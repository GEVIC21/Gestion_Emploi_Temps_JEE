package com.DAO;

import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	public User getLogin(String em, String ps)
	{
		User us=null;
		try{
			
			String query = "select * from users where email=? and password=?";
			
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1, em);
			pst.setString(2, ps);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				 us = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return us;
		
	}
	
	public static String passwordHash(String password){
		
		try{
			MessageDigest md = MessageDigest.getInstance("SHA");
			md.update(password.getBytes());
			byte[] rbt = md.digest();
			StringBuilder sb = new StringBuilder();
			
			for(byte b: rbt){
				sb.append(String.format("%02x", b));
			}
			return sb.toString();
		}catch(Exception e){
			
		}
		return null;
		}
	}


