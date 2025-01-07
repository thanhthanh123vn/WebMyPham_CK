<%@ page import="object.User" %>
<%@page import="java.io.Console" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Web Mỹ Phẩm</title>


    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">

</head>
<body>
<div id="web-service">

    <jsp:include page="header.jsp"/>
    <div id="session-body">
        <div class="container">
            <!-- Sidebar -->
            <div class="banner">
                <div class="banner-top">
                    <img src="https://media.hcdn.vn/hsk/1731489338homedmp1311.jpg" alt="Product Image">
                    <div class="price"><span class="old-price">268K</span> <span class="discount">127K</span></div>

                    <div class="gift">🎁 50K</div>
                </div>
                <div class="banner-top">
                    <img src="https://media.hcdn.vn/hsk/1731299749hasaki-hasaki-sieu-sale-1111-mua-1-tang-1-home-banner-desktop.jpg"
                         alt="Product Image">
                    <div class="price"><span class="old-price">298K</span> <span class="discount">194K</span></div>

                    <div class="gift">🎁 50K</div>
                </div>
                <div class="banner-top">
                    <img src="https://media.hcdn.vn/hsk/1721200384nowfree-3-846x250.jpg" alt="Product Image">
                    <div class="price"><span class="old-price">288K</span> <span class="discount">216K</span></div>

                    <div class="gift">🎁 50K</div>
                </div>
            </div>
            <div class="icons">
                <div class="menu-item">
                    <a href="sale-cuoi-thang.html">
                        <img src="https://media.hcdn.vn/hsk/icon/black-friday_2024.png" alt="Black Friday"/>
                        <p>Sale Cuối Tháng</p>
                    </a>
                </div>
                <div class="menu-item">
                    <a href="giao-2h.html">
                        <img src="https://media.hcdn.vn/hsk/icon/hsk-icon-nowfree-v2.png" alt="Giao 2H"/>
                        <p>Giao 2H</p>
                    </a>
                </div>
                <div class="menu-item">
                    <a href="nuoc-hoa-chinh-hang.html">
                        <img src="https://media.hcdn.vn/hsk/icon/hsk-icon-perfume-v2.png" alt="Nước Hoa Chính Hãng"/>
                        <p>Nước Hoa Chính Hãng</p>
                    </a>
                </div>
                <div class="menu-item">
                    <a href="clinic-spa.html">
                        <img src="https://media.hcdn.vn/hsk/icon/hasaki-clinic.png" alt="Clinic & S.P.A"/>
                        <p>Clinic & S.P.A</p>
                    </a>
                </div>
                <div class="menu-item">
                    <a href="clinic-deals.html">
                        <img src="https://media.hcdn.vn/hsk/icon/hsk-icon-clinic-deals-v2.png" alt="Clinic Deals"/>
                        <p>Clinic Deals</p>
                    </a>
                </div>
                <div class="menu-item">
                    <a href="mua-la-co-qua.html">
                        <img src="https://media.hcdn.vn/hsk/icon/hsk-icon-mua-la-co-qua.png" alt="Mua Là Có Quà"/>
                        <p>Mua Là Có Quà</p>
                    </a>
                </div>
                <div class="menu-item">
                    <a href="dat-hen.html">
                        <img src="https://media.hcdn.vn/hsk/icon/hasaki-dat-hen.png" alt="Đặt hẹn"/>
                        <p>Đặt hẹn</p>
                    </a>
                </div>
                <div class="menu-item">
                    <a href="cam-nang.html">
                        <img src="https://media.hcdn.vn/hsk/icon/hasaki-cam-nang.png" alt="Cẩm nang"/>
                        <p>Cẩm nang</p>
                    </a>
                </div>
            </div>
            <div class="FlashSale">
                <div class="flash-deals-header">
                    <span>Flash Deals</span>
                    <div class="timer">
                        <span class="timer-day"></span>
                    </div>
                </div>

                <div class="products" id="productSlider">
                    <!-- Các sản phẩm sẽ được chèn vào đây -->

                </div>
                <%--                <div class="directPage">--%>
                <%--                    <button class="prev" style="padding: 10px 12px; background-color:gray ; cursor: pointer; border: 2px; border-radius: 2px;" onclick="changeSlide(-1)">&#10094;</button>--%>
                <%--                    <button class="next"  onclick="changeSlide(1)">&#10095;</button>--%>
                <%--                </div>--%>
            </div>
            <div class="list-product">
                <div class="list-header">
                    <span>Danh Mục Sản Phẩm</span>
                </div>
                <!-- Lặp qua danh sách các sản phẩm -->
                <div class="products2 category-product" id="category-product">
                    <!-- Danh mục sản phẩm sẽ được tải vào đây -->
                </div>

                <div class="directPage">
                    <button class="prevCategory prev" style="     border: 2px;
    border-radius: 2px;padding: 10px 12px; cursor: pointer; background-color:gray ; border: 2px; border-radius: 2px;"
                            onclick="prevCategorySlide()">&#10094;
                    </button>
                    <button class="nextCategory next" style="    border: 2px;
    border-radius: 2px;padding: 10px 12px; cursor: pointer; background-color:gray ; border: 2px; border-radius: 2px;"
                            onclick="nextCategorySlide()">&#10095;
                    </button>
                </div>
            </div>
            <!-- Form thêm sản phẩm mới -->


            <div class="brand-section">
                <div class="brand-header">
                    <span>Thương hiệu</span>
                </div>
                <div class="brand-list">


                </div>
                <div class="directPage">
                    <button class="prevBrand prev" style=" padding: 10px 12px;     border: 2px;
    border-radius: 2px; cursor: pointer; background-color:gray ; border: 2px; border-radius: 2px;"
                            onclick="prevBrandSlide()">&#10094;
                    </button>
                    <button class="nextBrand next" style="     border: 2px;
    border-radius: 2px;padding: 10px 12px; cursor: pointer; background-color:gray ; border: 2px; border-radius: 2px;"
                            onclick="nextBrandSlide()">&#10095;
                    </button>
                </div>
            </div>

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
                        <input type="text" placeholder="Từ">
                        <input type="text" placeholder="Đến">
                    </div>
                    <button>Áp Dụng</button>
                </div>
                <h3>Thương Hiệu</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox" checked="showSelected()">Cocoon</li>
                    <li><input type="checkbox" class="item-checkbox"> Maybelline</li>
                    <li><input type="checkbox" class="item-checkbox"> Emmié by Happy Skin</li>
                    <li><input type="checkbox" class="item-checkbox"> Torriden</li>
                    <li><input type="checkbox" class="item-checkbox"> Vaseline</li>
                    <li><input type="checkbox" class="item-checkbox"> Anessa</li>
                    <li><input type="checkbox" class="item-checkbox"> Laneige</li>
                </ul>
                <h3>Tình Trạng Tóc</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Tóc Dầu Bết</li>
                    <li><input type="checkbox" class="item-checkbox"> Tóc Rối và Khô</li>
                    <li><input type="checkbox" class="item-checkbox"> Tóc dễ gãy rụng, mỏng và xẹp</li>
                    <li><input type="checkbox" class="item-checkbox"> Tóc khô xơ và hư tổn</li>
                </ul>
                <h3>Dung Tích</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Fullsize</li>
                    <li><input type="checkbox" class="item-checkbox"> Combo</li>
                    <li><input type="checkbox" class="item-checkbox"> Bộ 1 cây</li>
                    <li><input type="checkbox" class="item-checkbox"> Bộ 1 cây</li>
                    <li><input type="checkbox" class="item-checkbox"> 25ml</li>
                    <li><input type="checkbox" class="item-checkbox"> 100ml</li>
                    <li><input type="checkbox" class="item-checkbox"> 30 viên</li>
                    <li><input type="checkbox" class="item-checkbox"> Bộ 3 cây</li>
                </ul>
                <h3>TThành phần nổi bật</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Chống nắng vật lý lai hoá học</li>
                    <li><input type="checkbox" class="item-checkbox"> Niacinamide (Vitamin B3)</li>
                    <li><input type="checkbox" class="item-checkbox"> Panthenol (Vitamin B5)</li>
                    <li><input type="checkbox" class="item-checkbox"> Hyaluronic Acid</li>
                    <li><input type="checkbox" class="item-checkbox"> Glutathione</li>
                    <li><input type="checkbox" class="item-checkbox"> Dầu Argan</li>
                </ul>
                <h3>Loại da</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Da thường/Mọi loại da</li>
                    <li><input type="checkbox" class="item-checkbox"> Da dầu/Hỗn hợp dầu</li>
                    <li><input type="checkbox" class="item-checkbox"> Da nhạy cảm</li>
                    <li><input type="checkbox" class="item-checkbox"> Da khô/Hỗn hợp khô</li>
                    <li><input type="checkbox" class="item-checkbox"> Da mụn</li>
                </ul>
                <h3>Công dụng chính</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Dưỡng ẩm và cấp nước</li>
                    <li><input type="checkbox" class="item-checkbox"> Làm sáng và đều màu da</li>
                    <li><input type="checkbox" class="item-checkbox"> Kiểm soát dầu</li>
                    <li><input type="checkbox" class="item-checkbox"> Nâng tông da</li>
                    <li><input type="checkbox" class="item-checkbox"> Làm dịu da</li>
                    <li><input type="checkbox" class="item-checkbox"> Giúp tóc vào nếp suôn mượt</li>
                </ul>
                <h3>Tông màu</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Cam</li>
                    <li><input type="checkbox" class="item-checkbox"> Nâu</li>
                    <li><input type="checkbox" class="item-checkbox"> Hồng</li>
                    <li><input type="checkbox" class="item-checkbox"> Đỏ</li>
                </ul>
                <h3>TLoại sản phẩm</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Kem chống nắng</li>
                    <li><input type="checkbox" class="item-checkbox"> Serum / Tinh chất</li>
                    <li><input type="checkbox" class="item-checkbox"> Mặt nạ giấy</li>
                    <li><input type="checkbox" class="item-checkbox"> Son kem</li>
                    <li><input type="checkbox" class="item-checkbox"> Sữa rửa mặt</li>
                    <li><input type="checkbox" class="item-checkbox"> Kem dưỡng ẩm</li>
                    <li><input type="checkbox" class="item-checkbox"> Sữa tắm</li>
                </ul>
                <h3>Giới tính</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Nam và Nữ</li>
                    <li><input type="checkbox" class="item-checkbox"> Nữ</li>

                </ul>
                <h3>ĐẶC TÍNH</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Chống nắng phổ rộng</li>
                    <li><input type="checkbox" class="item-checkbox"> Dạng lì</li>
                    <li><input type="checkbox" class="item-checkbox"> Thuần chay (vegan)</li>
                    <li><input type="checkbox" class="item-checkbox"> Không paraben</li>
                    <li><input type="checkbox" class="item-checkbox"> Lông chải mềm</li>
                    <li><input type="checkbox" class="item-checkbox"> Có mùi hương</li>
                    <li><input type="checkbox" class="item-checkbox"> Không màu</li>
                </ul>
                <h3>Xuất xứ thương hiệu</h3>
                <ul>
                    <li><input type="checkbox" class="item-checkbox"> Hàn Quốc</li>
                    <li><input type="checkbox" class="item-checkbox"> Mỹ</li>
                    <li><input type="checkbox" class="item-checkbox"> Việt Nam</li>
                    <li><input type="checkbox" class="item-checkbox"> Nhật Bản</li>
                    <li><input type="checkbox" class="item-checkbox"> Pháp</li>
                    <li><input type="checkbox" class="item-checkbox"> Anh</li>
                    <li><input type="checkbox" class="item-checkbox"> Đức</li>
                </ul>
            </div>
            <div class="product-listing">

                <c:forEach var="product" items="${products}">

                    <div class="product" onclick="redirectToDetails(${product.id})">
                        <img src="${product.image}" alt="${product.name}">
                        <h4>${product.name}</h4>
                        <div class="vn_names">${product.detail}</div>

                        <div style="display: flex; justify-content: space-between;">

                            <p>${product.price}</p>

                            <p style="text-decoration: line-through;">300.000đ</p>
                        </div>
                        <button class="btn-buy">Buy Now</button>
                    </div>

                </c:forEach>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"/>
