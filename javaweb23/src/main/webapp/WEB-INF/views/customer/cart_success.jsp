<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- taglib JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- taglib SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="${base}/css/home.css">
    <script src="${base}/js/jquery-3.6.1.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script src="${base}/js/home.js"></script>
    <link rel="stylesheet" href="${base}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${base}/css/owl.theme.default.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />


<style>
.cartsuccesscard h1 {
	color: #88B04B;
	font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
	font-weight: 900;
	font-size: 40px;
	margin-bottom: 10px;
}

.cartsuccesscard p {
	color: #404F5E;
	font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
	font-size: 20px;
	margin: 0;
}

.cartsuccesscard i {
	color: #9ABC66;
	font-size: 100px;
	line-height: 200px;
	margin-left: -15px;
}

.cartsuccesscard {
	background: white;
	padding: 60px;
	border-radius: 4px;
	box-shadow: 0 2px 3px #C8D0D8;
	display: inline-block;
	margin: 0 auto;
}
</style>

</head>

<body style="text-align: center; background: #EBF0F5;">

	<div class="container">
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
					<i class="fa-solid fa-cart-shopping" style="font-size: 20px;"></i>
					<a>giỏ hàng</a>
				</div>
			</div>
		</header>
		<!-- /header -->
		<!-- menu -->
		<nav>
			<div class="row">
				<div class="col-9 line-menu">
					<div class="row">
						<div class="col-3 menu-product">
							<a>danh mục sản phẩm</a>
						</div>
						<div class="col-9 menu">
							<ul>
								<li><a href="${base }/home"
									style="text-decoration: none; color: #ffffff">Trang chủ</a></li>
								<li><a>Sản phẩm</a></li>
								<li><a>Tin tức - Sự kiện</a></li>
								<li><a>Hỏi đáp</a></li>
								<li><a style="border: none;">Liên hệ</a></li>
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
		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">

				<div class="cartsuccesscard">
					<div
						style="border-radius: 200px; height: 200px; width: 200px; background: #F8FAF5; margin: 0 auto;">
						<i class="checkmark">✓</i>
					</div>
					<h1>Success</h1>
					<p>
						We received your purchase request;<br /> we'll be in touch
						shortly!
					</p>
				</div>
			</div>


		</section>
		<div class="footer">
            <div class="row">
                <div class="col-4">
                    <div class="help">
                        <div class="title">trợ giúp</div>
                        <a>Cách thức thanh toán</a>
                        <br>
                        <a>Chính sách đổi trả</a>
                        <br>
                        <a>Chính sách giao hàng</a>
                        <br>
                        <a>Techshop membership</a>
                        <br>
                        <a>Điều khoản trả góp</a>
                    </div>

                </div>
                <div class="col-4 introduce">
                    <div class="title">giới thiệu</div>
                    <a>Quy chế hoạt động</a>
                    <br>
                    <a>Chính sách bảo mật</a>
                    <br>
                    <a>Hệ thống cửa hàng</a>
                    <br>
                    <a>Chế độ bảo hành</a>
                    <br>
                    <a>Về chúng tôi</a>
                </div>
                <div class="col-4 my-company">
                    <div class="title">công ty cổ phần công nghệ techshop</div>
                    <div class="location">
                        <a id="department">trụ sở hà nội</a>
                        <br>
                        <a>Số 2 ngõ 25 phường Mai Dịch, quận Cầu Giấy, tp.Hà Nội</a>
                        <br>
                        <a>Điện thoại: (024) 1234 5678</a>
                    </div>
                    <div class="location">
                        <a id="department">chi nhánh hcm</a>
                        <br>
                        <a>Số 5 phường Dakao, quận 1, tp.Hồ Chí Minh</a>
                        <br>
                        <a>Điện thoại: (028) 1234 5678</a>
                    </div>
                    <div class="contact" style="padding-top: 10px;">
                        <a id="department">chăm sóc khách hàng</a>
                        <br>
                        <a>Điện thoại: 1900 5353</a>
                        <br>
                        <a>Email: techshopvn@gmail.com.vn</a>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <a>
                © 2007 - 2022 Công Ty Cổ Phần Công Nghệ Techshop /
                Địa chỉ: Số 2 ngõ 25 Mai Dịch, Cầu Giấy, tp.Hà Nội /
                GPĐKKD số 0311609355 do Sở KHĐT TP.HN cấp ngày 08/03/2012.
                GP số 47/GP-TTĐT do sở TTTT TP HN cấp ngày 02/07/2018.
            </a>
            <a>
                Điện thoại: (028)12345678./
                Email:techshop@gmail.com.vn./
                Chịu trách nhiệm nội dung: Nguyễn Đắc Duy.
            </a>
        </footer>
	</div>

</body>
</html>
