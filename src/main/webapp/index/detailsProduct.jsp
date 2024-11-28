<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/detailsProduct.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

<!-- Header -->

    <header class="header">

        <div class="top-banner">
            <p>22.10 Ưu Đãi Đỉnh Nóc & Giờ Vàng Deal Sốc - Duy Nhất Từ 11h Ngày 22.10 (Áp Dụng Online)</p>
        </div>
        <div class="header-main">
            <div class="logo-left">

                <div class="logo">
                    <img src="../image/logo.png" alt="NThanh.vn">
                    <div class="logo-text">
                        <h3>TTT.vn</h3>
                        <span>Chất lượng thật - Giá trị thật</span>
                    </div>
                </div>

                <div class="search-bar">
                    <input type="text" placeholder="Tìm kiếm sản phẩm..." id="search-input">
                    <div class="search-notification">
                        <div class="notification-container">
                            <ul class="notifications">
                                <li>24-26.10 Halloween Cực Chất - Săn Deal Độc Nhất (Online Từ 12H)</li>
                                <li>Khai trương CN224 Q. Bình Tân, TP. HCM | Deal 2K (Chỉ 27/10)</li>
                                <li>Khai trương CN223 TP. Hội An, Quảng Nam | Deal 2K (Chỉ 27/10)</li>
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
                                <img src="https://media.hcdn.vn/brand/1593168007the-coc_img_150x75_766519_fit_center.jpg"
                                     alt="L'Oreal">
                                <img src="https://media.hcdn.vn//hsk/brandnaris-cosmetics-logo1716963318_img_150x75_766519_fit_center.jpg"
                                     alt="Skin Aqua">
                                <img src="https://media.hcdn.vn/hsk/brand/Sunplay-Skin-Aqua1662624548_img_150x75_766519_fit_center.jpg"
                                     alt="Eucerin">
                                <img src="https://media.hcdn.vn/hsk/brand/Sunplay-Skin-Aqua1662624548_img_150x75_766519_fit_center.jpg"
                                     alt="Klairs">
                                <img src="https://media.hcdn.vn//hsk/brandEucerin-logo1690282206_img_150x75_766519_fit_center.jpg"
                                     alt="Garnier">
                                <img src="https://media.hcdn.vn//hsk/brandSkin10041678681869_img_150x75_766519_fit_center.jpg"
                                     alt="Skin1004">
                                <img src="https://media.hcdn.vn/brand/1661766124cetaphil_img_150x75_766519_fit_center.jpg"
                                     alt="Judydoll">
                                <img src="https://media.hcdn.vn//hsk/brandHada-labo-logo1690282339_img_150x75_766519_fit_center.jpg"
                                     alt="Dove">
                            </div>
                        </div>
                    </div>
                    <a type="button" id="find-product">
                        <image src="https://hasaki.vn/v3/images/icons/search_icon.svg"/>
                    </a>
                </div>
            </div>
            <div class="float-right">
                <div class="header-icons">
                    <img src="https://hasaki.vn/images/graphics/icon_header_2.svg">
                    <div class="login-hover">
                        <a href="login.html" target="_blank" class="login">Đăng nhập/
                            <a href="signup.html" target="_blank">Đăng ký </br>Tài khoản &darr;</a>
                            <div class="login-box">
                                <h3>Đăng nhập với</h3>
                                <div class="social-login">
                                    <button class="facebook-login">
                                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg"
                                             alt="Facebook logo">
                                        Facebook
                                    </button>
                                    <button class="google-login">
                                        <img src="https://upload.wikimedia.org/wikipedia/commons/4/4a/Logo_2013_Google.png"
                                             alt="Google logo">
                                        Google +
                                    </button>
                                </div>
                                <p>Hoặc đăng nhập với Nthanh.vn</p>
                                <button class="hasaki-login" onclick="window.location.href='login.html'">Đăng
                                    nhập
                                </button>
                                <p>Bạn chưa có tài khoản? <a href="login.html">ĐĂNG KÝ NGAY</a></p>
                            </div>

                        </a>
                    </div>
                    <div class="header-icon-sub">
                        <img src="https://hasaki.vn/images/graphics/icon_header_store.svg">
                        <a href="#" id="htch"> Hệ thống</br> cửa hàng</a>
                    </div>
                    <div class="header-icon-sub">
                        <img src="https://hasaki.vn/images/graphics/icon_header_3.svg">
                        <a href="#" id="htkh"> Hỗ trợ </br>khách hàng</a>
                    </div>
                    <div class="header-icon-sub">
                        <img src="https://hasaki.vn/images/graphics/icon_header_1.svg">

                        <a href="cartProduct.html" class="cart-icon"> Giỏ hàng <span class="cart-count">1</span></a>
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
        <img src="${products.image}" alt="Áo Thun Nam">
    </div>

    <!-- Product Info -->
    <div class="product-info">
        <h2>${products.detail}</h2>
        <p></p>
        <p class="price"><f:formatNumber value="${products.price}" /></p>
        <button class="add-to-cart">Thêm vào giỏ</button>
    </div>
