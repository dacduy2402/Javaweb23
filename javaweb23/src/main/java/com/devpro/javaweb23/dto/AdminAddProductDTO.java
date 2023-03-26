package com.devpro.javaweb23.dto;

public class AdminAddProductDTO {
	private String nameProduct;
	private String categories;
	private Boolean hotProduct;
	private int quantity;
	private int price;
	private int priceSale;
	private String avtProduct;
	private String images;
	private String describe;
	
	
	public Boolean getHotProduct() {
		return hotProduct;
	}
	public void setHotProduct(Boolean hotProduct) {
		this.hotProduct = hotProduct;
	}
	public int getPriceSale() {
		return priceSale;
	}
	public void setPriceSale(int priceSale) {
		this.priceSale = priceSale;
	}
	public String getAvtProduct() {
		return avtProduct;
	}
	public void setAvtProduct(String avtProduct) {
		this.avtProduct = avtProduct;
	}

	public String getNameProduct() {
		return nameProduct;
	}
	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
}
