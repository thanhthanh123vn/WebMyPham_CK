<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/8/2025
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đặt hàng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/checkout.css" />
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" type="image/x-icon">
</head>
<body>
<header class="header">
    <div class="container">
        <div class="columns">
            <a href="main.html">
                <div class="logo">
                    <img src="${pageContext.request.contextPath}/images/logo.png">
                </div>
            </a>
            <div class="right-support right">
                <a href="payAddress.jsp">Thanh Toán</a>
            </div>
        </div>
    </div>
</header>
<div class="session-body">
    <!-- Left Section -->
    <div class="left-section">
        <!-- Địa chỉ nhận hàng -->
        <div class="card">
            <div class="card-header">Địa chỉ nhận hàng</div>
            <div class="card-content">
                <span class="badge">Nhà riêng</span>
                <span class="name user-name">${sessionScope.userAddress.userName}</span>
                <span class="phone user-phone">- ${sessionScope.userAddress.phone}</span>
                <div class="address user-address">${sessionScope.userAddress.address}</div>
            </div>
            <div class="action">
                <a href="payAddress.jsp">Thay đổi</a>
            </div>
        </div>
        <!-- Hình thức thanh toán -->
        <div class="card">
            <div class="card-header">Hình thức thanh toán</div>
            <div class="card-content">
          <span class="radio">
            <input type="radio" checked />
            <span>💵 Thanh toán khi nhận hàng (COD)</span>
          </span>
            </div>
        </div>
        <!-- Phiếu mua hàng -->
        <div class="card">
            <div class="card-header">Phiếu mua hàng</div>
            <div class="action">
                <a href="#">Chọn phiếu mua hàng</a>
            </div>
        </div>
        <!-- Mã giảm giá -->
        <div class="card">
            <div class="card-header">Mã giảm giá</div>
            <div class="action">
                <a href="#">Nhập mã giảm giá</a>
            </div>
        </div>
        <!--thông tin kiện hàng-->
        <div class="card">
            <div class="card-header">Thông tin kiện hàng</div>
            <div class="order-info-container">
                <div class="shipping-info">
                    <div class="shipping-date">
                        <span>Thứ 2, 25/11 - Thứ 4, 27/11</span>
                        <span class="shipping-cost">10.000 ₫</span>
                    </div>
                    <div class="shipping-note">Giao trong 4-6 ngày</div>
                </div>



                <div class="order-summary">
                    <textarea placeholder="Ghi chú"></textarea>
                    <div class="total">
                        <span class="total-label">Tổng tiền (1):</span>
                        <span class="total-amount">${sessionScope.cart.totalCart}</span>
                    </div>
                    <button class="order-button" onclick="window.location.href='main.html'"> Đặt hàng</button>
                    <p class="terms-note">
                        Nhấn "Đặt hàng" đồng nghĩa việc bạn đồng ý tuân theo
                        <a href="#">Chính sách xử lý dữ liệu cá nhân</a> &
                        <a href="#">Điều khoản Hasaki</a>.
                    </p>
                </div>
            </div>

        </div>
    </div>


    <!-- Right Section -->
    <div class="right-section">
        <div class="order-summary">
            <button class="order-btn" onclick="window.location.href='main.html'"> Đặt hàng</button>
            <div class="invoice">
                <span>Thông tin xuất hóa đơn</span>
                <a href="#">Nhập</a>
            </div>
            <div class="order-details">
                <div class="row">
                    <span class="label">Tạm tính (1)</span>
                    <span class="value">${sessionScope.cart.totalCart}</span>
                </div>
                <div class="row">
                    <span class="label">Giảm giá</span>
                    <span class="value">-0 đ</span>
                </div>
                <div class="row">
                    <span class="label">Phí vận chuyển</span>
                    <span class="value">0 đ</span>
                </div>
                <div class="row total">
                    <span class="label">Thành tiền (Đã VAT)</span>
                    <span class="value">${sessionScope.cart.totalCart}</span>
                </div>
            </div>
            <div class="policy">
                Đã bao gồm VAT, phí đóng gói, phí vận chuyển và các chi phí khác. Vui lòng xem <a href="#">Chính sách vận chuyển</a>
            </div>
        </div>
    </div>
</div>
<script src="../js/delivery.js"></script>
<script src="../js/checkout.js"></script>
</body>
</html>
