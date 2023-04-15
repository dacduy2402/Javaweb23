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
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Order Details</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
<link rel="stylesheet" href="${base}/css/orderDetail.css" />
<!-- summernote -->
<link href="${base}/css/summernote-bs4.min.css" rel="stylesheet" />
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" /> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous" />
<!-- include libraries(jQuery, bootstrap) -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>

</head>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-2 left">
				<div class="top">
					<div class="logo">
						<a>techshop</a>
						<div class="logo-icons">
							<i class="fa-brands fa-opencart" style="padding-left: 10px"></i>
						</div>
					</div>
				</div>
				<div class="sidebar">
					<ul>
						<li><a href="#"> <span class="material-symbols-sharp">dashboard</span>
								<h3>Dashboard</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">person_outline</span>
								<h3>Customer</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">receipt_long</span>
								<h3>Order</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">insights</span>
								<h3>Analytics</h3>
						</a></li>
						<li><a href="${Base }/admin/message"> <span
								class="material-symbols-sharp">mail_outline</span>
								<h3>Message</h3>
						</a></li>
						<li><a href="${Base}/admin/product/list"> <span
								class="material-symbols-sharp">inventory</span>
								<h3>Products</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">report_gmailerrorred</span>
								<h3>Reports</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">settings</span>
								<h3>Setting</h3>
						</a></li>
						<li id="default"><a href="#"> <span
								class="material-symbols-sharp">add</span>
								<h3>Add Product</h3>
						</a></li>
						<li><a href="${base }/login" style=""> <span
								class="material-symbols-sharp">logout</span>
								<h3>
									Log out <br>(${userLogined.email })
								</h3>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 center">
				<div class="top">
					<h1>Order Details</h1>
				</div>
				<div class="info-order">
					<div class="info">
						<div class="item">
							<label for=""><b>Id:</b></label>
						</div>
						<div class="info-item">${saleOrder.id }</div>
					</div>
					<div class="info">
						<div class="item">
							<label for=""><b>Code:</b></label>
						</div>
						<div class="info-item">${saleOrder.code }</div>
					</div>
					<div class="info">
						<div class="item">
							<label for=""><b>Customer Name:</b></label>
						</div>
						<div class="info-item">${saleOrder.customerName }</div>
					</div>
					<div class="info">
						<div class="item">
							<label for=""><b>Customer Phone:</b></label>
						</div>
						<div class="info-item">${saleOrder.customerPhone }</div>
					</div>
					<div class="info">
						<div class="item">
							<label for=""><b>Customer Email:</b></label>
						</div>
						<div class="info-item">${saleOrder.customerEmail }</div>
					</div>
					<div class="info">
						<div class="item">
							<label for=""><b>Customer Address</b></label>
						</div>
						<div class="info-item">${saleOrder.customerAddress }</div>
					</div>
					<div class="info">
						<div class="item">
							<label for=""><b>Product</b></label>
						</div>
						<div class="info-item">
							<c:forEach items="${saleOrder.saleOrderProducts}"
								var="saleOrderProduct">
								<div class="productName" style="padding-left: 25px;">
									${saleOrderProduct.product.nameProduct }</div>
								<div class="productQuantity" style="padding-left: 25px; padding-bottom: 10px">- Số lượng: ${saleOrderProduct.quality}</div>

							</c:forEach>
						</div>
					</div>
					<div class="info">
						<div class="item">
							<label for=""><b>Created Date:</b></label>
						</div>
						<div class="info-item">${saleOrder.createdDate }</div>
					</div>
				</div>
			</div>
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-3 right">
				<div class="top">
					<div class="user">
						<div class="avatar">
							<span class="material-symbols-sharp">account_circle</span>
						</div>
						<div class="info">
							<a id="name" style="font-size: 15px; line-height: 15px;">Dac
								Duy</a> <a id="Position" style="font-size: 12px; line-height: 12px;">Admin</a>
						</div>
						<div class="more">
							<a href="#" style="color: black;"><span
								class="material-symbols-sharp">expand_more</span></a>
							<div class="sub_menu">
								<ul>
									<li style="display: flex; align-items: center;"><a>Password</a>
										<span class="material-symbols-sharp">chevron_right</span></li>
									<li style="display: flex; align-items: center;"><a>Switch</a>
										<span class="material-symbols-sharp">chevron_right</span></li>
									<li style="display: flex; align-items: center;"><a>Log
											out</a> <span class="material-symbols-sharp"
										style="font-size: 15px;">logout</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="notify">
					<div class="title">
						<h5>Recent Updates</h5>
					</div>
					<div class="box">
						<div class="box-sub">
							<div class="avt1">
								<img src="${base}/images/avt1.jpg" alt="">
							</div>
							<div class="notify-content">
								<div class="content">
									<a><b>Darkz</b> received his order of Iphone 14 Pro 256GB</a>
								</div>
								<div class="time">
									<a>2 minutes ago</a>
								</div>
							</div>
						</div>
						<div class="box-sub">
							<div class="avt1">
								<img src="${base}/images/avt1.jpg" alt="">
							</div>
							<div class="notify-content">
								<div class="content">
									<a><b>Neymar</b> declined his order of MacBook Pro M1</a>
								</div>
								<div class="time">
									<a>5 minutes ago</a>
								</div>
							</div>
						</div>
						<div class="box-sub">
							<div class="avt1">
								<img src="${base}/images/avt1.jpg" alt="">
							</div>
							<div class="notify-content">
								<div class="content">
									<a><b>Jack</b> received his order of Samsung Galaxy S22
										Ultra</a>
								</div>
								<div class="time">
									<a>6 minutes ago</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sale-analytics">
					<div class="title">
						<h5>Sales Analytics</h5>
					</div>
					<div class="box1">
						<div class="icon1">
							<span class="material-symbols-sharp">shopping_cart</span>
						</div>
						<div class="info">
							<div class="info1">
								<div class="line1">
									<a><b>ONLINE ORDERS</b></a> <a id="increase">+39%</a> <a><b>3849</b></a>
								</div>
								<div class="time">Last 24 hours</div>
							</div>
						</div>
					</div>
					<div class="box1">
						<div class="icon2">
							<span class="material-symbols-sharp">local_mall</span>
						</div>
						<div class="info">
							<div class="info1">
								<div class="line1">
									<a><b>OFFLINE ORDERS</b></a> <a id="decrease">-17%</a> <a><b>1100</b></a>
								</div>
								<div class="time">Last 24 hours</div>
							</div>
						</div>
					</div>
					<div class="box1">
						<div class="icon3">
							<span class="material-symbols-sharp">group</span>
						</div>
						<div class="info">
							<div class="info1">
								<div class="line1">
									<a><b>NEW CUSTOMER</b></a> <a id="increase">+25%</a> <a><b>849</b></a>
								</div>
								<div class="time">Last 24 hours</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- summernote-->
	<script src="${base}/js/summernote.js"></script>
	<!-- sumernote basic -->
	<!-- <script type="text/javascript">
			$(document).ready(function() {
				$('#idDescription').summernote();
			});
		</script>  -->
</body>

</html>