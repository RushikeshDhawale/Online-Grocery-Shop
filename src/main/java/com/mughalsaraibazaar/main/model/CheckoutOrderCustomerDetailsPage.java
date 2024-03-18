package com.mughalsaraibazaar.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "placeordercustomerdetails")
public class CheckoutOrderCustomerDetailsPage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column
	private String name;
	@Column
	private String street;
	@Column
	private String apartment;
	@Column
	private String city;
	@Column
	private String postcode;
	@Column
	private String phone;
	@Column
	private String notes;
	@Column
	private String delivery;
	@Column
	private String mobile;
	@Column
	private String password;
	@Column
	private String orderID;
	@Column
	private String date;
	@Column
	private String isDelivered;
	
	public CheckoutOrderCustomerDetailsPage() {
		
	}

	public CheckoutOrderCustomerDetailsPage(String name, String street, String apartment, String city, String postcode,
			String phone, String notes, String delivery, String mobile, String password, String orderID, String date,
			String isDelivered) {
		super();
		this.name = name;
		this.street = street;
		this.apartment = apartment;
		this.city = city;
		this.postcode = postcode;
		this.phone = phone;
		this.notes = notes;
		this.delivery = delivery;
		this.mobile = mobile;
		this.password = password;
		this.orderID = orderID;
		this.date = date;
		this.isDelivered = isDelivered;
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

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getApartment() {
		return apartment;
	}

	public void setApartment(String apartment) {
		this.apartment = apartment;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
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

	public String getIsDelivered() {
		return isDelivered;
	}

	public void setIsDelivered(String isDelivered) {
		this.isDelivered = isDelivered;
	}
	
	

	
	
	
	
}