</div>


<%


%>

<%--<script>--%>
<%--    function  categorySearch(){--%>

<%--        const searchInput = document.getElementById("searchInput").value;--%>
<%--        console.log(searchInput)--%>
<%--     window.location.href =`danh-muc?name=`+searchInput;--%>


<%--    }--%>

<%--</script>--%>

<script>
    function categorySearch() {

        const searchInput = document.getElementById("searchInput").value;
        console.log(searchInput)
        window.location.href = `danh-muc?name=` + searchInput;


    }

</script>
<script src="js/main.js"></script>
<script src="js/searchProduct.js"></script>
<script src="js/updateUserMain.js"></script>
<script src="js/displayAllProduct.js"></script>

<script>
    function redirectToDetails(productId) {
        // Chuyển hướng đến Servlet với ID sản phẩm

        window.location.href = `productDetail?id=` + productId
    }

</script>

<%

    // Lấy username từ session
    User user = (User) session.getAttribute("user");

    String username = user.getFullName();


    // Nếu cưa đăng nhập, gán giá trị rỗng
    if (username == null) {
        username = "";
    }
%>

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


<% String searchProducts = (String) request.getAttribute("products");
%>

<script>

    const searchProducts = "<%= searchProducts %>";
</script>


<script>
    // Lấy phần tử hiển thị thời gian
    var timerDay = document.querySelector('.timer-day');

    // Thời gian kết thúc khuyến mãi (1 ngày từ thời điểm hiện tại)
    var endTime = new Date();
    endTime.setDate(endTime.getDate() + 1); // Thêm 1 ngày

    function updateTimer() {
        var now = new Date();
        var remainingTime = endTime - now;

        if (remainingTime <= 0) {
            timerDay.innerHTML = "Khuyến mãi đã kết thúc!";
            clearInterval(timerInterval); // Dừng cập nhật
            return;
        }

        var hours = Math.floor((remainingTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((remainingTime % (1000 * 60)) / 1000);

        timerDay.innerHTML = ` ${hours} : ${minutes} : ${seconds} `;
    }

    // Cập nhật thời gian mỗi giây
    var timerInterval = setInterval(updateTimer, 1000);

    // Hiển thị lần đầu
    updateTimer();

</script>


</body>
</html>