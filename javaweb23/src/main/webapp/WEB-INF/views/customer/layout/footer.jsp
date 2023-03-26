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
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
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
</body>
