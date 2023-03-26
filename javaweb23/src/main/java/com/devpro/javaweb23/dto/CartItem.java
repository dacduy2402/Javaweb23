package com.devpro.javaweb23.dto;

import java.math.BigDecimal;

/**
 * Biểu thị cho 1 sản phẩm trong giỏ hàng.
 * @author daing
 *
 */
public class CartItem {
	// mã sản phẩm 
	private int productId;
	
	// tên sản phẩme
	private String productName;

	// avt sản phẩm
	private String productAvt;	

	// loai sản phẩm
	private String category;	

	// loai sản phẩm
	private int categoryId;	
	
	// số lương sản phẩm
	private int quantity;
	
	// đơn giá sản phẩm
	private BigDecimal priceUnit;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getPriceUnit() {
		return priceUnit;
	}

	public void setPriceUnit(BigDecimal priceUnit) {
		this.priceUnit = priceUnit;
	}

	public String getProductAvt() {
		return productAvt;
	}

	public void setProductAvt(String productAvt) {
		this.productAvt = productAvt;
	}
	
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	@Override
	public String toString() {
		return "CartItem [productId=" + productId + ", productName=" + productName +", productAvt=" + productAvt 
				+ ", category=" + category +", quanlity=" + quantity + ", priceUnit=" + priceUnit + "]";
	}
	
	

}
