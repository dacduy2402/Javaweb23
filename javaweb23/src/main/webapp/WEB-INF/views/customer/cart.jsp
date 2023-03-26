<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <link rel="stylesheet" href="${base}/css/cart.css">
    <script src="${base}/js/jquery-3.6.1.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script src="${base}/js/home.js"></script>
    <link rel="stylesheet" href="${base}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${base}/css/owl.theme.default.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
     
</head>

<body id="top">

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
                                <li><a href="${base }/home" style="text-decoration: none; color: #ffffff">Trang chủ</a></li>
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
        <!-- main -->
        <div class="row">
            <div class="col-12 main">
                <!-- Section-->
                <section class="py-5">
                    <div class="box">

                        <!-- Danh sách sản phẩm trong giỏ hàng -->
                        <div class="table-responsive">
                            <table class="table" >
                                <thead>
                                    <tr>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="p-2 px-3 text-uppercase">Product</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Price</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Quantity</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Remove</div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <!-- hiển thị danh sách sản phẩm trong giỏ hàng -->
                                    <c:forEach items="${cart.cartItems }" var="ci"> 
                                    <tr>
                                        <th scope="row" class="border-0">
                                            <div class="p-2">
                                                <img src="${base }/upload/${ci.productAvt}"
                                                    alt="" width="70" class="img-fluid rounded shadow-sm">
                                                <div class="ml-3 d-inline-block align-middle">
                                                    <h5 class="mb-0">
                                                        <a href="#" class="product_name" style="font-size: 17px; text-decoration: none; color: black">
                                                            <b>${ci.productName }</b>
                                                        </a>
                                                    </h5>
                                                    <%-- <span
                                                        class="category" style="font-size: 13px; font-weight: none !important">Category:
                                                        ${ci.category }</span> --%>
                                                </div>
                                            </div>
                                        </th>
                                        <td class="border-0 align-middle">
                                            <fmt:setLocale value="vi_VN" />
                                            <strong>
                                                <fmt:formatNumber value="${ci.priceUnit*ci.quantity}" type="currency" />
                                            </strong>
                                        </td>
                                        <td class="border-0 align-middle">
                                            <button onclick="updateQuanlityCart('${base }', ${ci.productId}, -1)" value="-">-</button>
                                            <strong><span id="quantity${ci.productId }">${ci.quantity }</span></strong>
                                            <button onclick="updateQuanlityCart('${base }', ${ci.productId}, +1)" value="+">+</button>
                                        </td>
                                        <td class="border-0 align-middle">
                                            <a href="#" class="text-dark" id="delete" onclick="deleteItem('${base }', ${ci.productId})"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>

                        <!-- form cho việc thanh toán -->
                        <form action="" method="post">

                            <div class="row py-5 p-4 bg-white rounded shadow-sm">
                                <div class="col-lg-5">
                                    <!-- <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
						<div class="p-4">
							<p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
							<div class="input-group mb-4 border rounded-pill p-2">
								<input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
								<div class="input-group-append border-0">
									<button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill">
										<i class="fa fa-gift mr-2"></i>Apply coupon
									</button>
								</div>
							</div>
						</div> -->
                                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thông
                                        tin khách hàng</div>
                                    <div class="p-4">

                             <c:choose>
								<c:when test="${isLogined }">
                                        <div class="form-group" style="margin-bottom: 10px;">
                                            <label for="customerPhone">Họ và tên khách hàng</label>
                                            <input type="text" class="form-control" id="customerFullName"
                                                name="customerFullName" placeholder="Full name"
                                                style="margin-top: 5px;" value="${userLogined.username}">
                                        </div>
                                        <div class="form-group" style="margin-bottom: 10px;">
                                            <label for="customerEmail">Địa chỉ Email</label>
                                            <input type="email" class="form-control" id="customerEmail"
                                                name="customerEmail" placeholder="Enter email" style="margin-top: 5px;"
                                                value="${userLogined.email}">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your
                                                email with anyone else.</small>
                                        </div>
                                        <div class="form-group" style="margin-bottom: 10px;">
                                            <label for="customerPhone">Phone</label>
                                            <input type="tel" class="form-control" id="customerPhone"
                                                name="customerPhone" placeholder="Phone" style="margin-top: 5px;">
                                        </div>
                                        <div class="form-group" style="margin-bottom: 10px;">
                                            <label for="customerAddress">Địa chỉ giao hàng</label>
                                            <input type="text" class="form-control" id="customerAddress"
                                                name="customerAddress" placeholder="Address" style="margin-top: 5px;">
                                        </div>
                                    </c:when>
								<c:otherwise>
									<input type="text">
								</c:otherwise>
							</c:choose> 


                                    </div>
                                </div>
                                <div class="col-1"></div>
                                <div class="col-lg-5">
                                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thông
                                        tin thanh toán</div>
                                    <div class="p-4">
                                        <p class="font-italic mb-4">Shipping and additional costs are calculated based
                                            on values you have entered.</p>
                                        <ul class="list-unstyled mb-4">
                                            <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                                    class="text-muted">Order Subtotal </strong>
                                                    <strong> <fmt:formatNumber value="${tongGia}" type="currency" /></strong>
                                            </li>
                                            <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                                    class="text-muted">Shipping and
                                                    handling</strong>
                                                    <strong><fmt:formatNumber value="0" type="currency" /></strong>
                                             </li>
                                            <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                                    class="text-muted">Tax</strong>
                                                    <strong><fmt:formatNumber value="0" type="currency" /></strong>
                                             </li>
                                            <li class="d-flex justify-content-between py-3 border-bottom">
                                            	<strong class="text-muted">Total</strong>
                                                <h5 class="font-weight-bold totalPrice">
                                                	<fmt:formatNumber value="${tongGia}" type="currency" />
                                                </h5>
                                            </li>
                                        </ul>
                                        <button type="submit" class="btn btn-dark rounded-pill py-2 btn-block">Procceed
                                            to checkout</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
        <!-- /main -->
        
    </div>
    <script src="${base}/js/cart.js"></script>
</body>

</html>
