package com.devpro.javaweb23.controller.administrator;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.javaweb23.controller.customer.BaseController;
import com.devpro.javaweb23.dto.ProductSearch;
import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;



@Controller
public class AdminAddProductController extends BaseController{
	
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/admin/product/management" }, method = RequestMethod.GET)
	public String addOrUpdateView(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
						throws IOException{
//		Khởi tạo 1 product (entity) mới
		Product newProduct = new Product();
		model.addAttribute("product", newProduct);//đẩy data xuống view
		
//		AdminAddProductDTO adminAddProductDTO = new AdminAddProductDTO();
//		model.addAttribute("adminAddProductDTO", adminAddProductDTO);
		
//		Lấy ds categories trong db đẩy xuống view để hiển thị phần lựa chọn categoriey
//		khi thêm mới sản phẩm
		List<Categories> categories = categoriesService.getEntitiesByNativeSQL("SELECT * FROM shop_javaweb23.tbl_category");
		model.addAttribute("categories", categories);
//		đường dẫn tới view
		return "administrator/add-product";
	}
	@RequestMapping(value = { "/admin/product/management/{productId}" }, method = RequestMethod.GET)
	public String addOrUpdateView(final Model model, 
								final HttpServletRequest request, 
								final HttpServletResponse response,
								@PathVariable("productId") Integer productId) 
								throws IOException {
//Laays product trong db theo productId
		
		Product product = productService.getById(productId);
		model.addAttribute("product", product);// đẩy data xuống view
		
//		Lấy ds categories trong db đẩy xuống view để hiển thị phần lựa chọn categoriey
//		khi thêm mới sản phẩm
		List<Categories> categories = categoriesService.getEntitiesByNativeSQL("SELECT * FROM shop_javaweb23.tbl_category");
		model.addAttribute("categories", categories);
		
		return "administrator/add-product";
	}
	/*
	 * Do springform k hỗ trợ thẻ file nên phải sử dụng html input
	 * và sử dụng @RequestParam ("{name of input tag}")
	 */
	@RequestMapping(value = { "/admin/product/management/saveOrUpdate" }, method = RequestMethod.POST)
	public String addOrUpdateStore(final Model model, 
												final HttpServletRequest request, 
												final HttpServletResponse response,
												final @ModelAttribute("product") Product product,
												@RequestParam("productAvatar")MultipartFile productAvatar,
												@RequestParam("productPictures")MultipartFile[] productPictures)
												throws IOException {
//		System.out.println(product.getNameProduct() +" "+product.getCategories()+" "+product.getHotProduct()
//							+" "+product.getQuantity()+" "+product.getPrice()+" "+product.getPriceSale()
//							+" "+product.getAvtProduct()+" "+product.getDescribe());
		
		if(product.getId() == null || product.getId() <= 0) {
			productService.addProduct(product, productAvatar, productPictures);
		} else {
			productService.editProduct(product, productAvatar, productPictures);
		}
		
		return "redirect:/admin/product/list";
	}
	@RequestMapping(value = { "/admin/product/list" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response) throws IOException {
		
		// lấy keyword
		String keyword = request.getParameter("keyword");
		// lấy categoryId
		String categoryId = request.getParameter("categoryId");
		// lấy số page hiện tại
		String currentPage = request.getParameter("page");
		
		ProductSearch productSearch = new ProductSearch();
		productSearch.setKeyword(keyword);
		productSearch.setCategoryId(categoryId);
		productSearch.setCurrentPage(currentPage);
		productSearch.setProductsHot(null);
		productSearch.setStatus(null);
		
		// muốn giữ được các giá trị search trên màn hình
		// thì phải đẩy lại các dữ liệu nhập trước đó xuống view
		model.addAttribute("productSearch", productSearch);
		
		PagerData<Product> products = productService.searchProduct(productSearch);
		model.addAttribute("products", products);
		return "administrator/product_list";
		
	}
	@RequestMapping(value = {"/admin/product/delete"}, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteProduct(final Model model,
															final HttpServletRequest request,
															final HttpServletResponse response,
															final @RequestBody Product product) 
	{
		Product productInDb = productService.getById(product.getId());
		productInDb.setStatus(false);
		productService.saveOrUpdate(productInDb);
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Successfully Deleted!");
		return ResponseEntity.ok(jsonResult);
		
	}
	@RequestMapping(value = { "/admin-add-product-post" }, method = RequestMethod.POST)
	public String adminAddProductPost(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
//		Cách đọc dữ liệu từ form khi click submit button
//		Cách 1: 
		
		
//		đường dẫn tới view
		return "administrator/add-product";
	}
}
