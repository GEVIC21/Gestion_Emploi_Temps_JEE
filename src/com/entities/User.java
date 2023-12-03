package com.entities;

public class User {
	private int id;
	private String name;
	private String email;
	private String passeword;
	private String rememberToken;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String name, String email, String passeword, String rememberToken) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.passeword = passeword;
		this.rememberToken = rememberToken;
	}
	public User(String name, String email, String passeword, String rememberToken) {
		super();
		this.name = name;
		this.email = email;
		this.passeword = passeword;
		this.rememberToken = rememberToken;
	}
	public String getRememberToken() {
		return rememberToken;
	}
	public void setRememberToken(String rememberToken) {
		this.rememberToken = rememberToken;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasseword() {
		return passeword;
	}
	public void setPasseword(String passeword) {
		this.passeword = passeword;
	}
	

}
