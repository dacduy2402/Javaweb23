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
    <title>Detail Product</title>
    <link rel="stylesheet" href="${base}/css/detail.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="${base}/js/jquery-3.6.1.js"></script>
    <script src="${base}/js/home.js"></script>
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
                    <input type="text" placeholder="Tìm kiếm sản phẩm">
                    <div class="search-button">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>
                </div>
                <div class="col-2 cart">
                    <i class="fa-solid fa-cart-shopping" style="font-size: 20px;"></i>
                    <a href="${base}/cart/checkout" style="text-decoration: none; color: black">giỏ hàng</a>
                    <div id="soluongsanphamtronggiohang" 
					style="width: 20px; height: 20px; border-radius: 10px; background: #363535; 
					color: #ffffff; display:flex; justify-content: center; align-items: center;
					font-size: 12px; ; margin: 0px 0px 3px 5px">
					${TongSoLuongSanPhamTrongGioHang }
				</div>
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
                                <li><a href="./home.html" style="color: #ffffff; text-decoration: none;">Trang chủ</a>
                                </li>
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
                <div class="col-12">
                    <div class="path">
                        <a href="${base}/home.html" style="text-decoration: none;">Trang chủ</a>
                        <a style="padding: 0px 5px; color: rgba(45, 43, 43, 0.7);">
                            <i class="fa-solid fa-angle-right"></i></a>
                        <a style="color: rgba(45, 43, 43, 0.7);">Điện thoại</a>
                        <a style="padding: 0px 5px; color: rgba(45, 43, 43, 0.7);">
                            <i class="fa-solid fa-angle-right"></i></a>
                        <a style="color: rgba(45, 43, 43, 0.7);">IPhone 14 Pro Max</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 product">
                    <div class="col-5 left">
                        <div class="img-product">
                            <img src="${base }/upload/${product.avtProduct}" id="show-image">
                            <ul id="list-image">
                                <c:forEach items="${product.productImages }" var="productImage">
									<li><img src="${base }/upload/${productImage.path}" 
									onclick="changeImage('${productImage.path}');" id="${productImage.path}"></li>
								</c:forEach>
                            </ul>
                        </div>
                        <!-- specifications -->
                        <div class="spec">
                            <div class="title-spec">
                                thông số kỹ thuật
                            </div>
                            <div class="spec-box">
                                <div class="spec1">
                                    <i class="fa-solid fa-mobile-screen-button"></i>
                                    <a>Màn hình: 6.7 inch, Super Retina XDR, 2796 x 1290 Pixels</a>
                                </div>
                                <div class="spec1">
                                    <i class="fa-solid fa-camera"></i>
                                    <a>Camera sau: 48.0 MP + 12.0 MP</a>
                                </div>
                                <div class="spec1">
                                    <i class="fa-solid fa-camera-rotate"></i>
                                    <a>Camera trước: 12.0 MP</a>
                                </div>
                                <div class="spec1">
                                    <i class="fa-solid fa-microchip"></i>
                                    <a>Chip: Apple A16 Bionic</a>
                                </div>
                                <div class="spec1">
                                    <i class="fa-solid fa-battery-full"></i>
                                    <a>Dung lượng pin: 4.323 mAh</a>
                                </div>
                                <div class="spec1">
                                    <i class="fa-solid fa-sim-card"></i>
                                    <a>Thẻ sim: 1 - 1 eSIM, 1 Nano SIM</a>
                                </div>
                            </div>
                        </div>
                        <!-- /specifications -->
                    </div>
                    <div class="col-7 info-product">
                        <div class="name">
                            <a>${product.nameProduct }</a>
                        </div>
                        <!-- price -->
                        <div class="price">
                            <img src="${base}/images/black-friday.jpg" alt="">
                            <div class="price1">
                                <a>${product.priceSale}<sup>đ</sup></a>
                                <div class="cost">
                                    <a>${product.price}<sup>đ</sup></a>
                                </div>
                            </div>
                        </div>
                        <!-- /price -->
                        <!-- choose-memory -->
                        <div class="choose-memory">
                            <div class="radio-box">
                                <div class="input">
                                    <input type="radio" id="128" name="choose">
                                    <label for="">128GB</label>
                                </div>
                                <a>33.490.000đ</a>
                            </div>
                            <div class="radio-box">
                                <div class="input">
                                    <input type="radio" id="256" name="choose">
                                    <label for="">256GB</label>
                                </div>
                                <a>36.490.000đ</a>
                            </div>
                            <div class="radio-box">
                                <div class="input">
                                    <input type="radio" id="512" name="choose">
                                    <label for="">512GB</label>
                                </div>
                                <a>43.990.000đ</a>
                            </div>
                            <div class="radio-box">
                                <div class="input">
                                    <input type="radio" id="1TB" name="choose">
                                    <label for="">1TB</label>
                                </div>
                                <a>49.490.000đ</a>
                            </div>

                        </div>
                        <!-- /choose-memory -->
                        <!-- choose-color -->
                        <div class="choose-color">
                            <div class="color-box">
                                <div class="box-img">
                                    <img src="${base}/images/ip1.jpg" onclick="changeImage1('cl1');" id="cl1">
                                </div>
                                <div class="color">Tím</div>
                            </div>
                            <div class="color-box">
                                <div class="box-img">
                                    <img src="${base}/images/ip2.jpg" onclick="changeImage1('cl2');" id="cl2">
                                </div>
                                <div class="color">Vàng</div>
                            </div>
                            <div class="color-box">
                                <div class="box-img">
                                    <img src="${base}/images/ip3.jpg" onclick="changeImage1('cl3');" id="cl3">
                                </div>
                                <div class="color">Bạc</div>
                            </div>
                            <div class="color-box">
                                <div class="box-img">
                                    <img src="${base}/images/ip4.jpg" onclick="changeImage1('cl4');" id="cl4">
                                </div>
                                <div class="color">Đen</div>
                            </div>
                        </div>
                        <!-- /choose-color -->
                        <!-- quantity -->
                        <div class="quantity" style="display:flex">
                            <label for="quantity"><a style="font-weight: bold;">Số lượng:</a></label>
                            <!-- <select name="number" id="number">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select> -->
                            <input class="form-control text-center me-3" id="inputQuantity" type="number" value="1" style="max-width: 4rem; margin-left: 10px; height: 30px" />
                        </div>
                        <!-- quantity -->
                        <!-- buy -->
                        <div class="buy">
                            <div class="btn-buy">
                                <button id="btn-buy">
                                    mua ngay
                                    <i class="fa-solid fa-right-long"></i>
                                </button>
                            </div>
                            <div class="btn-cart">
                                <button id="btn-cart" onclick="AddToCart('${base}',${product.id}, 1)">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    thêm vào giỏ hàng
                                </button>
                            </div>
                        </div>
                        <!-- /buy -->
                        <!-- endow -->
                        <div class="endow">
                            <div class="title-endow">
                                <a>Ưu đãi</a>
                            </div>
                            <div class="list-endow">
                                <ul>
                                    <li>
                                        <i class="fa-solid fa-circle-check"></i>
                                        <a>Bảo hành 2 năm chính hãng</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-circle-check"></i>
                                        <a>
                                            Thu cũ đổi mới trợ giá ngay 15% đến 3 triệu (SmartExchange)</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-circle-check"></i>
                                        <a>Giảm đến 30% hệ sinh thái Apple</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-circle-check"></i>
                                        <a>Giảm 50% eSim MobiFone Big Data 1T khi mua kèm IPhone giá chỉ 150.000đ</a>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-circle-check"></i>
                                        <a>Giảm 30% Sim MobiFone Siêu Data 3T - 2GB/ngày - miễn phí 3 tháng - giá chỉ
                                            266.000đ</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /endow -->
                    </div>
                </div>
            </div>
            <!-- main -->
            <!-- detail product -->
            <div class="row">
                <div class="col12">
                    <div class="detail">
                        <div class="title-detail">
                            <a>Đánh giá chi tiết sản phẩm</a>
                        </div>
                        <div class="info-detail">
                            <%-- <div class="head-prg">
                                <a>iPhone 14 Pro Max đem đến những trải nghiệm không thể tìm
                                    thấy trên mọi thế hệ iPhone trước đó với màu Tím Deep
                                    Purple sang trọng, camera 48MP lần đầu xuất hiện, chip
                                    A16 Bionic và màn hình “viên thuốc” Dynamic Island linh
                                    hoạt, nịnh mắt.
                                </a>
                            </div>
                            <img src="${base}/images/ip5.jpg" alt="">
                            <br>
                            <b>Đỉnh cao của thiết kế sang trọng và bền bỉ</b>
                            <br>
                            <a>
                                Rất khó để tìm ra chiếc điện thoại nào sang trọng như
                                iPhone 14 Pro Max trên thị trường. Thừa hưởng thiết kế
                                vát phẳng từ thế hệ trước, thủ lĩnh iPhone 14 series
                                khoác lên bộ khung vỏ thép, đầm tay và chắc chắn. Bạn
                                sẽ lập tức bị lôi cuốn bởi vẻ ngoài cao cấp với thân
                                máy bóng bẩy của sản phẩm
                            </a>
                            <br>
                            <a>
                                Nhờ kỹ nghệ hoàn thiện xuất sắc, thiết kế iPhone 14
                                Pro Max đạt chuẩn chống nước IP68 cao nhất có thể trên
                                smartphone. Apple đã phủ lên màn hình thiết bị chất
                                liệu kính Ceramic Shield siêu bền, tối ưu khả năng
                                kháng lực và chống xước cực tốt suốt vòng đời sử dụng.
                            </a>
                            <br>
                            <img src="${base}/images/detail1.jpg" alt="">
                            <br>
                            <i><b>* Lưu ý:</b>Giá iPhone 14 Pro Max hiện tại trong bài
                                viết là giá tại thời điểm cập nhật gần nhất. Do đó mức
                                giá có thể có sự chênh lệnh tùy theo thời điểm và chương
                                trình khuyến mãi. Để biết được giá bán chính xác nhất,
                                hãy liên hệ tổng đài của Techshop: 19005353.</i>--%>
 							${product.description }
                        </div>
                    </div>
                </div>
            </div>
            <!-- </form> -->
            <!-- /detail product -->
        </div>
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
        <script>
            // detect sự kiện
            function changeImage(id) {
                // lấy giá trị của thuộc tính src của thẻ html tương ứng vs id truyền vào
                var srcImage = document.getElementById(id).getAttribute("src");
                //tác động vào id = show-image, truyền giá trị vào thuoọc tính src
                document.getElementById("show-image").setAttribute("src", srcImage);
                //bỏ hết các đường viền của các ảnh nhỏ
                document.getElementById(id).removeAttribute("style");
/*                 var list-image = $("#list-image").children;
                list-image.forEach((img) => {
                	if ()
                })) */
                // set đường viền bao quanh thẻ html tương ứng vs id truyền vào
                /* document.getElementById(id).setAttribute("style", "border:1px solid red"); */
            }
        </script>
        <script>
            // detect sự kiện
            function changeImage1(id) {
                // lấy giá trị của thuộc tính src của thẻ html tương ứng vs id truyền vào
                var srcImage = document.getElementById(id).getAttribute("src");
                //tác động vào id = show-image, truyền giá trị vào thuoọc tính src
                document.getElementById("show-image").setAttribute("src", srcImage);
                //bỏ hết các đường viền của các ảnh nhỏ
                document.getElementById('cl1').removeAttribute("style");
                document.getElementById('cl2').removeAttribute("style");
                document.getElementById('cl3').removeAttribute("style");
                document.getElementById('cl4').removeAttribute("style");
                // set đường viền bao quanh thẻ html tương ứng vs id truyền vào
                document.getElementById(id).setAttribute("style", "border:1px solid red");
            }
        </script>
    </div>
    <script src="${Base }/js/addToCard.js"></script>
</body>

</html>