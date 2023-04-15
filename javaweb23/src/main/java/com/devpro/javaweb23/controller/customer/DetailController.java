package com.devpro.javaweb23.controller.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.impl.ProductService;

@Controller
public class DetailController {
	@Autowired
	private ProductService productService;
	@RequestMapping(value = { "/detail" }, method = RequestMethod.GET)
	public String home(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
//		đường dẫn tới view
		return "customer/detail";
	}
	
//	@RequestMapping(value = { "/detail/{productId}" }, method = RequestMethod.GET)
//	public String productDetailView(final Model model, 
//								final HttpServletRequest request, 
//								final HttpServletResponse response,
//								@PathVariable("productId") Integer productId) 
//								throws IOException {
////Laays product trong db theo productId
//		
//		Product product = productService.getById(productId);
//		model.addAttribute("product", product);// đẩy data xuống view
//		
//		
//		return "administrator/detail";
//	}
}
