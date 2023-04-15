<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
<title>Liên hệ</title>
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
				<div class="col-2 cart">
					<a href="${base}/cart/checkout"
						style="text-decoration: none; color: black"> <i
						class="fa-solid fa-cart-shopping" style="font-size: 17px;"></i>giỏ
						hàng
					</a>
					<div id="soluongsanphamtronggiohang"
						style="width: 20px; height: 20px; border-radius: 10px; background: #363535; color: #ffffff; display: flex; justify-content: center; align-items: center; font-size: 12px;; margin: 0px 0px 3px 5px">
						${TongSoLuongSanPhamTrongGioHang }</div>
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
						<a href="${base }/home" style="text-decoration: none;">Trang
							chủ</a> <a style="padding: 0px 5px; color: rgba(45, 43, 43, 0.7);">
							<i class="fa-solid fa-angle-right"></i>
						</a> <a style="color: rgba(45, 43, 43, 0.7);">Liên hệ</a>
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
		</div>
		<div class="row">
			<div class="col-12 contact" style="display:flex; justify-content:center; background: rgba(242, 235, 235, 0.975);">
				<div class="col-5 box-contact" style="border-radius: 10px; background: #ffffff; padding: 40px 40px 20px 40px; margin: 20px 0px">
					<div class="title-contact" style ="border-bottom: 3px solid black;">
						<h1>Contact us</h1>
					</div>
					<div class="form-contact" style="padding-top: 10px">
						<div class="name">
							<a>Hãy để lại Email, chúng tôi sẽ liên hệ bạn sớm nhất!</a>
						</div>
						<!-- cách 1: đơn giản  -->
						<%--   <div class="form">
                        <form action="${base }/contact-post" method="post">
                            <div class="item">
                                <label for="">Name</label>
                            </div>
                            <div class="input1">
                                <input type="text" class ="form-control" name="name" id="idName">
                            </div>
                            <div class="item">
                                <label for="">Email</label>
                            </div>
                            <div class="input1">
                                <input type="text">
                            </div>
                            <div class="item">
                                <label for="">Subject</label>
                            </div>
                            <div class="input1">
                                <input type="text">
                            </div>
                            <div class="item">
                                <label for="">Message</label>
                            </div>
                            <div class="input2">
                                <textarea name="" id="" cols="35" rows="4"></textarea>
                            </div>
                            <div class="btn">
                                <button type="submit">Submit</button>
                            </div>
                        </form> --%>
						<!--  cách 2: sử dụng taglib spring-form -->
						<div class="form">
							<sf:form modelAttribute="contactDTO"
								action="${base }/contact_post_using_spring_form" method="post">
								<div class="item">
									<label for="" style="padding: 10px 0px 0px 0px">Name</label>
								</div>
								<div class="input1">
									<sf:input path="name" type="text" class="form-control"
										name="name" id="idName"></sf:input>
								</div>
								<div class="item">
									<label for="" style="padding: 10px 0px 0px 0px">Email</label>
								</div>
								<div class="input1">
									<sf:input path="email" class="form-control" type="text"
										name="email" id="idEmail"></sf:input>
								</div>
								<div class="item">
									<label for="" style="padding: 10px 0px 0px 0px">Subject</label>
								</div>
								<div class="input1">
									<sf:input path="subject" class="form-control" type="text"
										name="subject" id="idSubject"></sf:input>
								</div>
								<div class="item">
									<label for="" style="padding: 10px 0px 0px 0px">Message</label>
								</div>
								<div class="input2">
									<sf:textarea path="message" class="form-control" name="message"
										id="idMessage" cols="35" rows="4"></sf:textarea>
								</div>
								<div class="btn" style="display: flex; justify-content: center; margin-top: 10px">
									<button type="submit" style="background-color: rgba(37, 35, 35, 0.794);
									 color: aliceblue; width: 100px; height: 40px;">Submit</button>
								</div>
							</sf:form>
							<!-- Cách 3: sử dụng Ajax -->
							<%--  <div class="form">
                        <form action="${base }/contact-post" method="post">
                            <div class="item">
                                <label for="">Name</label>
                            </div>
                            <div class="input1">
                                <input type="text" class ="form-control" name="name" id="idName">
                            </div>
                            <div class="item">
                                <label for="">Email</label>
                            </div>
                            <div class="input1">
                                <input class ="form-control" type="text" name="email" id="idEmail">
                            </div>
                            <div class="item">
                                <label for="">Subject</label>
                            </div>
                            <div class="input1">
                                <input class ="form-control" type="text" name="subject" id="idSubject">
                            </div>
                            <div class="item">
                                <label for="">Message</label>
                            </div>
                            <div class="input2">
                                <textarea class ="form-control" name="message" id="idMessage" cols="35" rows="4"></textarea>
                            </div>
                            <div class="btn">
                                <button type="button" onclick="PostContactUsingAjax('${Base}')">Button</button>
                            </div>
                        </form> --%>
						</div>
					</div>
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
			<a> © 2007 - 2022 Công Ty Cổ Phần Công Nghệ Techshop / Địa chỉ:
				Số 2 ngõ 25 Mai Dịch, Cầu Giấy, tp.Hà Nội / GPĐKKD số 0311609355 do
				Sở KHĐT TP.HN cấp ngày 08/03/2012. GP số 47/GP-TTĐT do sở TTTT TP HN
				cấp ngày 02/07/2018. </a> <a> Điện thoại: (028)12345678./
				Email:techshop@gmail.com.vn./ Chịu trách nhiệm nội dung: Nguyễn Đắc
				Duy. </a>
		</footer>
	</div>

	<script src="${Base }/js/addToCard.js"></script>
	<script src="${base }/js/home.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${Base }/js/owl.carousel.min.js"></script>

</body>
</html>