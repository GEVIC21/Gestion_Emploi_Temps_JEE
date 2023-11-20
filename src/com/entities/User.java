package com.entities;

public class User {
	private int id;
	private String name;
	private String email;
	private String passeword;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String name, String email, String passeword) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.passeword = passeword;
	}
	public User(String name, String email, String passeword) {
		super();
		this.name = name;
		this.email = email;
		this.passeword = passeword;
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
