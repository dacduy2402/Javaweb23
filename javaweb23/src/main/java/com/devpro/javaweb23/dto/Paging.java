package com.devpro.javaweb23.dto;

import com.devpro.javaweb23.services.BaseService;

public class Paging {
	private String keyword;
	private String currentPage;
	
	

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	

	public Integer getPage() {
		try {
			return Integer.parseInt(this.getCurrentPage());
		} catch (Exception e) {
			return BaseService.NO_PAGING;
		}
	}


	public Paging(String keyword, String currentPage) {
		super();
		this.keyword = keyword;
		this.currentPage = currentPage;
	}

	public Paging() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ProductSearch [keyword=" + keyword + ",currentPage=" + currentPage +"]";
	}
	
	
}
