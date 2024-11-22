<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>

    <style>

        .product-detail {
            display: flex;
            justify-content: center;
            padding: 30px;
        }

        .product-image {
            flex: 1;
            text-align: center;
        }

        .product-image img {
            width: 50%;
            max-width: 500px;
            border-radius: 10px;
        }

        .product-info {
            flex: 1;
            padding-left: 20px;
            max-width: 600px;
        }

        .product-info h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 10px;
        }

        .product-info p {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .product-info .price {
            font-size: 24px;
            color: #e74c3c;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .product-info .add-to-cart {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 15px 25px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .product-info .add-to-cart:hover {
            background-color: #2980b9;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<!-- Header -->
<div id="web-service">
    <header class="header">

        <div class="top-banner">
            <p>22.10 Ưu Đãi Đỉnh Nóc & Giờ Vàng Deal Sốc - Duy Nhất Từ 11h
                Ngày 22.10 (Áp Dụng Online)</p>
        </div>
        <div class="header-main">
            <div class="logo-left">

                <div class="logo">
                    <img src="images/logo.png" alt="NThanh.vn">
                    <div class="logo-text">
                        <h3>TTT.vn</h3>
                        <span>Chất lượng thật - Giá trị thật</span>
                    </div>
                </div>

                <div class="search-bar">
                    <input type="text"
                           name="name"
                           id="searchInput"
                           placeholder="Tìm kiếm sản phẩm..."
                           onkeydown="searchProduct()"
                    >


                    <div id="resultSearchProducts">


                    </div>
                    <div id="searchNotification">
                        <div class="notification-container">
                            <ul class="notifications">
                                <li>24-26.10 Halloween Cực Chất - Săn Deal Độc Nhất
                                    (Online Từ 12H)</li>
                                <li>Khai trương CN224 Q. Bình Tân, TP. HCM | Deal 2K (Chỉ
                                    27/10)</li>
                                <li>Khai trương CN223 TP. Hội An, Quảng Nam | Deal 2K (Chỉ
                                    27/10)</li>
                                <li>Mua Gì Cũng Rẻ - Dưới 99K</li>
                                <li>Giảm 200K/Gói Triệt Lông Diode Laser Cho HSSV Nữ</li>
                            </ul>
                        </div>


                        <!-- Phần danh mục và thương hiệu -->
                        <div class="category-brand-container">
                            <div class="category-title">
                                <span>Nước Hoa</span>
                            </div>

                            <div class="categories">
                                <div class="category-item">Trang Điểm Mặt</div>
                                <div class="category-item">Trang Điểm Môi</div>
                                <div class="category-item">Mặt Nạ</div>
                                <div class="category-item">Sữa Tắm</div>
                                <div class="category-item">Bộ Trang Điểm</div>
                                <div class="category-item">Vấn Đề Về Da</div>
                            </div>

                            <div class="brands">
                                <img
                                        src="https://media.hcdn.vn/brand/1593168007the-coc_img_150x75_766519_fit_center.jpg"
                                        alt="L'Oreal"> <img
                                    src="https://media.hcdn.vn//hsk/brandnaris-cosmetics-logo1716963318_img_150x75_766519_fit_center.jpg"
                                    alt="Skin Aqua"> <img
                                    src="https://media.hcdn.vn/hsk/brand/Sunplay-Skin-Aqua1662624548_img_150x75_766519_fit_center.jpg"
                                    alt="Eucerin"> <img
                                    src="https://media.hcdn.vn/hsk/brand/Sunplay-Skin-Aqua1662624548_img_150x75_766519_fit_center.jpg"
                                    alt="Klairs"> <img
                                    src="https://media.hcdn.vn//hsk/brandEucerin-logo1690282206_img_150x75_766519_fit_center.jpg"
                                    alt="Garnier"> <img
                                    src="https://media.hcdn.vn//hsk/brandSkin10041678681869_img_150x75_766519_fit_center.jpg"
                                    alt="Skin1004"> <img
                                    src="https://media.hcdn.vn/brand/1661766124cetaphil_img_150x75_766519_fit_center.jpg"
                                    alt="Judydoll"> <img
                                    src="https://media.hcdn.vn//hsk/brandHada-labo-logo1690282339_img_150x75_766519_fit_center.jpg"
                                    alt="Dove">
                            </div>
                        </div>
                    </div>
                    <a  href="danh-muc" id="find-product" ><image src="https://hasaki.vn/v3/images/icons/search_icon.svg"/>
                    </a>
                </div>

            </div>
            <div class="float-right">
                <div class="header-icons">
                    <img src="https://hasaki.vn/images/graphics/icon_header_2.svg">
                    <div class="login-hover">

                        <a href="login.jsp" target="_blank" class="login">Đăng nhập/
                            <a href="index/signUp.jsp" target="_blank">Đăng ký </br>Tài nhập/
                                &darr;

                                <div class="login-box">
                                    <h3>Đăng nhập với</h3>
                                    <div class="social-login">
                                        <button class="facebook-login">
                                            <img
                                                    src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg"
                                                    alt="Facebook logo"> Facebook
                                        </button>
                                        <button class="google-login">
                                            <img
                                                    src="https://upload.wikimedia.org/wikipedia/commons/4/4a/Logo_2013_Google.png"
                                                    alt="Google logo"> Google +
                                        </button>
                                    </div>
                                    <p>Hoặc đăng nhập với Nthanh.vn</p>
                                    <button class="hasaki-login"
                                            onclick="window.location.href='login.jsp'">Đăng nhập</button>
                                    <p>

                                        Bạn chưa có tài khoản? <a href="index/signUp.jsp">ĐĂNG KÝ
                                        NGAY</a>





                                    </p>
                                </div>
                            </a>

                        </a>
                    </div>
                    <div class="header-icon-sub">
                        <img
                                src="https://hasaki.vn/images/graphics/icon_header_store.svg">
                        <a href="#" id="htch"> Hệ thống</br> cửa hàng
                        </a>
                    </div>
                    <div class="header-icon-sub">
                        <img src="https://hasaki.vn/images/graphics/icon_header_3.svg">
                        <a href="#" id="htkh"> Hỗ trợ </br>khách hàng
                        </a>
                    </div>
                    <div class="header-icon-sub">
                        <img src="https://hasaki.vn/images/graphics/icon_header_1.svg">

                        <a href="cartProduct.html" class="cart-icon"> Giỏ hàng <span
                                class="cart-count">2</span></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-list-product">
            <nav class="navbar">
                <ul class="nav-menu">
                    <div class="paddig-hover">
                        <li id="sub-menu-hover"><a href="">☰ DANH MỤC</a></li>
                    </div>
                    <div id="sub-menu-web">
                        <div class="col-menu-cap1">
                            <div class="sub-item-menu">
                                <a href="#">Sức Khỏe - Làm Đẹp</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Mỹ Phẩm High-End</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Chăm Sóc Da Mặt</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Trang Điểm</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Chăm Sóc Tóc Và Da Đầu</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Chăm Sóc Cơ Thể</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Chăm Sóc Cá Nhân</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Nước Hoa</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Thực Phẩm Chức Năng</a>
                            </div>
                            <div class="sub-item-menu">
                                <a href="#">Dịch Vụ Trải Nghiệm</a>
                            </div>
                        </div>

                    </div>

                    <li><a href="#">HASAKI DEALS</a></li>
                    <li><a href="#">HOT DEALS</a></li>
                    <li><a href="#">THƯƠNG HIỆU</a></li>
                    <li><a href="#">HÀNG MỚI VỀ</a></li>
                    <li><a href="#">BÁN CHẠY</a></li>
                    <li><a href="#">CLINIC & SPA</a></li>
                </ul>
                <ul class="nav-right">
                    <li><a href="#">Tra cứu đơn hàng</a></li>
                    <li><a href="#">Tải ứng dụng</a></li>
                    <li><a href="#">Chọn khu vực của bạn</a></li>
                </ul>
            </nav>
        </div>
    </header>

<!-- Product Detail Section -->

    <div class="product-detail">
    <!-- Product Image -->
    <div class="product-image">
        <img src="${product.image}" alt="Áo Thun Nam">
    </div>

    <!-- Product Info -->
    <div class="product-info">
        <h2>${product.detail}</h2>
        <p></p>
        <p class="price"><f:formatNumber value="${product.price}" /></p>
        <button class="add-to-cart">Thêm vào giỏ</button>
    </div>
</div>



</div>


<script src="js/main.js"></script>

<script src="js/searchProduct.js"></script>
<%

    // Lấy username từ session
    String username = (String) session.getAttribute("username");


    // Nếu chưa đăng nhập, gán giá trị rỗng
    if (username == null) {
        username = "";
    }
%>
<% String searchProducts = (String)request.getAttribute("products");
%>
<script src="js/updateUserMain.js">
    const searchProducts = "<%= searchProducts %>";
</script>
<script>
    // Gán username từ server vào biến JavaScript
    const username = "<%= username %>";
    console.log(username);

    // Kiểm tra trạng thái đăng nhập và gọi hàm loginUser nếu đã đăng nhập
    if (username && username.trim() !== "") {
        loginUser();
    }

    // Đảm bảo xử lý nút đăng xuất
    document.addEventListener("DOMContentLoaded", () => {
        const logoutButtons = document.querySelectorAll(".logout-account");
        logoutButtons.forEach(button => {
            button.addEventListener("click", () => {
                logoutUser();
            });
        });
    });

    // Hàm xử lý đăng xuất
    function logoutUser() {
        console.log("Đăng xuất...");

        // Gửi yêu cầu đến server để xóa session
        fetch("LogoutServlet", {
            method: "POST"
        })
            .then(response => {
                if (response.ok) {
                    console.log("Đăng xuất thành công");
                    // Chuyển hướng người dùng về trang đăng nhập hoặc trang chủ
                    window.location.href = "index.jsp";
                } else {
                    console.error("Lỗi khi đăng xuất");
                }
            })
            .catch(error => console.error("Lỗi kết nối:", error));
    }
</script>




<script>
    const username = "${username}";

    loginUser();
    // Lấy danh sách tất cả các phần tử có class "logout-account"
    var logoutElements = document.getElementsByClassName("logout-account");

    // Thêm sự kiện onclick cho từng phần tử
    Array.from(logoutElements).forEach(element => {
        element.onclick = function () {
            logoutUser();

        };
    });

    var htkh = document.getElementById('htkh');
    htkh.onclick = function () {
        window.location.href = 'htkh.html';
    }


    var htch = document.getElementById('htch');
    htch.onclick = function () {
        window.location.href = 'htch.html'
    }


</script>

</body>
</html>
