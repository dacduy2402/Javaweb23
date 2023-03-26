package com.devpro.javaweb23.controller.customer;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;

@Controller
public class ListProductController extends BaseController{
	@Autowired
	private ProductService productService;

	@Autowired
	private CategoriesService categoriesService;
	
	@RequestMapping(value = { "/list-product" }, method = RequestMethod.GET)
	public String home(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
//		List<Product> products = new ArrayList<Product>();
//		Categories categories = new Categories();
//		for (Product product : products) {
//			if (categoriesService.getById(categories.getId()) == 1) {
//				
//			}
//		}
		
		model.addAttribute("products", productService.findAll());

//		đường dẫn tới view
		return "customer/list-product";
	}
}
