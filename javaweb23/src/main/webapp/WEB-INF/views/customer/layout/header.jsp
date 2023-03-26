<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <!-- import file jsp -->
    <%-- <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include> --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="${base }/css/home.css">
    <script src="${base }/js/jquery-3.6.1.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script src="${base }/js/home.js"></script>
    <link rel="stylesheet" href="${base }/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${base }/css/owl.theme.default.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <%-- <link href="${base }/css/styles.css" rel>  --%>
</head>
<body>
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
                    <input type="text" placeholder="Tìm kiếm sản ">
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
                        <div class="col-xl-3 menu-product">
                            <a>danh sách sản phẩm</a>
                        </div>
                        <div class="col-xl-9 menu">
                            <ul>
                                <li><a>Trang chủ</a></li>
                                <li><a>Sản phẩm</li>
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
        </div>
