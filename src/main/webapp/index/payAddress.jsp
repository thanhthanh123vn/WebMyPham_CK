<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/8/2025
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đơn hàng của tôi</title>
    <link rel="stylesheet" href="../css/payAddress.css">
    <link rel="icon" href="../image/logo.png" type="image/x-icon">
</head>
<body>
<div class="address-modal">
    <div class="modal-header">
        <h2>Thêm địa chỉ mới</h2>
        <button class="close-btn">×</button>
    </div>

    <div class="modal-body">
        <div class="form-group">
            <input id="fullname" name="fullname" type="text" rules="required" type="text" placeholder="Họ và tên" class="form-control">
            <span class="form-message"></span>
            <input id="phone" name="phone" type="text" rules="required" type="text" placeholder="Số điện thoại" class="form-control">
            <span class="form-message"></span>
        </div>
        <form class="city1">
            <div class="form-group">
                <select id="city" required>
                    <option value="">Chọn Tỉnh/Thành phố</option>
                    <option value="hanoi">Hà Nội</option>
                    <option value="haiphong">Hải Phòng</option>
                    <option value="thuathienhue">Thừa Thiên Huế</option>
                    <option value="nhatrang">Nha Trang</option>
                    <option value="danang">Đà Nẵng</option>
                    <option value="tphcm">Thành phố Hồ Chí Minh</option>
                    <option value="cantho">Cần Thơ</option>
                </select>
            </div>
            <div class="district1">
                <div class="form-group">
                    <select id="district" required>
                        <option value="" id="district-option">Chọn Quận/Huyện</option>
                    </select>
                </div>
            </div>
            <fo class="xa">
                <div class="form-group">
                    <select id="address" required>
                        <option value="">Chọn phường/xã</option>
                    </select>
                </div>
        </form>
        <div class="form-group">
            <input id="number-hours" name="phone" type="text" rules="required" type="text" placeholder="Số nhà + tên đường" class="form-control">
            <span class="form-message"></span>
        </div>
        <p class="warning-text">Vui lòng chọn Tỉnh/TP, Quận/ Huyện và Phường/ xã trước khi nhập Số nhà + Tên Đường</p>
        <div class="address-type">
            <span>Chọn loại địa chỉ</span>
            <button class="btn btn-selected" id="buttonhome">Nhà riêng</button>
            <button class="btn" id="buttonCity">Công ty</button>
        </div>
        <div class="default-address">
            <span>Đặt làm địa chỉ mặc định</span>
            <input type="checkbox">
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn cancel-btn" onclick="resetForm()" >Hủy</button>
        <button class="btn continue-btn"   onclick="addAddressUser()">Tiếp tục</button>
    </div>

</div>
</body>
<script src="${pageContext.request.contextPath}/js/loadAddress.js"></script>
<script src="${pageContext.request.contextPath}/js/insertAddressUser.js"></script>

</html>

