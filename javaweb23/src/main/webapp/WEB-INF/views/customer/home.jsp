<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Home</title>
    <!-- import file jsp -->
    <%-- <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include> --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="./css/home.css">
    <script src="./js/jquery-3.6.1.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script src="./js/home.js"></script>
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <%-- <link href="${base }/css/styles.css" rel>  --%>
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
        <div class="main">
            <div class="row">
                <!-- main-left -->
                <div class="col-9 main-left">
                    <div class="row">
                        <!-- left -->
                        <div class="col-3 left">
                            <div class="category">
                                <ul>
                                    <li>
                                        <i class="fa-solid fa-mobile-screen-button" style="padding: 0px 3px;"></i>
                                        <a href="${Base }/list-product" id="phone-product">Điện thoại</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-laptop"></i>
                                        <a>Laptop</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-computer"></i>
                                        <a>PC</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-tv"></i>
                                        <a>TV</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-print"></i>
                                        <a>Máy in</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-headphones"></i>
                                        <a>Phụ kiện</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-microchip"></i>
                                        <a>Linh kiện máy tính</a>
                                    </li>
                                    <!-- <li>
                                    <i class="fa-solid fa-chart-simple"></i>
                                    <a>Sáº£n pháº©m bÃ¡n cháº¡y</a>
                                </li> -->
                                    <li>
                                        <i class="fa-solid fa-caret-down" style="padding: 0px 3px;"></i>
                                        <a>Khác</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /left -->
                        <!-- center -->
                        <div class="col-9 center">
                            <div class="owl-carousel owl-theme">
                                <div class="item"><img src="./images/slide1.jpg" alt=""></div>
                                <div class="item"><img src="./images/slide2.jpg" alt=""></div>
                                <div class="item"><img src="./images/slide3.jpg" alt=""></div>
                                <div class="item"><img src="./images/slide4.jpg" alt=""></div>
                                <div class="item"><img src="./images/slide5.jpg" alt=""></div>
                                <div class="item"><img src="./images/slide6.jpg" alt=""></div>
                            </div>
                            <div class="sub">
                                <div class="sub1" id="sub_1">
                                    <a>IPhone 24 Pro Max ưu đãi đến 6 triệu</a>
                                </div>
                                <div class="sub1" id="sub_2">
                                    <a>Điện thoại Xiaomi ưu đãi đến 27%</a>
                                </div>
                                <div class="sub1" id="sub_3">
                                    <a>Galaxy Z Flip4 độc quyền giảm 5 triệu</a>
                                </div>
                                <div class="sub1" id="sub_4">
                                    <a>Oppo sale hết giảm đến 6 triệu</a>
                                </div>
                                <div class="sub1" id="sub_5">
                                    <a>Gia dụng giảm sốc đến 40%</a>
                                </div>
                                <div class="sub1" id="sub_6">
                                    <a>Combo phụ kiện giảm đến 41%</a>
                                </div>
                            </div>
                        </div>
                        <!-- /center -->
                    </div>
                </div>
                <!-- /main-left -->
                <!-- main-right -->
                <div class="col-3 right">
                    <div class="title-info">
                        <a style="font-weight: bold; color: #6c757d; font-size: 15px;">Thông tin nổi bật</a>
                        <a id="view-all">Xem tất cả</a>
                    </div>
                    <div class="info">
                        <div class="info1">
                            <div class="row">
                                <img src="./images/info-img1.jpg" alt="" class="col-xl-4 info-img">
                                <div class="col-xl-8 info-text">
                                    <a>Siêu sale cuối tuần giảm đến 40%</a>
                                </div>
                            </div>
                        </div>
                        <div class="info1">
                            <div class="row">
                                <img src="./images/info-img2.jpg" alt="" class="col-xl-4 info-img">
                                <div class="col-xl-8 info-text">
                                    <a>Siêu sale mừng đại lễ giảm đến 40%</a>             
                                </div>
                            </div>
                        </div>
                        <div class="info1">
                            <div class="row">
                                <img src="./images/info-img3.jpg" alt="" class="col-xl-4 info-img">
                                <div class="col-xl-8 info-text">
                                    <a>Tiệc giáng sinh giảm thêm đến 25%</a>
                                </div>
                            </div>
                        </div>
                        <div class="info1">
                            <div class="row">
                                <img src="./images/info-img4.jpg" alt="" class="col-xl-4 info-img">
                                <div class="col-xl-8 info-text">
                                    <a>Ngày như mơ giảm bất ngờ đến 25%</a>
                                </div>
                            </div>
                        </div>
                        <div class="info1">
                            <div class="row">
                                <img src="./images/info-img5.jpg" alt="" class="col-xl-4 info-img">
                                <div class="col-xl-8 info-text">
                                    <a>Ngày đẹp nhất giảm thật nhiều</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /main-right -->
            </div>
        </div>
        <!-- /main -->
        <!-- ads -->
        <div class="row">
            <div class="ads">
                <img src="./images/ads.jpg" alt="" class="col-12">
            </div>
        </div>
        <!-- /ads -->
        <!-- hot-sale -->
        <div class="products">
            <div class="row">
                <div class="col-11 title-products">
                    <i class="fa-brands fa-hotjar"></i>
                    <a>khuyến mãi hot</a>
                </div>
                <div class="col-1 view-all2"><a href="#">Xem tất cả</a></div>
            </div>
            <div class="products-box">
                <div class="row">
                    <div class="col-3 product1">
                <%-- <c:forEach var="employee" items="${employees }"> --%>
                        <div class="product2">
                            <div class="product-img">
                                <img style="width: 160px;" class="col-12" src="./images/ip14.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">IPhone 14 Pro 256GB</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">34.990.000<sup>đ</sup></span>
                                        <span class="discount">-6%</span>
                                        <br>
                                        <span class="old_cost">32.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- </c:forEach> --%>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/ss.jpg" alt="">
                                <!-- <div class="hot">HOT</div> -->
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Samsung Galaxy S22 Ultra 5G 128GB</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">30.990.000<sup>đ</sup></span>
                                        <span class="discount">-16%</span>
                                        <br>
                                        <span class="old_cost">25.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/g5.jpg" alt="">
                                <!-- <div class="hot">HOT</div> -->
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Laptop Gigabyte gaming G5 GE-51VN263SH i5 12500H</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">24.990.000<sup>đ</sup></span>
                                        <span class="discount">-8%</span>
                                        <br>
                                        <span class="old_cost">22.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/apple-watch.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Apple Watch SE GPS 40mm viền nhôm dây cao su</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">8.999.000<sup>đ</sup></span>
                                        <span class="discount">-22%</span>
                                        <br>
                                        <span class="old_cost">5.999.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /hot-sale -->
        <!-- ads -->
        <div class="row">
            <div class="ads">
                <img src="./images/ads1.jpg" alt="" class="col-12">
            </div>
        </div>
        <!-- /ads -->
        <!-- Laptop -->
        <div class="products">
            <div class="row">
                <div class="col-11 title-products">
                    <i class="fa-brands fa-hotjar"></i>
                    <a>Laptop bán chạy</a>
                </div>
                <div class="col-1 view-all2"><a href="#">Xem tất cả</a></div>
            </div>
            <div class="products-box">
                <div class="row">
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img style="width: 160px;" class="col-12" src="./images/laptop1.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">MacBook Air 13" 2020 M1 256GB</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">26.999.000<sup>đ</sup></span>
                                        <span class="discount">-15%</span>
                                        <br>
                                        <span class="old_cost">22.899.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/laptop2.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Laptop Asus TUF Gaming FX506LHB-HN188W</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">20.990.000<sup>đ</sup></span>
                                        <span class="discount">-14%</span>
                                        <br>
                                        <span class="old_cost">17.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/laptop3.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Laptop HP Pavilion 15 eg2057TU i5 1240P/8GB/512GB/15.6"FHD/Win
                                    11</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">18.990.000<sup>đ</sup></span>
                                        <span class="discount">-5%</span>
                                        <br>
                                        <span class="old_cost">17.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/laptop4.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Laptop Asus TUF Gaming FA506IHRB-HN019W R5</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">19.999.000<sup>đ</sup></span>
                                        <span class="discount">-20%</span>
                                        <br>
                                        <span class="old_cost">15.999.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /laptop -->
        <!-- ads -->
        <div class="row">
            <div class="ads">
                <img src="./images/ads3.jpg" alt="" class="col-12">
            </div>
        </div>
        <!-- /ads -->
        <!-- Phones -->
        <div class="products">
            <div class="row">
                <div class="col-11 title-products">
                    <i class="fa-brands fa-hotjar"></i>
                    <a>điện thoại bán chạy</a>
                </div>
                <div class="col-1 view-all2"><a href="#">Xem tất cả</a></div>
            </div>
            <div class="products-box">
                <div class="row">
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img style="width: 160px;" class="col-12" src="./images/phone1.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">iPhone 14 Pro Max 128GB</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">34.990.000<sup>đ</sup></span>
                                        <span class="discount">-6%</span>
                                        <br>
                                        <span class="old_cost">32.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/phone2.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Samsung Galaxy Z Flip4 5G 128GB</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">23.990.000<sup>đ</sup></span>
                                        <span class="discount">-12%</span>
                                        <br>
                                        <span class="old_cost">20.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/phone3.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">Vivo V25 Pro 5G 8GB-128GB</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">13.990.000<sup>đ</sup></span>
                                        <span class="discount">-14%</span>
                                        <br>
                                        <span class="old_cost">11.990.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 product1">
                        <div class="product2">
                            <div class="product-img">
                                <img class="col-12" src="./images/phone4.jpg" alt="">
                                <div class="hot">HOT</div>
                                <div class="installment"><a>Trả góp 0%</a></div>
                            </div>
                            <div class="col-12 info-product">
                                <a id="name-product">OPPO Reno8 4G 8GB - 256GB</a>
                                <hr>
                                <div class="col-12 footer_box">
                                    <div class="price">
                                        <span class="cost">8.690.000<sup>đ</sup></span>
                                        <span class="discount">-11%</span>
                                        <br>
                                        <span class="old_cost">7.690.000</span><sup class="unit">đ</sup>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /laptop -->
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
        <div class="croll-top">
            <a href="#top"><i class="fa-solid fa-up-long"></i></a>
        </div>
    </div>
    <script src="./js/owl.carousel.min.js"></script>

</html>