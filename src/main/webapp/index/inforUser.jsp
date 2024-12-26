<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 12/25/2024
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đơn hàng của tôi</title>
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/infouser.css">
  <link rel="icon" href="../image/logo.png" type="image/x-icon">
</head>

<body>
<div id="web-service">
  <jsp:include page="../header.jsp"/>
  <div id="session-body">
    <div class="container">
      <div class="breadcrumb">
        <a href="main.html">Trang chủ ></a>
        <a href="#">Thông Tin Tài Khoản</a>
      </div>
      <div class="body-left">
        <div class="content-left">
          <div class="content-icon">
            <div class="avt">
              <img src="https://hasaki.vn/images/graphics/account-full.svg">
            </div>
            <div class="name">
              <strong>Chào Le Thanh</strong>

              <a href="#">Chỉnh sửa tài khoản</a>
            </div>
          </div>
          <div class="menu_profile">
            <a href="qliUser.html" class="item_menu_profile ">Quản lý tài
              khoản</a>
            <a href="accumulationOfP.html" class="item_menu_profile ">TTT tích
              điểm</a>
            <a href="inforUser.html" class="item_menu_profile active">Thông tin tài
              khoản</a>
            <a href="qldonhang.html" class="item_menu_profile ">Đơn hàng
              của tôi</a>
            <a href="myBooking.html" class="item_menu_profile ">Booking của tôi</a>
            <a href="#" class="item_menu_profile ">Sổ địa chỉ
              nhận hàng</a>
            <a href="spyt.html" class="item_menu_profile ">Danh sách yêu thích</a>
            <a href="redeemProduct.html" class="item_menu_profile ">Mua lại</a>
            <a href="q&a.html" class="item_menu_profile ">Hỏi đáp</a>
          </div>
        </div>
      </div>
      <div class="account-info-container">
        <div class="account-section">
          <h2>Thông tin tài khoản</h2>
          <div class="profile-picture">
            <div class="profile-picture-left">
              <img src="https://hasaki.vn/images/graphics/account-full.svg" alt="Tài ảnh của bạn">
              <a>Tải ảnh của bạn</a>
            </div>
            <div class="profile-picture-right">
              <input type="email" value="${user.email}" name="email" id="email"  readonly>
              <input type="text" value="${user.fullName}" name="fullName" id="fullname" readonly>
            </div>
          </div>


          <div class="gender-selection">
            <label><input type="radio" name="gender" value="male"> Nam</label>
            <label><input type="radio" name="gender" value="female"> Nữ</label>
            <label><input type="radio" name="gender" value="unspecified" checked> Không xác định</label>
          </div>

          <label>Ngày sinh (Không bắt buộc)</label>
          <div class="birthdate-selection">
            <select>
              <option>Ngày</option>
              <!-- Thêm các tùy chọn ngày -->
            </select>
            <select>
              <option>Tháng</option>
              <!-- Thêm các tùy chọn tháng -->
            </select>
            <select>
              <option>Năm</option>
              <!-- Thêm các tùy chọn năm -->
            </select>
          </div>
          <div class=".birthdate-selection-footer">

            <label><input type="checkbox"> Nhận thông tin khuyến mãi qua e-mail</label>
            <button class="update-btn" onclick="UpdateUser()" >Cập nhật</button>
          </div>
        </div>

        <div class="contact-section">
          <h3>Số điện thoại và Email</h3>
          <div class="contact-info-update">
            <p><img src="https://hasaki.vn/images/icons/icon_call.svg">Số điện thoại</br>Cập nhập số
              điện thoại</p>
            <button>Cập nhật</button>
          </div>
          <div class="contact-info-update">
            <p><img src="https://hasaki.vn/images/icons/icon_email.svg"> Email
              </br>
              ${user.email}
            </p>

          </div>
          <h3>Bảo mật</h3>
          <div class="contact-info-update">
            <p><img src="https://hasaki.vn/images/icons/icon_key.svg"> Đổi mật khẩu</p>
            <button onclick="LinkupdatePass()">Cập nhật</button>
          </div>
          <h3>Liên kết mạng xã hội</h3>
          <div class="contact-info-update">
            <p><img src="https://hasaki.vn/images/icons/icon_fb.svg"> Facebook</p>
            <button>Cập nhật</button>
          </div>
          <div class="contact-info-update">
            <p><img src="https://hasaki.vn/images/icons/icon_google.svg">Google</p>
            <button class="linked-btn">Đã liên kết</button>
          </div>
        </div>

      </div>
    </div>


    <jsp:include page="../footer.jsp"/>

    <script src="../js/searchProduct.js"></script>

    <script src="../js/updateUserMain.js"></script>
    <script src="../js/main.js"></script>





    <script>

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
      htkh.onclick = function () { window.location.href = 'htkh.html'; }


      var htch = document.getElementById('htch');
      htch.onclick = function () { window.location.href = 'htch.html' }


    </script>
    <script src="../js/UpdateUser.js"></script>

</body>

</html>