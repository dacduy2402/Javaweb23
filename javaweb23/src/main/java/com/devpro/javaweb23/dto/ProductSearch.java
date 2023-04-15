package com.devpro.javaweb23.dto;

import com.devpro.javaweb23.services.BaseService;

public class ProductSearch {
	private String keyword;
	private String categoryId;
	private String currentPage;
	private String seo;
	private Boolean productsHot;
	private Boolean status;
	

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	
	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Boolean getProductsHot() {
		return productsHot;
	}

	public void setProductsHot(Boolean productsHot) {
		this.productsHot = productsHot;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Integer getPage() {
		try {
			return Integer.parseInt(this.getCurrentPage());
		} catch (Exception e) {
			return BaseService.NO_PAGING;
		}
	}


	public ProductSearch(String keyword, String categoryId, String currentPage, String seo, Boolean productsHot,
			Boolean status) {
		super();
		this.keyword = keyword;
		this.categoryId = categoryId;
		this.currentPage = currentPage;
		this.seo = seo;
		this.productsHot = productsHot;
		this.status = status;
	}

	public ProductSearch() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ProductSearch [keyword=" + keyword + ", categoryId=" + categoryId + ", currentPage=" + currentPage
				+ ", seo=" + seo + ", productsHot=" + productsHot + ", status=" + status + "]";
	}
	
	
}