</div>

    <div class="slection-product">
        <!-- Sidebar -->
        <div id="list-search-alpha">
            <ul>
                <li><a href="#">Trang chủ <i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Sức Khỏe - Làm Đẹp<i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Chăm Sóc Da Mặt <i class="fa-solid fa-chevron-right"> </i></a></li>
                <li><a href="#"> Làm Sạch Da <i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Tẩy Trang Mặt <i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Nước Tẩy Trang L'Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml </a></li>

            </ul>
        </div>
        <div class="synthetic"> <!--tổng hợp 2 bên-->
            <div class="product-detail"> <!--bao quanh chi tiết-->
                <div class="image-product"> <!--chi tiết ảnh bên trái-->
                    <div class="container-image"> <!--list ảnh scroll-->

                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-205100137-1695896128.png"
                                 alt="Image 1" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/p/r/promotions-auto-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml_VLF3ivLnqLaFKFed.png"
                                 alt="Image 2" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1684996339_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 3" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1-1684996339_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 4" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/k/e/kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-2-1716439990_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 5" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-2-1684996339_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 6" onclick="selectImage(this.src)">
                        </div>
                    </div>
                    <img id="display-combobox" src="https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-205100137-1695896128.png">
                </div>
                <div class="infor-product">
                    <ul>
                        <li>
                            <a href="#">
                                <span class="color-orange italic-bold">N<i
                                        class="fa-regular fa-circle-check"></i>WFree</span>
                                <span class="green bold name-product">${product.Brand}</span>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="product-title">${product.ProductName}</a>
                        </li>
                        <li class="special-item"><a href="#">Số công bố với Bộ Y Tế : 71846/18/CBMP-QLD</a></li>
                        <li class="custom-font-size">
                            <span class="color-orange">★★★★★ </span>
                            <a href="#">294 đánh giá</a>
                            <a href="#">| 955 Hỏi đáp</a>
                            <a href="#">| Mã sản phẩm: 205100137</a>
                        </li>
                        <li>
                            <a href="#" class="price color-orange"><i class="fa-solid fa-money-check-dollar"></i>152.000
                                ₫</a>
                            <span class="vat-text">(Đã bao gồm VAT)</span>
                        </li>

                        <li><span class="color-orange">Tặng ngay phần quà khi mua tại cửa hàng còn quà</span></li>
                        <li class="title">Dung Tich:</li>
                        <ul class="inline-list">
                            <!-- Tách chuỗi volume thành danh sách -->
                            <% String volume = "${product.volume}";
                            String []volumes = volume.split(" ");

                            %>
                            <c:forEach var="volume" items="${volumes}">
                                <li><a href="#">${volume}</a></li>
                            </c:forEach>
                        </ul>
                        <li class="title">Công dụng: <span class="useed"></span></li>
                        <div id="image-used">
                            <!-- <img src="" alt="Ảnh Công Dụng"> -->
                        </div>
                        <li>Số lượng: <span>${product.IsSensitiveSkinSafe}</span></li>
                        <li>
                            <a href="#">
                                <span class="color-orange italic-bold">N<i
                                        class="fa-regular fa-circle-check"></i>WFree</span>
                                Giao Nhanh Miễn Phí 2H tại 222 Chi Nhánh: </a>
                        </li>
                        <li>Bạn muốn nhận hàng trước <span class="color-orange">10h</span> ngày mai. Đặt hàng trước
                            <span class="color-orange">24h</span> và chọn giao hàng <span class="color-orange">2h</span>
                            ở
                            bước
                            thanh toán.
                            <a href="#"> Xem chi tiết</a>
                        </li>
                        <ul>
                            <li>
                                <button type="button" class="button-light-green">
                                    <i class="fa-solid fa-location-dot"></i> 224/224 Chi Nhánh Còn sản phẩm
                                </button>
                                <button type="button" class="button-dark-green" id="card-prodcut">
                                    <i class="fa-sharp fa-solid fa-cart-shopping"></i> GIỎ HÀNG
                                </button>
                                <button type="button" class="button-orange">
                                    <span class="size-end">Mua ngay NowFree 2H</span> Trể tặng 100k
                                </button>
                            </li>
                        </ul>
                    </ul>
                </div>
            </div>


            <div class="your-infor">
                <ul>
                    <li class="green">- MIỄN PHÍ VẬN CHUYỂN -</li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/delivery-120-minutes.png" alt="">
                        Giao Nhanh Miễn Phí 2H tại 224 Chi Nhánh.
                        <span class="style-bold">Trễ tặng 100K</span>
                    </li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_3.png" alt="">
                        Hasaki đền bù <span class="style-bold">100%</span> + hãng đền bù <span
                            class="style-bold">100%</span>
                        nếu phát hiện hàng giả
                    </li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_2.png" alt="">
                        <span class="style-bold">Giao Hàng Miễn Phí</span> (từ 90K tại 54 Tỉnh Thành trừ huyện, toàn
                        Quốc từ
                        249K)
                    </li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_2.png" alt="">
                        Đổi trả trong <span class="style-bold">30 ngày</span>.
                    </li>
                </ul>
            </div>
        </div>
        <div id="similar-products"></div>
        <div class="main-infor-detail">
            <div class="choose-detail">
                <ul>
                    <li><a href="#">Thông tin</a></li>
                    <li><a href="#">Thông số</a></li>
                    <li><a href="#">Thành phần</a></li>
                    <li><a href="#">Cách dùng</a></li>
                    <li><a href="#">Đánh giá</a></li>
                    <li><a href="#">Hỏi </a></li>
                </ul>
            </div>
            <div id="information">
                <p><span class="font-bold">${product.ProductName}</span> là dòng sản phẩm <a href="#">tẩy
                    trang</a> dạng nước đến từ <a href="#">thương hiệu ${product.Brand}</a>, được ứng dụng công nghệ
                    Micellar
                    dịu nhẹ giúp làm
                    sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da thông
                    thoáng,
                    mềm
                    mượt mà không hề khô căng.</p>
                <img src="#" alt="Ảnh Sản phẩm">
            </div>
            <div id="parameter">
                <h3>Thông số sản phẩm</h3>
                <table>
                    <tr>
                        <td>Barcode</td>
                        <td>${product.BarCode}</td>
                    </tr>
                    <tr>
                        <td>Thương Hiệu</td>
                        <td>${product.Brand}</td>
                    </tr>
                    <tr>
                        <td>Xuất xứ thương hiệu</td>
                        <td>${product.BrandOrigin}</td>
                    </tr>
                    <tr>
                        <td>Nơi sản xuất</td>
                        <td>${product.ManufactureLocation}</td>
                    </tr>
                    <tr>
                        <td>Loại da</td>
                        <td>${product.SuitableSkin}</td>
                    </tr>
                </table>
            </div>

            <div id="ingredient">
                <h3>Thành phần sản phẩm</h3>

                <h4>1. L'Oréal Paris Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin (Xanh dương đậm)</h4>
                <strong>Thành phần chính:</strong>
                <p>Có hai lớp chất lỏng giúp hòa tan chất bẩn và loại bỏ toàn bộ lớp trang điểm hiệu quả, kể cả lớp
                    trang
                    điểm lâu trôi và không thấm nước chỉ trong một bước.</p>
                <p>Lớp Micellar chứa các hạt mixen siêu nhỏ len lỏi sâu và dễ dàng lấy đi bụi bẩn, dầu thừa, lớp trang
                    điểm
                    và chất bẩn khác mà không làm khô da.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Cyclopentasiloxane, Isohexadecane, Potassium Phosphate, Sodium Chloride, Dipotassium
                    Phosphate, Disodium Edta, Decyl Glucoside, Hexylene Glycol, Polyaminopropyl Biguanide, CI 61565 /
                    Green
                    6</p>

                <h4>2. L'Oréal Paris Micellar Water 3-in-1 Refreshing Even For Sensitive Skin (Xanh dương nhạt)</h4>
                <strong>Thành phần chính:</strong>
                <p>Nước khoáng lấy từ những ngọn núi ở Pháp: làm dịu và giúp làn da trông tươi tắn lên sau khi tẩy
                    trang.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta,
                    BHT ,
                    Polyaminopropyl Biguanide</p>

                <h4>3. L'Oréal Paris Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin (Hồng)</h4>
                <strong>Thành phần chính:</strong>
                <p>Chiết xuất hoa hồng Pháp: cân bằng độ ẩm & làm mềm mịn da, làn da vẫn đủ độ ẩm sau khi tẩy trang.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184,
                    Disodium
                    Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>

                <h4>4. L'Oréal Paris Revitalift Crystal Purifying Micellar Water (Trắng)</h4>
                <strong>Thành phần chính:</strong>
                <p>Công nghệ micelles: hoạt động như một nam châm làm sạch, loại bỏ 5 loại tạp chất có trên da bạn hằng
                    ngày, giúp lỗ chân lông thoáng sạch.</p>
                <p>Glycerin: giúp cấp nước và giữ độ ẩm cho da, phục hồi và duy trì vẻ ngoài khỏe khoắn.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184,
                    Disodium
                    Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>

                <h4>5. L'Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water (Tím)</h4>
                <strong>Thành phần chính:</strong>
                <p>Hyaluronic Acid: giúp làm dịu và cấp ẩm da căng mọng từ bên trong, nuôi dưỡng da khỏe mạnh và sáng
                    bóng.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184,
                    Disodium
                    Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>
            </div>
            <div id="use">
                <h3>Hướng dẫn sử dụng</h3>
                <p>Lắc đều sản phẩm Nước Tẩy Trang L'Oreal trước khi sử dụng.</p>
                <p>Đổ nước tẩy trang thấm ướt vừa đủ lên miếng bông tẩy trang.</p>
                <p>Nhẹ nhàng lau lên mặt, mắt và môi theo chuyển động tròn (Riêng đối với vùng mắt, bạn hãy giữ miếng
                    bông
                    tẩy trang trên mắt vài giây để nước tẩy trang thấm sâu và cuốn đi lớp make-up dễ dàng hơn).</p>
                <p>Sử dụng để tẩy trang nhanh (không cần rửa lại với nước) khi bận rộn hoặc ở những nơi thiếu nước: khi
                    đi
                    du lịch, đi spa, đi gym, v.v...</p>
                <p>Khuyến khích sử dụng quy trình chăm sóc da hoàn chỉnh để có hiệu quả dưỡng da tốt nhất (Nước tẩy
                    trang -
                    Sữa rửa mặt - Nước hoa hồng - Kem dưỡng).</p>
            </div>




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
