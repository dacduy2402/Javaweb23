package com.devpro.javaweb23.model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_products") // entity mapping với bảng nào
public class Product extends BaseEntity {
	@Column(name = "name_product", length = 1000, nullable = false)
	private String nameProduct;
	
	@Column(name ="quantity", nullable = true)
	private int quantity;
	
	@Column(name = "price", precision = 13, scale = 2, nullable = false)
	private BigDecimal price;
	
	@Column(name = "price_sale", precision = 13, scale = 2, nullable = true)
	private BigDecimal priceSale;
	
	@Lob
	@Column(name = "description", nullable = false, columnDefinition = "LONGTEXT")
	private String description;
	
	@Column(name = "avt_product", nullable = true)
	private String avtProduct;
	
	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;
	
	@Column(name = "hot_product", nullable = true)
	private Boolean hotProduct = Boolean.FALSE;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Categories categories;
	
	@OneToMany(cascade = CascadeType.ALL,
			fetch = FetchType.LAZY,
			mappedBy ="product")
	private Set<ProductImage> productImages = new HashSet<ProductImage>();
	
//	Quy tắc: trong quan hệ One-To-Many thì cần 2 methods sau:
	public void addProductImage(ProductImage productImage) {
		productImage.setProduct(this);
		productImages.add(productImage);
	}
	public void deleteProductImage(ProductImage productImage) {
		productImage.setProduct(null);
		productImages.remove(productImage);
	}
	
	public Set<ProductImage> getProductImages() {
		return productImages;
	}

	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setProductImages(Set<ProductImage> productImages) {
		this.productImages = productImages;
	}

	public String getNameProduct() {
		return nameProduct;
	}
	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAvtProduct() {
		return avtProduct;
	}
	public void setAvtProduct(String avtProduct) {
		this.avtProduct = avtProduct;
	}
	public Boolean getHotProduct() {
		return hotProduct;
	}
	public void setHotProduct(Boolean hotProduct) {
		this.hotProduct = hotProduct;
	}
	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getPriceSale() {
		return priceSale;
	}

	public void setPriceSale(BigDecimal priceSale) {
		this.priceSale = priceSale;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	

}
