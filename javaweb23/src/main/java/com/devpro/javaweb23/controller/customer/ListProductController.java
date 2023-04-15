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

import com.devpro.javaweb23.dto.ProductSearch;
import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;

@Controller
public class ListProductController extends BaseController{
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/list-product" }, method = RequestMethod.GET)
	public String listProducts(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
		// lấy keyword
				String keyword = request.getParameter("keyword");
				// lấy categoryId
				String categoryId = request.getParameter("categoryId");
				// lấy số page hiện tại
				String currentPage = request.getParameter("page");
				
				Boolean status = true;
				ProductSearch productSearch = new ProductSearch();
				productSearch.setKeyword(keyword);
				productSearch.setCategoryId(categoryId);
				productSearch.setCurrentPage(currentPage);
				productSearch.setStatus(status);
				productSearch.setProductsHot(null);
				
				// muốn giữ được các giá trị search trên màn hình
				// thì phải đẩy lại các dữ liệu nhập trước đó xuống view
				model.addAttribute("productSearch", productSearch);
				
				PagerData<Product> products = productService.searchProduct(productSearch);
				model.addAttribute("products", products);
				
//		model.addAttribute("products", productService.findAll());

//		đường dẫn tới view
		return "customer/list-product";
	}
	@RequestMapping(value = { "/list-product/products_hot" }, method = RequestMethod.GET)
	public String listProductsHot(final Model model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
	{
		// lấy keyword
		String keyword = request.getParameter("keyword");
		// lấy categoryId
		String categoryId = request.getParameter("categoryId");
		// lấy số page hiện tại
		String currentPage = request.getParameter("page");
		
//		Boolean status = Boolean.parseBoolean(request.getParameter("status"));
		Boolean status = true;
		Boolean productsHot = true;
		ProductSearch productSearch = new ProductSearch();
		productSearch.setKeyword(keyword);
		productSearch.setCategoryId(categoryId);
		productSearch.setCurrentPage(currentPage);
		productSearch.setProductsHot(productsHot);
		productSearch.setStatus(status);
		
		// muốn giữ được các giá trị search trên màn hình
		// thì phải đẩy lại các dữ liệu nhập trước đó xuống view
		model.addAttribute("productSearch", productSearch);
		
		PagerData<Product> products = productService.searchProduct(productSearch);
		model.addAttribute("products", products);
		
//		model.addAttribute("products", productService.findAll());
		
//		đường dẫn tới view
		return "customer/list-hot";
	}
	@RequestMapping(value = { "/list-product/phones" }, method = RequestMethod.GET)
	public String listPhones(final Model model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
	{
		// lấy keyword
		String keyword = request.getParameter("keyword");
		// lấy categoryId
//		String categoryId = request.getParameter("1");
		// lấy số page hiện tại
		String currentPage = request.getParameter("page");
		
		Boolean status = true;
		String categoryId = "1" ;
		ProductSearch productSearch = new ProductSearch();
		productSearch.setKeyword(keyword);
		productSearch.setCategoryId(categoryId);
		productSearch.setCurrentPage(currentPage);
		productSearch.setStatus(status);
		
		// muốn giữ được các giá trị search trên màn hình
		// thì phải đẩy lại các dữ liệu nhập trước đó xuống view
		model.addAttribute("productSearch", productSearch);
		
		PagerData<Product> products = productService.searchProduct(productSearch);
		model.addAttribute("products", products);
		
//		model.addAttribute("products", productService.findAll());
		
//		đường dẫn tới view
		return "customer/list-phone";
	}
	@RequestMapping(value = { "/list-product/laptops" }, method = RequestMethod.GET)
	public String listLaptops(final Model model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
	{
		// lấy keyword
		String keyword = request.getParameter("keyword");
		// lấy categoryId
//		String categoryId = request.getParameter("1");
		// lấy số page hiện tại
		String currentPage = request.getParameter("page");
		
		Boolean status = true;
		String categoryId = "2" ;
		ProductSearch productSearch = new ProductSearch();
		productSearch.setKeyword(keyword);
		productSearch.setCategoryId(categoryId);
		productSearch.setCurrentPage(currentPage);
		productSearch.setStatus(status);
		
		// muốn giữ được các giá trị search trên màn hình
		// thì phải đẩy lại các dữ liệu nhập trước đó xuống view
		model.addAttribute("productSearch", productSearch);
		
		PagerData<Product> products = productService.searchProduct(productSearch);
		model.addAttribute("products", products);
		
//		model.addAttribute("products", productService.findAll());
		
//		đường dẫn tới view
		return "customer/list-laptop";
	}
}
