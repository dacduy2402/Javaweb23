package com.devpro.javaweb23.controller.customer;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.dto.ProductSearch;
import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;




@Controller
public class HomeController extends BaseController {
	@Autowired
	CategoriesService categoriesService;
	
	@Autowired
	ProductService productService;
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
			throws IOException {
		
		List<Categories> cates = categoriesService.findAll();
		
		model.addAttribute("cates", cates);
		String categoryId = request.getParameter("categoryId");
		Boolean status = true;
		Boolean productsHot = true;
		
		ProductSearch productSearch = new ProductSearch();
		productSearch.setProductsHot(productsHot);
		productSearch.setStatus(status);
		productSearch.setCategoryId(categoryId);
		
		
		List<Product> products = productService.filterProduct(productSearch);
		model.addAttribute("products", products);
		
//		ProductSearch searchCate = new ProductSearch();
//		String categoryId = "1";
		
//		searchCate.setCategoryId(categoryId);
//		
//		PagerData<Product> laptops = productService.searchProduct(searchCate);
//		model.addAttribute("laptops", laptops);
		
//		đường dẫn tới view
		return "customer/home";
	}
//	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
//	public String laptop(final Model model, 
//			final HttpServletRequest request, 
//			final HttpServletResponse response)
//					throws IOException {
//		
//		String categoryId = "2";
//		Boolean status = true;
//		Boolean productsHot = true;
//		ProductSearch productSearch = new ProductSearch();
//		productSearch.setCategoryId(categoryId);
//		productSearch.setProductsHot(productsHot);
//		productSearch.setStatus(status);
//		
//		PagerData<Product> laptops = productService.searchProduct(productSearch);
//		model.addAttribute("laptops", laptops);
////		đường dẫn tới view
//		return "customer/home";
//	}
}
