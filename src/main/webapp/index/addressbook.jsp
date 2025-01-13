<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/13/2025
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đơn hàng của tôi</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addressbook.css">
    <link rel="icon" href="${pageContext.request.contextPath}/image/logo.png" type="image/x-icon">
</head>

<body>
<div id="web-service">
   <jsp:include page="${pageContext.request.contextPath}/header.jsp"/>
    <div id="session-body">
        <div class="container">
            <div class="breadcrumb">
                <a href="main.html">Trang chủ ></a>
                <a href="#">Giỏ hàng</a>
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
                        <a href="qldonhang.html" class="item_menu_profile ">Đơn hàng
                            của tôi</a>
                        <a href="myBooking.html" class="item_menu_profile ">Booking của tôi</a>
                        <a href="addressbook.html" class="item_menu_profile active ">Sổ địa chỉ
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
                        <h5 class="title-1">Sổ địa chỉ</h5>
                        <div class="box">
                            <h6 class="title-2">Bạn muốn giao hàng đến địa chỉ khác? </h6>
                            <button id="ids" class="btn-1">Thêm địa chỉ mới</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <jsp:include page="${pageContext.request.contextPath}/footer.jsp"/>
</div>
<script src="../js/updateUserMain.js"></script>
<script>
    document.getElementById("ids").onclick = function () {
        window.location.href = "${pageContext.request.contextPath}/index/newaddress.jsp";
    };


</script>
</body>

</html>