package com.mughalsaraibazaar.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usersignup")
public class UserSingupPage {
	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column
	private String fullname;
	@Column
	private String mobile;
	@Column
	private String password;
	@Column
	private String cpassword;
	@Column
	private String date;
	
	public UserSingupPage() {
		
	}

	public UserSingupPage(String fullname, String mobile, String password, String cpassword, String date) {
		super();
		this.fullname = fullname;
		this.mobile = mobile;
		this.password = password;
		this.cpassword = cpassword;
		this.date = date;
	}

	public int getSn() {
		return sn;
	}

	public void setSn(int sn) {
		this.sn = sn;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
	

}
