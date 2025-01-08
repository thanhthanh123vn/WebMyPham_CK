<%@ page import="object.Product" %>
<%@ page import="gson.GsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/8/2025
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đơn hàng của tôi</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/qldonhang.css">
  <link rel="icon" href="../image/logo.png" type="image/x-icon">

  <style>

    .cart-item {

      display: flex;
      align-items: center;
      padding: 15px;
      background-color: #ffffff;
      margin-bottom: 10px;
      border: 2px solid black;
      border-radius: 5px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .product-info {
      display: flex;
      align-items: center;

    }

    .product-info img {
      width: 80px;
      height: 80px;
      margin-right: 15px;
    }

    .product-details {
      display: flex;
      flex-direction: column;
    }

    .product-details h3 {
      margin: 0;
      font-size: 18px;
      font-weight: bold;
      color: #333333;
    }

    .product-details p {
      margin: 5px 0;
      font-size: 18px;
    }

    .product-details span {
      font-size: 16px;
      color: #ff0000;
    }

    .product-details del {
      margin-left: 10px;
      color: #999999;
    }

    .actions {
      margin-top: 10px;
    }

    .actions a {
      text-decoration: none;
      color: #007bff;
      font-weight: bold;
    }

    .actions a:hover {
      color: #0056b3;
    }

    .promotion {
      margin-top: 5px;
      font-size: 14px;
      color: #ff5722;
    }
    .txt .btn {
      color: white;
      background-color: #055617;
      border: none;
      padding: 15px;
      border-radius: 5px;
      cursor: pointer;
      text-decoration: none;
    }

  </style>
</head>

<body>
<div id="web-service">
  <jsp:include page="../header.jsp"/>
  <div id="session-body">
    <div class="container">
      <div class="breadcrumb">
        <a href="main.html">Trang chủ ></a>
        <a href="#" id="infor">Đơn hàng của tôi</a>
      </div>
      <div class="body-left">
        <div class="content-left">
          <div class="content-icon">
            <div class="avt">
              <img src="https://hasaki.vn/images/graphics/account-full.svg">
            </div>
            <div class="name">
              <strong>Chào bạn</strong>

              <a href="https://hasaki.vn/customer/account/edit/">Chỉnh sửa tài khoản</a>
            </div>
          </div>
          <div class="menu_profile">
            <a href="qliUser.html" class="item_menu_profile ">Quản lý tài
              khoản</a>
            <a href="accumulationOfP.html" class="item_menu_profile ">TTT tích
              điểm</a>
            <a href="inforUser.html" class="item_menu_profile ">Thông tin tài
              khoản</a>
            <a href="qldonhang.html" class="item_menu_profile active">Đơn hàng
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
      <div class="body-right">
        <div class="content-right">
          <div class="content-box">
            <div class="title">
              <a href="/sales/order/history/" title="Mua online" class="item_donhang ">Mua online</a>
              <a href="/sales/order/history/?type=offline" title="Mua tại cửa hàng"
                 class="item_donhang1">Mua tại cửa hàng</a>
            </div>

            <div class="menu-day">
              <select id="view" required>
                <option value="">Hiển thị tất cả</option>
                <option value="1day">Trong 1 ngày</option>
                <option value="1tuan">Trong 1 tuần</option>
                <option value="1thang">Trong 1 tháng</option>
                <option value="3thang">Trong 3 tháng</option>
                <option value="6thang">Trong 6 tháng</option>
                <option value="1nam">Trong 1 năm</option>

              </select>
            </div>
          </div>
          <div id="content-list">

            <div class="cart-item">
              <div class="product-info">
                <img src="https://media.hcdn.vn/catalog/product/p/r/promotions-auto-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml_qo5GfcimUJ2bPNQd_img_80x80_d200c5_fit_center.png" alt="L'OREAL">
                <div class="product-details">
                  <h3 class="nameProduct"> L'OREAL</h3>
                  <p class="detailProduct">Nước Tẩy Trang L'Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml</p>
                  <span class="priceProduct"> </span>
                  <div class="actions">
                    <a href="#">Yêu thích</a> |<a href="#">Hủy Đặt Hàng</a>
                  </div>
                  <div class="promotion">Tặng ngay phần quà khi mua tại cửa hàng còn quà</div>
                  <div class="promotion" class="quantityProduct">Số lượng : 1</div>
                </div>
              </div>

            </div>

            <div style="margin-top: 30px;">
              <a href="main.html" class="btn" style="  color: white;
            background-color: #055617;
            border: none;
            padding: 15px;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
            text-decoration: none;">Tiếp tục mua sắm</a>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="../footer.jsp"/>
</div>
<% Product product = (Product) request.getAttribute("product");
  String topayProduct = new GsonUtil().getGson().toJson(product)
          ;
  Product cart = (Product) request.getAttribute("cart");
  String topayCartProduct = new GsonUtil().getGson().toJson(cart);
%>
<script src="${pageContext.request.contextPath}/js/updateUserMain.js"></script>
<script src="${pageContext.request.contextPath}/js/managerProduct.js">

  const  topayProduct = <%= topayProduct %>;
  const  topayCartProduct = <%= topayCartProduct %>;
</script>
</body>

</html>