package com.devpro.javaweb23.controller.administrator;

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

import com.devpro.javaweb23.dto.Paging;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.SaleOrder;
import com.devpro.javaweb23.model.SaleOrderProducts;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.ProductService;
import com.devpro.javaweb23.services.impl.SaleOrderProductService;
import com.devpro.javaweb23.services.impl.SaleOrderService;

@Controller
public class AdminOrderController {
	
	@Autowired
	SaleOrderService saleOrderService;
	
//	@Autowired
//	SaleOrderProductService saleOrderProductService;
	
//	@Autowired
//	ProductService productService;
	
	@RequestMapping(value = { "/admin/order" }, method = RequestMethod.GET)
	public String order(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
		
		// lấy keyword
		String keyword = request.getParameter("keyword");
		// lấy số page hiện tại
		String currentPage = request.getParameter("page");
		
		Paging paging = new Paging();
		paging.setKeyword(keyword);
		paging.setCurrentPage(currentPage);
		
		model.addAttribute("paging", paging);
		PagerData<SaleOrder> saleOrders = saleOrderService.pagingPage(paging);
		model.addAttribute("saleOrders", saleOrders);
//		
//		List<SaleOrderProducts> saleOrderProducts = saleOrderProductService.getEntitiesByNativeSQL(
//				"SELECT * FROM shop_javaweb23.tbl_saleorder_products ORDER BY `created_date` DESC");
//		model.addAttribute("saleOrderProducts", saleOrderProducts);
		
//		List<Product> products = productService.getEntitiesByNativeSQL(
//				"SELECT * FROM shop_javaweb23.tbl_products ORDER BY `created_date` DESC");
//		model.addAttribute("products", products);
//		đường dẫn tới view
		return "administrator/order";
	}
	@RequestMapping(value = { "/admin/order/{saleOrderId}" }, method = RequestMethod.GET)
	public String orderDetail(final Model model, 
			final HttpServletRequest request, 
			final HttpServletResponse response,
			@PathVariable("saleOrderId") Integer saleOrderId) 
					throws IOException{
		
		SaleOrder saleOrder = saleOrderService.getById(saleOrderId);
		model.addAttribute("saleOrder", saleOrder);
//		đường dẫn tới view
		return "administrator/orderDetail";
	}
}
