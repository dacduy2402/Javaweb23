package com.devpro.javaweb23.controller.customer;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.dto.Cart;
import com.devpro.javaweb23.dto.CartItem;
import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.SaleOrder;
import com.devpro.javaweb23.model.SaleOrderProducts;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;
import com.devpro.javaweb23.services.impl.SaleOrderService;

@Controller
public class CartController extends BaseController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private SaleOrderService saleOrderService;
	
	@RequestMapping(value = {"/cart/checkout"}, method = RequestMethod.GET)
	public String cartCheckout(final Model model,
								final HttpServletRequest request,
								final HttpServletResponse response)
	{
		return "customer/cart";
		
	}
	
	// tạo hóa đơn
		@RequestMapping(value = { "/cart/checkout" }, method = RequestMethod.POST)
		public String cartFinished(final Model model, 
							   		final HttpServletRequest request, 
						   			final HttpServletResponse response) throws IOException {
			
			// Lấy thông tin khách hàng
			String customerFullName = request.getParameter("customerFullName");
			String customerEmail 	= request.getParameter("customerEmail");
			String customerPhone 	= request.getParameter("customerPhone");
			String customerAddress 	= request.getParameter("customerAddress");

			// tạo hóa đơn + với thông tin khách hàng lấy được
			SaleOrder saleOrder = new SaleOrder();
			saleOrder.setCustomerName(customerFullName);
			saleOrder.setCustomerEmail(customerEmail);
			saleOrder.setCustomerAddress(customerAddress);
			saleOrder.setCustomerPhone(customerPhone);	
			saleOrder.setCode(String.valueOf(System.currentTimeMillis())); // mã hóa đơn: HD20230314
		
			// lấy giỏ hàng
			HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			
			// lấy sản phẩm trong giỏ hàng
			for (CartItem cartItem : cart.getCartItems()) {
				SaleOrderProducts saleOrderProducts = new SaleOrderProducts();
				saleOrderProducts.setProduct(productService.getById(cartItem.getProductId()));
				saleOrderProducts.setQuality(cartItem.getQuantity());

				// sử dụng hàm tiện ích add hoặc remove đới với các quan hệ onetomany
				saleOrder.addSaleOrderProducts(saleOrderProducts);
			}
			
			// lưu hóa đơn vào database
			saleOrderService.saveOrUpdate(saleOrder);
			// thực hiện reset lại giỏ hàng của Session hiện tại
			session.setAttribute("cart", null);
			session.setAttribute("totalItems", 0);
			
			return "customer/cart_success"; // -> đường dẫn tới View.
			
		}
		
		@RequestMapping(value = { "/ajax/addToCart" }, method = RequestMethod.POST)
		public ResponseEntity<Map<String, Object>> ajax_AddToCart(final Model model,
															       final HttpServletRequest request,
															       final HttpServletResponse response, 
															       final @RequestBody CartItem cartItem) {
			
			// để lấy session sử dụng thông qua request
			// session tương tự như kiểu Map và được lưu trên main memory.
			// mỗi trình duyệt sẽ có các session khác nhau
			HttpSession session = request.getSession();

			// Lấy thông tin giỏ hàng. Đầu tiên giả sử giỏ hàng là null(chưa có giỏ hàng)
			Cart cart = null;
			
			// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
			if (session.getAttribute("cart") != null) { // tồn tại 1 giỏ hàng trên session
				cart = (Cart) session.getAttribute("cart");
			} else {// chưa có giỏ hàng nào trên session
				cart = new Cart(); //khởi tạo giỏ hàng mới
				session.setAttribute("cart", cart);
			}

			// Lấy danh sách sản phẩm đang có trong giỏ hàng
			List<CartItem> cartItems = cart.getCartItems();

			// kiểm tra nếu sản phẩm muốn bổ sùng vào giỏ hàng có trong giỏ hàng nếu có thì tăng số lượng
			boolean isExists = false;
			for (CartItem item : cartItems) {
				if (item.getProductId() == cartItem.getProductId()) {
					isExists = true;
					// tăng số lượng sản phẩm lên
					item.setQuantity(item.getQuantity() + cartItem.getQuantity());
				}
			}

			// nếu sản phẩm chưa có trong giỏ hàng thì thực hiện add sản phẩm đó vào giỏ hàng
			if (!isExists) {
				// trước khi thêm mới thì lấy sản phẩm trong db
				// và thiết lập tên + đơn giá cho cartitem
				Product productInDb = productService.getById(cartItem.getProductId());
//				Categories categoriesInDb = categoriesService.getById(cartItem.getCategoryId());
				cartItem.setProductName(productInDb.getNameProduct());
//				cartItem.setCategory(categoriesInDb.getName());
				cartItem.setProductAvt(productInDb.getAvtProduct());
				cartItem.setPriceUnit(productInDb.getPriceSale());

				cart.getCartItems().add(cartItem); // thêm mới sản phẩm vào giỏ hàng
			}

			// tính tổng tiền
//			this.calculateTotalPrice(request);
			
			// trả về kết quả
			Map<String, Object> jsonResult = new HashMap<String, Object>();
			jsonResult.put("code", 200);
			jsonResult.put("status", "TC");
			jsonResult.put("totalItems", getTotalItems(request));
			
			// lưu totalItems vào session
			// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
			session.setAttribute("TongSoLuongSanPhamTrongGioHang", getTotalItems(request));
			// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
			session.setAttribute("tongGia", getTotalPrice(request));
			
			return ResponseEntity.ok(jsonResult);
		}
		
		private int getTotalItems(final HttpServletRequest request) {
			HttpSession httpSession = request.getSession();

			if (httpSession.getAttribute("cart") == null) {
				return 0;
			}

			Cart cart = (Cart) httpSession.getAttribute("cart");
			List<CartItem> cartItems = cart.getCartItems();

			int total = 0;
			for (CartItem item : cartItems) {
				total += item.getQuantity();
			}

			return total;
		}
		private BigDecimal getTotalPrice(final HttpServletRequest request) {
			HttpSession httpSession = request.getSession();
			
			if (httpSession.getAttribute("cart") == null) {
				return BigDecimal.ZERO;
			}
			
			Cart cart = (Cart) httpSession.getAttribute("cart");
			List<CartItem> cartItems = cart.getCartItems();
			
			BigDecimal total = BigDecimal.ZERO;
			for (CartItem item : cartItems) {
				 total=total.add(item.getPriceUnit().multiply(new BigDecimal(item.getQuantity()))) ;
			}
			
			return total;
		}
	
	@RequestMapping(value = { "/ajax/changeQuantity" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_changeQuantity(final Model model,
														       final HttpServletRequest request,
														       final HttpServletResponse response, 
														       final @RequestBody CartItem cartItem) 
	{
		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		// mỗi trình duyệt sẽ có các session khác nhau
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng. Đầu tiên giả sử giỏ hàng là null(chưa có giỏ hàng)
		Cart cart = null;
		
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) { // tồn tại 1 giỏ hàng trên session
			cart = (Cart) session.getAttribute("cart");
		} else {// chưa có giỏ hàng nào trên session
			cart = new Cart(); //khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}
		
		// Lấy danh sách sản phẩm đang có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();
		
//		System.err.println(cartItem.getProductId());
//		cartItems.forEach(System.err::print);
//		System.err.println();
		
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				// tăng số lượng sản phẩm lên
				item.setQuantity(item.getQuantity() + cartItem.getQuantity());
				
				break;
			}
		}
//		// tính tổng tiền
//		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		// lưu totalItems vào session
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("cartItem.quantity", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("TongSoLuongSanPhamTrongGioHang", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("tongGia", getTotalPrice(request));
//		for (CartItem item : cartItems) {
//			if (item.getQuantity() >= 0) {
//				// tăng số lượng sản phẩm lên
//				item.setQuantity(item.getQuantity() + cartItem.getQuantity());
//				
//				break;
//			}
//		}
		return ResponseEntity.ok(jsonResult);
		
	}
	@RequestMapping(value = { "/ajax/deleteItems" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_deleteItems(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response, 
			final @RequestBody CartItem cartItem) 
	{
		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		// mỗi trình duyệt sẽ có các session khác nhau
		HttpSession session = request.getSession();
		
		// Lấy thông tin giỏ hàng. Đầu tiên giả sử giỏ hàng là null(chưa có giỏ hàng)
		Cart cart = new Cart();
		
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) { // tồn tại 1 giỏ hàng trên session
			cart = (Cart) session.getAttribute("cart");
		} else {// chưa có giỏ hàng nào trên session
			cart = new Cart(); //khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}
		
		// Lấy danh sách sản phẩm đang có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();
		
//		System.err.println(cartItem.getProductId());
//		cartItems.forEach(System.err::print);
//		System.err.println();
		
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				// xoa sp trong cart
				System.out.println("quantity: "+cartItem.getQuantity());
				cartItems.remove(item);
				break;
			}
		}
	
//		// tính tổng tiền
//		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		// lưu totalItems vào session
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("cartItem.quantity", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("TongSoLuongSanPhamTrongGioHang", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("tongGia", getTotalPrice(request));
		return ResponseEntity.ok(jsonResult);
	}
	
}

