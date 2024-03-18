package com.mughalsaraibazaar.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "addProducts")
public class AddProductsPage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	@Column(length = 480)
	private String title ;
	@Column(length = 480)
	private String description;
	@Column(length = 280)
	private String crossprice ;
	@Column(length = 80)
	private String mainprice ;
	@Column(length = 80)
	private String availability; 
	@Column(length = 80)
	private String department; 
	@Column(length = 80)
	private String category ;
	@Column(length = 80)
	private String productImage ;
	@Column(length = 100)
	private String date;
	
	
	public AddProductsPage() {
		
	}
	
	public AddProductsPage(String title, String description, String crossprice, String mainprice, String availability,
			String department, String category, String productImage, String date) {
		super();
		this.title = title;
		this.description = description;
		this.crossprice = crossprice;
		this.mainprice = mainprice;
		this.availability = availability;
		this.department = department;
		this.category = category;
		this.productImage = productImage;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	
	
}
