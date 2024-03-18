package com.mughalsaraibazaar.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "placeorder")
public class PlacedOrderPage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	//From ProductCartPage
	private int psn;
	private int count;
	
	//From AddProductsPage
	@Column
	private String title;
	@Column
	private String description;
	@Column
	private String crossprice;
	@Column
	private String mainprice;
	@Column
	private String availability;
	@Column
	private String department;
	@Column
	private String category;
	@Column
	private String productImage;

	//For Unique Data Validation
	@Column
	private String mobile;
	@Column
	private String password;
	@Column
	private String orderID;
	@Column
	private String date;


	public PlacedOrderPage() {
		// TODO Auto-generated constructor stub
	}


	public PlacedOrderPage(int psn, int count, String title, String description, String crossprice, String mainprice,
			String availability, String department, String category, String productImage, String mobile,
			String password, String orderID, String date) {
		super();
		this.psn = psn;
		this.count = count;
		this.title = title;
		this.description = description;
		this.crossprice = crossprice;
		this.mainprice = mainprice;
		this.availability = availability;
		this.department = department;
		this.category = category;
		this.productImage = productImage;
		this.mobile = mobile;
		this.password = password;
		this.orderID = orderID;
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


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getCrossprice() {
		return crossprice;
	}


	public void setCrossprice(String crossprice) {
		this.crossprice = crossprice;
	}


	public String getMainprice() {
		return mainprice;
	}


	public void setMainprice(String mainprice) {
		this.mainprice = mainprice;
	}


	public String getAvailability() {
		return availability;
	}


	public void setAvailability(String availability) {
		this.availability = availability;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getProductImage() {
		return productImage;
	}


	public void setProductImage(String productImage) {
		this.productImage = productImage;
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


	public String getOrderID() {
		return orderID;
	}


	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	
	
	
}
