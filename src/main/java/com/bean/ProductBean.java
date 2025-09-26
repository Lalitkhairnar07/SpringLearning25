package com.bean;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

public class ProductBean {

	@NotBlank(message = "Please Enter Product Name")
	private String productName;
	
	@NotBlank(message = "Please Enter Category")
	@Pattern(regexp = "[a-zA-Z]+", message = "Please Enter Valid Category")
	private String category;
	
	@NotNull
	private Integer qty;
	
	@NotNull
	@Min(value = 99, message = "Price should be 99+")
	@Max(value = 100000, message = "Max allowed Price is 100000")
	private Integer price;
	
	@NotBlank
	private String address;
	
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
}
