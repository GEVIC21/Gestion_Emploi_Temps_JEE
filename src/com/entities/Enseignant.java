package com.entities;

public class Enseignant {
	private int id;
	private String nom;
	private String prenom;
	private String tel;
	private String numero;
	private String matricule;
	private String email;

	public Enseignant(String nom, String prenom, String tel, String numero, String matricule, String email) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.tel = tel;
		this.numero = numero;
		this.matricule = matricule;
		this.email = email;
	}

	public Enseignant(int id, String nom, String prenom, String tel, String numero, String matricule, String email) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.tel = tel;
		this.numero = numero;
		this.matricule = matricule;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getMatricule() {
		return matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
