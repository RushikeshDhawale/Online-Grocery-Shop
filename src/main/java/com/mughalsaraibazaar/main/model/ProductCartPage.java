package com.mughalsaraibazaar.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Columns;

@Entity
@Table(name = "cart")
public class ProductCartPage {
	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column
	private int psn;
	@Column
	private String mobile;
	@Column
	private String password;
	@Column
	private int count;
	@Column
	private String date;
	
	public ProductCartPage() {

	}

	public ProductCartPage(int psn, String mobile, String password, int count, String date) {
		super();
		this.psn = psn;
		this.mobile = mobile;
		this.password = password;
		this.count = count;
		this.date = date;
	}

	public int getSn() {
		return sn;
	}

	public void setSn(int sn) {
		this.sn = sn;
	}

	public int getPsn() {
		return psn;
	}

	public void setPsn(int psn) {
		this.psn = psn;
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
		
}
