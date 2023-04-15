<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List Products</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<link rel="stylesheet" href="${base }/css/list-product.css">
<script src="${base }/js/jquery-3.6.1.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<link rel="stylesheet" href="${base }/css/owl.carousel.min.css">
<link rel="stylesheet" href="${base }/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${Base}/css/simplePagination.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>

<body id="top">
	<div class=" container">
		<!-- header -->
		<header>
			<div class="row">
				<div class="col-3 logo">
					<a>techshop</a>
					<div class="logo-icons">
						<i class="fa-brands fa-opencart" style="padding-left: 10px;"></i>
					</div>
				</div>
				<div class="col-7 search">
					<input type="text" placeholder="Tìm kiếm sản phẩm">
					<div class="search-button">
						<i class="fa-solid fa-magnifying-glass"></i>
					</div>
				</div>
				<div class="col-2 cart" >
					<a href="${base}/cart/checkout" style="text-decoration: none; color: black">
					<i class="fa-solid fa-cart-shopping" style="font-size: 17px;"></i>giỏ hàng</a>
					<div id="soluongsanphamtronggiohang" 
					style="width: 20px; height: 20px; border-radius: 10px; background: #363535; 
					color: #ffffff; display:flex; justify-content: center; align-items: center;
					font-size: 12px; ; margin: 0px 0px 3px 5px">
					${TongSoLuongSanPhamTrongGioHang }
				</div>
			</div>
		</header>
		<!-- /header -->
		<!-- menu -->
		<nav>
			<div class="row">
				<div class="col-9 line-menu">
					<div class="row">
						<div class="col-xl-3 menu-product">
							<a>danh mục sản phẩm</a>
						</div>
						<div class="col-xl-9 menu">
							<ul>
								<li><a href="${base}/home"
									style="color: #ffffff; text-decoration: none;">Trang chủ</a></li>
								<li><a href="${Base }/list-product" style="color: #ffffff; text-decoration: none;">Sản phẩm</a></li>
								<li><a>Tin tức - Sự kiện</a></li>
								<li><a>Hỏi đáp</a></li>
								<li><a href="${Base }/contact" style="color: #ffffff; text-decoration: none; border: none;">Liên hệ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-3 time">
					<a id="time"></a>
				</div>
			</div>
		</nav>
		<!-- /menu -->
		<!-- main -->
		<div class="main">
			<div class="row">
				<div class="col-12">
					<div class="path">
						<a href="${base }/home" style="text-decoration: none;">Trang chủ</a>
						<a style="padding: 0px 5px; color: rgba(45, 43, 43, 0.7);"> <i
							class="fa-solid fa-angle-right"></i></a> <a
							style="color: rgba(45, 43, 43, 0.7);">Danh mục sản phẩm</a>
						<a style="padding: 0px 5px; color: rgba(45, 43, 43, 0.7);"> <i
							class="fa-solid fa-angle-right"></i></a> <a
							style="color: rgba(45, 43, 43, 0.7);">Laptop</a>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- center -->
				<div class="col-12 center">
					<div class="owl-carousel owl-theme">
						<div class="item">
							<img src="./images/slide1.jpg" alt="">
						</div>
						<div class="item">
							<img src="./images/slide2.jpg" alt="">
						</div>
						<div class="item">
							<img src="./images/slide3.jpg" alt="">
						</div>
						<div class="item">
							<img src="./images/slide4.jpg" alt="">
						</div>
						<div class="item">
							<img src="./images/slide5.jpg" alt="">
						</div>
						<div class="item">
							<img src="./images/slide6.jpg" alt="">
						</div>
					</div>
				</div>
				<!-- /center -->
			</div>
			<div class="row">
				<!-- left -->
				<div class="col-3 left">
					<div class="row">
						<div class="col-12">
							<!-- hãng sản xuất -->
							<div class="checkbox">
								<div class="title" style="padding: 0px;">
									<a>Hãng sản xuất</a>
								</div>
								<div class="choose">
									<ul>
										<li><input type="checkbox"> <label for=""><a>Tất
													cả</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Apple</a></label>
										</li>
										<li><input type="checkbox"> <label for=""><a>Samsung</a></label>
										</li>
										<li><input type="checkbox"> <label for=""><a>Xiaomi</a></label>
										</li>
										<li><input type="checkbox"> <label for=""><a>Oppo</a></label>
										</li>
										<li><input type="checkbox"> <label for=""><a>Vivo</a></label>
										</li>
										<li><input type="checkbox"> <label for=""><a>Huawei</a></label>
										</li>
										<li><input type="checkbox"> <label for=""><a>Nokia</a></label>
										</li>
									</ul>
								</div>
							</div>
							<!-- /hãng sản xuất -->
							<!-- Mức giá -->
							<div class="checkbox">
								<div class="title">
									<a>Mức giá</a>
								</div>
								<div class="choose">
									<ul>
										<li><input type="checkbox"> <label for=""><a>Tất
													cả</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Dưới
													2 triệu</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													2 - 4 triệu</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													4 - 7 triệu</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													7 - 10 triệu</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													10 - 15 triệu</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Trên
													15 triệu</a></label></li>
									</ul>
								</div>
							</div>
							<!-- Mức giá -->
							<!-- Ram -->
							<div class="checkbox">
								<div class="title">
									<a>Ram</a>
								</div>
								<div class="choose">
									<ul>
										<li><input type="checkbox"> <label for=""><a>Tất
													cả</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Dưới
													2 GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													2 - 4 GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													4 - 8 GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													8 - 16 GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Từ
													16 - 32 GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Trên
													32 GB</a></label></li>
									</ul>
								</div>
							</div>
							<!-- /Ram -->
							<!-- Bộ nhớ -->
							<div class="checkbox">
								<div class="title">
									<a>Bộ nhớ</a>
								</div>
								<div class="choose">
									<ul>
										<li><input type="checkbox"> <label for=""><a>Tất
													cả</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Dưới
													32 GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>64
													GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>128
													GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>256
													GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>512
													GB</a></label></li>
										<li><input type="checkbox"> <label for=""><a>Trên
													1 TB</a></label></li>
									</ul>
								</div>
							</div>
							<!-- /Bộ nhớ -->
						</div>
					</div>
				</div>
				<!-- /left -->
				<!-- list-product -->
				<div class="col-9 list-product">
					<div class="title">
						<div class="icon">
							<i class="fa-solid fa-laptop"></i>
						</div>
						<a>laptop</a>
					</div>
					<form action="${base }/list-product/phones" method="get">
						<div class="col-7 search">
							<!-- số trang sản phẩm -->
							<input id="page" name="page" class="form-control"
								value="${productSearch.page }" style="margin-right: 5px;">
							<!-- Tim kiem theo ten -->
							<input type="search" id="keyword" name="keyword"
								class="form-control" placeholder="Search"
								value="${productSearch.keyword }" autocomplete="off">
							<%-- <!-- Tim kiem theo category -->
							<select class="form-control" name="categoryId" id="categoryId"
								style="margin: 0px 5px; width: 100px">
								<option value="0">All</option>
								<c:forEach items="${categories}" var="category">
									<option value="${category.id }">${category.name }</option>
								</c:forEach>
							</select> --%>
							<button type="submit" id="btnSearch" name="btnSearch">Search</button>
						</div>
					</form>
					<div class="products-box">
						<div class="row">
							<c:forEach var="product" items="${products.data }">
								<div class="col-4 product1">
									<div class="product2">
										<div class="product-img">
											<img style="width: 160px;" class="col-12"
												src="${base }/upload/${product.avtProduct}">
											<!-- <div class="hot">HOT</div> -->
											<div class="installment">
												<a>Trả góp 0%</a>
											</div>
										</div>
										<div class="col-12 info-product">
											<a id="name-product" href="${base}/product/detail/${product.seo}">${product.nameProduct}</a>
											<hr>
											<div class="col-12 footer_box" style="padding: 0px 10px">
												<div class="row">
													<div class="col-6 price">
														<span class="cost"> <!-- định dạng tiền tệ --> <fmt:setLocale
																value="vi_VN" scope="session" /> <fmt:formatNumber
																value="${product.priceSale}" type="currency" />
														</span>
														<!-- <span class="discount">-6%</span>  -->
														<br> <span class="old_cost"> <!-- định dạng tiền tệ -->
															<fmt:setLocale value="vi_VN" scope="session" /> <fmt:formatNumber
																value="${product.price }" type="currency" />
														</span>
													</div>
													<div class="col-6 btn-add-to-cart" style="border: 0">
														<button type="submit" id="add-to-cart"
															style="background: #aae660; border: 0"
															onclick="AddToCart('${base}',${product.id}, 1)">
															<i class="fa-solid fa-cart-plus"></i>Add to cart
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<!-- phân trang -->
					<div class="row">
						<div class="col-12 d-flex justify-content-center">
							<div id="paging"></div>
						</div>
					</div>
						</div>
						
					</div>
				</div>
				<!-- <div class="row">
					<div class="col-lg-12">
						<div class="see-more">
							<input type="button" value="Xem thêm">
						</div>
					</div>
				</div>
				
 				<!-- /list-product -->
			</div>
		</div>
	</div>
	<!-- /main -->
	<div class="footer">
		<div class="row">
			<div class="col-4">
				<div class="help">
					<div class="title">trợ giúp</div>
					<a>Cách thức thanh toán</a> <br> <a>Chính sách đổi trả</a> <br>
					<a>Chính sách giao hàng</a> <br> <a>Techshop membership</a> <br>
					<a>Điều khoản trả góp</a>
				</div>

			</div>
			<div class="col-4 introduce">
				<div class="title">giới thiệu</div>
				<a>Quy chế hoạt động</a> <br> <a>Chính sách bảo mật</a> <br>
				<a>Hệ thống cửa hàng</a> <br> <a>Chế độ bảo hành</a> <br>
				<a>Về chúng tôi</a>
			</div>
			<div class="col-4 my-company">
				<div class="title">công ty cổ phần công nghệ techshop</div>
				<div class="location">
					<a id="department">trụ sở hà nội</a> <br> <a>Số 2 ngõ 25
						phường Mai Dịch, quận Cầu Giấy, tp.Hà Nội</a> <br> <a>Điện
						thoại: (024) 1234 5678</a>
				</div>
				<div class="location">
					<a id="department">chi nhánh hcm</a> <br> <a>Số 5 phường
						Dakao, quận 1, tp.Hồ Chí Minh</a> <br> <a>Điện thoại: (028)
						1234 5678</a>
				</div>
				<div class="contact" style="padding-top: 10px;">
					<a id="department">chăm sóc khách hàng</a> <br> <a>Điện
						thoại: 1900 5353</a> <br> <a>Email: techshopvn@gmail.com.vn</a>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<a> © 2007 - 2022 Công Ty Cổ Phần Công Nghệ Techshop / Địa chỉ: Số
			2 ngõ 25 Mai Dịch, Cầu Giấy, tp.Hà Nội / GPĐKKD số 0311609355 do Sở
			KHĐT TP.HN cấp ngày 08/03/2012. GP số 47/GP-TTĐT do sở TTTT TP HN cấp
			ngày 02/07/2018. </a> <a> Điện thoại: (028)12345678./
			Email:techshop@gmail.com.vn./ Chịu trách nhiệm nội dung: Nguyễn Đắc
			Duy. </a>
	</footer>
	<div class="croll-top">
		<a href="#top"><i class="fa-solid fa-up-long"></i></a>
	</div>
	<script src="${Base }/js/addToCard.js"></script>
	<script src="${base }/js/home.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- Paging -->
	<script src="${base}/js/jquery.simplePagination.js"></script>
	<script type="text/javascript">
			$( document ).ready(function() {
				// đặt giá trị của category ứng với điều kiện search trước đó
				$("#categoryId").val(${productSearch.categoryId});
				$("#paging").pagination({
					currentPage: ${products.currentPage}, 	//trang hiện tại
			        items: ${products.totalItems},			//tổng số sản phẩm
			        itemsOnPage: ${products.sizeOfPage}, 	//số sản phẩm trên 1 trang
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
		</script> 
		
		<script src="./js/owl.carousel.min.js"></script>
		
</body>
</html>