package com.mughalsaraibazaar.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contact_page")
public class ContactPage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column(length = 45)
	private String name;
	@Column(length = 45)
	private String email;
	@Column(length = 450)
	private String message;
	@Column(length = 50)
	private String date;
	
	
	public ContactPage() {
		
	}


	public ContactPage(String name, String email, String message, String date) {
		super();
		this.name = name;
		this.email = email;
		this.message = message;
		this.date = date;
	}
	
	


	public int getSn() {
		return sn;
	}


	public void setSn(int sn) {
		this.sn = sn;
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


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


		
	
}
