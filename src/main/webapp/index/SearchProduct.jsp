<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Web Mỹ Phẩm</title>


    <link rel="stylesheet" href="style.css">
</head>
<body>
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
                    <a href="/danh-muc"  id="find-product"><image src="https://hasaki.vn/v3/images/icons/search_icon.svg"/></a>
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



                                        Bạn chưa có tài khoản? <a href="#">ĐĂNG KÝ NGAY</a>

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

    <div id="session-body">
        <div class="container">
            <!-- Sidebar -->
            <div class="sidebar">
                <h3>Categories</h3>
                <ul>
                    <li><a>Sức Khỏe - Làm Đẹp</a></li>
                    <li><a>Clinic & Spa</a></li>
                    <li><a>Thương Hiệu</a></li>
                </ul>

                <h3>Khoảng Giá</h3>
                <div class="price-filter">
                    <div class="space-price">
                        <input type="text" placeholder="Từ"> <input type="text"
                                                                    placeholder="Đến">
                    </div>
                    <button>Áp Dụng</button>
                </div>
                <h3>Thương Hiệu</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"
                    >Cocoon</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Maybelline</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Emmié by Happy Skin</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Torriden</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Vaseline</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Anessa</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Laneige</li>
                </ul>
                <h3>Tình Trạng Tóc</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Tóc
                        Dầu Bết</li>
                    <li><input type="checkbox" class="item-checkbox"> Tóc
                        Rối và Khô</li>
                    <li><input type="checkbox" class="item-checkbox"> Tóc
                        dễ gãy rụng, mỏng và xẹp</li>
                    <li><input type="checkbox" class="item-checkbox"> Tóc
                        khô xơ và hư tổn</li>
                </ul>
                <h3>Dung Tích</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox">
                        Fullsize</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Combo</li>
                    <li><input type="checkbox" class="item-checkbox"> Bộ
                        1 cây</li>
                    <li><input type="checkbox" class="item-checkbox"> Bộ
                        1 cây</li>
                    <li><input type="checkbox" class="item-checkbox">
                        25ml</li>
                    <li><input type="checkbox" class="item-checkbox">
                        100ml</li>
                    <li><input type="checkbox" class="item-checkbox"> 30
                        viên</li>
                    <li><input type="checkbox" class="item-checkbox"> Bộ
                        3 cây</li>
                </ul>
                <h3>TThành phần nổi bật</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox">
                        Chống nắng vật lý lai hoá học</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Niacinamide (Vitamin B3)</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Panthenol (Vitamin B5)</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Hyaluronic Acid</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Glutathione</li>
                    <li><input type="checkbox" class="item-checkbox"> Dầu
                        Argan</li>
                </ul>
                <h3>Loại da</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Da
                        thường/Mọi loại da</li>
                    <li><input type="checkbox" class="item-checkbox"> Da
                        dầu/Hỗn hợp dầu</li>
                    <li><input type="checkbox" class="item-checkbox"> Da
                        nhạy cảm</li>
                    <li><input type="checkbox" class="item-checkbox"> Da
                        khô/Hỗn hợp khô</li>
                    <li><input type="checkbox" class="item-checkbox"> Da
                        mụn</li>
                </ul>
                <h3>Công dụng chính</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox">
                        Dưỡng ẩm và cấp nước</li>
                    <li><input type="checkbox" class="item-checkbox"> Làm
                        sáng và đều màu da</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Kiểm soát dầu</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Nâng tông da</li>
                    <li><input type="checkbox" class="item-checkbox"> Làm
                        dịu da</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Giúp tóc vào nếp suôn mượt</li>
                </ul>
                <h3>Tông màu</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Cam</li>
                    <li><input type="checkbox" class="item-checkbox"> Nâu</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Hồng</li>
                    <li><input type="checkbox" class="item-checkbox"> Đỏ</li>
                </ul>
                <h3>TLoại sản phẩm</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Kem
                        chống nắng</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Serum / Tinh chất</li>
                    <li><input type="checkbox" class="item-checkbox"> Mặt
                        nạ giấy</li>
                    <li><input type="checkbox" class="item-checkbox"> Son
                        kem</li>
                    <li><input type="checkbox" class="item-checkbox"> Sữa
                        rửa mặt</li>
                    <li><input type="checkbox" class="item-checkbox"> Kem
                        dưỡng ẩm</li>
                    <li><input type="checkbox" class="item-checkbox"> Sữa
                        tắm</li>
                </ul>
                <h3>Giới tính</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Nam
                        và Nữ</li>
                    <li><input type="checkbox" class="item-checkbox"> Nữ</li>

                </ul>
                <h3>ĐẶC TÍNH</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox">
                        Chống nắng phổ rộng</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Dạng lì</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Thuần chay (vegan)</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Không paraben</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Lông chải mềm</li>
                    <li><input type="checkbox" class="item-checkbox"> Có
                        mùi hương</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Không màu</li>
                </ul>
                <h3>Xuất xứ thương hiệu</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Hàn
                        Quốc</li>
                    <li><input type="checkbox" class="item-checkbox"> Mỹ</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Việt Nam</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Nhật Bản</li>
                    <li><input type="checkbox" class="item-checkbox">
                        Pháp</li>
                    <li><input type="checkbox" class="item-checkbox"> Anh</li>
                    <li><input type="checkbox" class="item-checkbox"> Đức</li>
                </ul>
            </div>
            <div class="product-listing">
                <c:forEach var="product" items="${products}">
                    <div class="product">
                        <img src="${product.image}" alt="${product.name}">
                        <h4>${product.name}</h4>
                        <div class="vn_names">${product.detail}</div>
                        <p>${product.price}</p>
                        <button class="btn-buy">Buy Now</button>
                    </div>

                </c:forEach>
            </div>
        </div>
    </div>

    <div id="session-footer">
        <div class="container">
            <footer>
                <div class="footer-top">
                    <div class="footer-info">
                        <div class="footer-header">
                            <div class="info-item">
                                <img src="https://hasaki.vn/v3/images/icons/icon_footer_1.svg"
                                     alt="Thanh toán khi nhận hàng">
                                <p>
                                    Thanh toán </br>khi nhận hàng
                                </p>
                            </div>
                            <div class="info-item">
                                <img src="https://hasaki.vn/v3/images/icons/icon_footer_2.svg"
                                     alt="Giao nhanh miễn phí 2H">
                                <p>
                                    Giao nhanh</br> miễn phí 2H
                                </p>
                            </div>
                            <div class="info-item">
                                <img
                                        src="https://media.hcdn.vn/hsk/icons/icon_footer_3_200x200.png"
                                        alt="30 ngày đổi trả miễn phí">
                                <p>
                                    30 ngày đổi trả</br> miễn phí
                                </p>
                            </div>
                            <div class="info-item">
                                <img src="https://hasaki.vn/v3/images/icons/icon_footer_4.svg"
                                     alt="Thương hiệu uy tín">
                                <p>
                                    Thương hiệu uy tín </br>theo yêu cầu
                                </p>
                            </div>
                            <div class="contact-item">
                                <div class="icon">
                                    <img
                                            src="https://hasaki.vn/v3/images/icons/icons_hotline_kn.svg"
                                            alt="Khiếu nại, Góp ý">
                                    <p>Khiếu nại, Góp ý</p>
                                </div>
                                <button>1800 6310</button>
                            </div>
                            <div class="contact-item">
                                <div class="icon">
                                    <img
                                            src="https://hasaki.vn/v3/images/icons/icons_hotline_tv.svg"
                                            alt="Khiếu nại, Góp ý">
                                </div>>
                                Tư Vấn</a>
                            </div>
                            <button>1800 6324</button>
                        </div>
                        <div class="contact-item">
                            <div class="icon">
                                <img
                                        src="https://hasaki.vn/v3/images/icons/icon_timchinhanh.svg"
                                        alt="Khiếu nại, Góp ý">
                                <p>Tìm chi nhánh</p>
                            </div>
                            <button>Hệ thống TTT</button>
                        </div>
                    </div>


                    <div class="contact-info">
                        <div class="hotline ">
                            <h3>Hỗ trợ khách hàng</h3>
                            <p>
                                Hotline: <strong>1800 6324</strong> (miễn phí, 08-22h kể cả
                                T7, CN)
                            </p>
                            <p>Gửi câu hỏi thường gặp</p>
                            <p>Gửi yêu cầu hỗ trợ</p>
                            <p>Hướng dẫn đặt hàng</p>
                            <p>Phương thức vận chuyển</p>
                            <p>Chính sách đổi trả</p>
                        </div>
                        <div class="company-info">
                            <h3>Về TTT.vn</h3>
                            <p>Giới thiệu TTT.vn</p>
                            <p>Tuyển dụng</p>
                            <p>Các câu hỏi thường gặp</p>
                            <p>Hướng dẫn sử dụng</p>
                            <p>Liên hệ</p>
                        </div>

                        <div class="social-media">
                            <h3>Hợp tác và liên kết</h3>
                            <p>
                                <a href="#">https://TTT.vn/Clinic</a>
                            </p>
                            <div class="social-icons">
                                <a href="https://www.facebook.com/" target="_blank"><img
                                        src="https://hasaki.vn/v3/images/icons/fb.svg" alt="Facebook"></a>
                                <a><img
                                        src="https://hasaki.vn/v3/images/icons/icon_tiktok.svg"
                                        alt="Instagram"></a> <a><img
                                    src="https://hasaki.vn/v3/images/icons/instagram.svg"
                                    alt="TikTok"></a>

                            </div>
                            <div class="payment-methods">
                                <h3>Thanh Toán</h3>
                                <img src="https://hasaki.vn/v3/images/icons/mastercard.svg"
                                     alt="YouTube"> <img
                                    src="https://hasaki.vn/v3/images/icons/visa.svg" alt="Visa">
                                <img src="https://hasaki.vn/v3/images/icons/atm.svg" alt="ATM">
                            </div>

                        </div>
                        <div class="promo-section">
                            <h3>CẬP NHẬT THÔNG TIN KHUYẾN MÃI</h3>
                            <div class="promo-input">
                                <input type="email" placeholder="email của bạn">
                                <button>Đăng ký</button>
                            </div>
                            <div class="promo-download">
                                <img src="images/qrcode.png" alt="QR code">
                                <div class="app-links">
                                    <img src="https://hasaki.vn/v3/images/icons/dl_apple.svg"
                                         alt="App Store"> <img
                                        src="https://hasaki.vn/v3/images/icons/dl_google.svg"
                                        alt="Google Play">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="session-info">
                    <div class="about-section">
                        <h2>TTT.VN - CHẤT LƯỢNG THẬT - GIÁ TRỊ THẬT</h2>
                        <p>
                            TTT.vn là hệ thống cửa hàng mỹ phẩm chính hãng và dịch vụ chăm
                            sóc sắc đẹp chuyên sâu với hệ thống cửa hàng trải dài trên toàn
                            quốc; và hiện đang là đối tác phân phối chiến lược tại thị
                            trường Việt Nam của hàng loạt thương hiệu lớn như: <span
                                class="highlight">La Roche-Posay, Eucerin, L'oreal,
										Bioderma, Klairs, Naris Cosmetics, Maybelline, Vichy,
										Skin1004, Cocoon, Australis, Cetaphil, Anessa, SVR, Paula's
										Choice, Some By Mi, B.O.M, Vaseline, Sunplay, Hada Labo,
										Selsun, Blossom, Acnes, Rohto, Silky Girl, Lancôme, Narciso
										Rodriguez, Senka, Naruko, Angel's Liquid, DHC, Simple,
										Bio-essence, Tsubaki, 3CE, BNBG, Laneige, Vacosi, Lemonade,
										Hatomugi, Avène, Silcot, Neutrogena, Garnier, Mediheal,
										Timeless, Curél,...</span>
                        </p>

                        <p>
                            Với phương châm "<span class="highlight">Chất lượng thật
										- Giá trị thật</span>", TTT.vn luôn nỗ lực không ngừng nhằm nâng cao
                            chất lượng sản phẩm & dịch vụ để khách hàng có được những trải
                            nghiệm mua sắm tốt nhất...
                        </p>

                        <p>TTT.vn sở hữu đa dạng các mặt hàng từ cao cấp đến bình
                            dân, đáp ứng mọi nhu cầu của khách hàng. Đặc biệt, tại
                            Hasaki.vn luôn có đầy đủ mẫu thử của mỗi sản phẩm và nhân viên
                            tư vấn, giúp khách hàng dễ dàng chọn lựa và tăng trải nghiệm
                            mua sắm.</p>

                        <p>
                            Đối với khách hàng online, Hasaki.vn áp dụng GIAO NHANH 2H MIỄN
                            PHÍ cho <span class="highlight">đơn hàng từ 90.000đ</span> tại
                            các khu vực: Hồ Chí Minh - Hà Nội - Hải Phòng - Pleiku - Cà Mau
                            - Tây Ninh - Long An - Vĩnh Long...
                        </p>

                        <p>
                            Ngoài ra, Hasaki.vn còn có app Hasaki cung cấp cho khách hàng
                            trải nghiệm mua sắm online nhanh chóng, tiện lợi cùng nhiều
                            khuyến mãi hấp dẫn. Không chỉ vậy, khách hàng còn được giảm
                            ngay 5% khi nhập mã HASAKIAPP cho đơn hàng đầu tiên trên ứng
                            dụng. Tải ngay APP Hasaki cho hệ điều hành IOS <a href="#">tại
                            đây</a>, phiên bản cho hệ điều hành Android <a href="#">tại
                            đây</a>.
                        </p>
                    </div>

                    <div class="info-section">
                        <div class="certification">
                            <h3>Được chứng nhận</h3>
                            <img
                                    src="https://hasaki.vn/images/graphics/bocongthuong_small.png"
                                    alt="Đã thông báo Bộ Công Thương">
                            <p>
                                Bản quyền © 2016 Hasaki.vn<br>Công Ty cổ phần HASAKI
                                BEAUTY & CLINIC<br>Giấy chứng nhận Đăng ký Kinh doanh số
                                0313612829 do Sở Kế hoạch và Đầu tư Thành phố Hồ Chí Minh cấp
                                ngày 13/01/2016
                            </p>
                        </div>
                        <div class="search-tags">
                            <h4>TOP TÌM KIẾM</h4>


                            <div class="tags">
                                <span>Kem Chống Nắng</span> <span>Nước Tẩy Trang</span> <span>Kem
											Dưỡng Ẩm</span> <span>Sữa Rửa Mặt</span> <span>Bông Tẩy Trang</span>
                                <span>Mặt Nạ</span> <span>LOREAL</span> <span>LA ROCHE
											POSAY</span> <span>Sữa Rửa Mặt SVR</span> <span>Son</span> <span>Kem
											Đánh Răng Median</span> <span>Kem Đánh Răng Marvis</span> <span>VASELINE</span>
                                <span>Carslan</span> <span>sữa rửa mặt cetaphil</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="product-categories">
                    <h2>DANH MỤC SẢN PHẨM</h2>

                    <div class="category-column">
                        <h3>Mỹ Phẩm High-End</h3>
                        <p>Trang Điểm Cao Cấp | Chăm Sóc Da Mặt Cao Cấp | Chăm Sóc
                            Tóc Cao Cấp | Gội đầu</p>
                    </div>

                    <div class="category-column">
                        <h3>Nước Hoa</h3>
                        <p>Nước Hoa Nữ | Nước Hoa Nam | Xịt Thơm Toàn Thân</p>
                    </div>

                    <div class="category-column">
                        <h3>Chăm Sóc Răng Miệng</h3>
                        <p>Bàn Chải Đánh Răng | Kem Đánh Răng | Nước Súc Miệng | Tăm
                            Nước | Chỉ Nha Khoa | Xịt Thơm Miệng</p>
                    </div>

                    <div class="category-column">
                        <h3>Thực Phẩm Chức Năng</h3>
                        <p>Hỗ Trợ Tiêu Hoá | Hỗ Trợ Tim Mạch | Hỗ Trợ Sức Khỏe | Bổ
                            Gan | Giải Rượu | Dầu Cá | Bổ Mắt | Hoạt Huyết | Dưỡng Não</p>
                    </div>

                    <div class="category-column">
                        <h3>Chăm Sóc Cá Nhân</h3>
                        <p>Băng Vệ Sinh | Khăn Giấy | Khăn Ướt | Khử Mùi | Làm Thơm
                            Phòng | Dao Cạo Râu | Bọt Cạo Râu | Miếng Dán Nóng | Máy Xông
                            Hơi...</p>
                    </div>

                    <div class="category-column">
                        <h3>Chăm Sóc Da Mặt</h3>
                        <p>Tẩy Trang Mặt | Sữa Rửa Mặt | Tẩy Tế Bào Chết Da Mặt |
                            Toner | Nước Cân Bằng Da | Serum | Tinh Chất...</p>
                    </div>

                    <div class="category-column">
                        <h3>Trang Điểm</h3>
                        <p>Kem Lót | Kem Nền | Phấn Nền | Phấn Nước Cushion | Che
                            Khuyết Điểm | Má Hồng | Phấn Phủ...</p>
                    </div>

                    <div class="category-column">
                        <h3>Chăm Sóc Cơ Thể</h3>
                        <p>Sữa Tắm | Xà Phòng | Tẩy Tế Bào Chết Body | Dưỡng Thể |
                            Dưỡng Da Tay | Chân | Chống Lão Hóa Cơ Thể</p>
                    </div>

                    <div class="category-column">
                        <h3>Chăm Sóc Sức Khỏe</h3>
                        <p>Băng Dán Cá Nhân | Chống Muỗi | Khẩu Trang | Mặt Nạ Xông
                            Hơi | Miếng Dán Nóng</p>
                    </div>

                    <div class="category-column">
                        <h3>Vấn Đề Về Da</h3>
                        <p>Da Dầu | Lỗ Chân Lông To | Da Khô | Mất Nước | Da Mụn |
                            Da Nhạy Cảm | Kích Ứng | Thâm...</p>
                    </div>

                    <div class="category-column">
                        <h3>Chăm Sóc Tóc Và Da Đầu</h3>
                        <p>Dầu Gội | Dầu Xả | Dầu Gội Khô | Dầu Gội Xả 2in1 | Bộ Gội
                            Xả | Tẩy Tế Bào Chết Da Đầu...</p>
                    </div>

                    <div class="category-column">
                        <h3>Hỗ Trợ Làm Đẹp</h3>
                        <p>Đặc Trị Làm Đẹp Da | Làm Đẹp Tóc | Hỗ Trợ Giảm Cân |
                            Vitamin và Khoáng Chất</p>
                    </div>
                </div>
            </footer>
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
