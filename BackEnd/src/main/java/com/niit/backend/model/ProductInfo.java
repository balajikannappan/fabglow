package com.niit.backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class ProductInfo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productId;
	private String productName;
	private int productQuantity;
	private String productDescription;
	private double price;
	/*
	 * private Category category; private SupplierInfo supplierInfo;
	 */

	/*
	 * @Transient private MultipartFile image;
	 */
	/**
	 * @return the productId
	 */
	public int getProductId() {
		return productId;
	}

	/**
	 * @param productId
	 *            the productId to set
	 */
	public void setProductId(int productId) {
		this.productId = productId;
	}

	/**
	 * @return the productName
	 */
	public String getProductName() {
		return productName;
	}

	/**
	 * @param productName
	 *            the productName to set
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}

	/**
	 * @return the productQuantity
	 */
	public int getProductQuantity() {
		return productQuantity;
	}

	/**
	 * @param productQuantity
	 *            the productQuantity to set
	 */
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

	/**
	 * @return the productDescription
	 */
	public String getProductDescription() {
		return productDescription;
	}

	/**
	 * @param productDescription
	 *            the productDescription to set
	 */
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price
	 *            the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}
	/**
	 * @return the category
	 */
	/*
	 * public Category getCategory() { return category; }
	 *//**
		 * @param category
		 *            the category to set
		 */
	/*
	 * public void setCategory(Category category) { this.category = category; }
	 *//**
		 * @return the supplierInfo
		 */
	/*
	 * public SupplierInfo getSupplierInfo() { return supplierInfo; }
	 *//**
		 * @param supplierInfo
		 *            the supplierInfo to set
		 *//*
			 * public void setSupplierInfo(SupplierInfo supplierInfo) { this.supplierInfo =
			 * supplierInfo; }
			 * 
			 * public MultipartFile getImage() { return image; } public void
			 * setImage(MultipartFile image) { this.image = image; }
			 */

}
