package com.devpro.javaweb23.controller.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.User;
import com.devpro.javaweb23.services.impl.CategoriesService;

public abstract class BaseController {
	@Autowired
	private CategoriesService categoriesService;
	
	/**
	 * tất cả các request-mapping của child-controller extends từ basecontroller
	 * sẽ tự động gọi các hàm có sử dụng @ModelAttribute
	 * kết quả của hàm sẽ tự động đẩy xuống view
	 */
	@ModelAttribute("categories")
	public List<Categories> getAllCategories() {
		return categoriesService.findAll();
	}
	
	@ModelAttribute("userLogined")
	public User getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(userLogined != null && userLogined instanceof UserDetails)
			return (User) userLogined;
		
		return new User();
	}
	
	@ModelAttribute("isLogined")
	public Boolean isLogined() {
		boolean isLogined = false;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal != null && principal instanceof UserDetails) {
			isLogined = true;
		}
			
		return isLogined;
	}
}
