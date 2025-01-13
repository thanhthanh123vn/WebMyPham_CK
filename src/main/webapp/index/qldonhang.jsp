<%@ page import="object.Product" %>
<%@ page import="gson.GsonUtil" %>
<%@ page import="object.cart.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="object.cart.ProductCart" %>
<%@ page import="object.User" %><%--
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
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
                        <a href="${pageContext.request.contextPath}/index/inforUser.jsp" class="item_menu_profile ">Thông tin tài
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
                            <c:choose>
                                <!-- Kiểm tra nếu giỏ hàng có sản phẩm -->
                                <c:when test="${not empty sessionScope.cart.list}">
                                    <c:forEach var="cartItem" items="${sessionScope.cart.list}">
                                        <div class="product-info">
                                            <img src="${cartItem.image}" alt="${cartItem.name}">
                                            <div class="product-details">
                                                <h3 class="nameProduct">${cartItem.name}</h3>
                                                <p class="detailProduct">${cartItem.detail}</p>
                                                <span class="priceProduct">
            <c:choose>
                <c:when test="${cartItem.price != null}">
                    ${cartItem.price}
                </c:when>
                <c:otherwise>
                    N/A
                </c:otherwise>
            </c:choose>
          </span>
                                                <div class="actions">
                                                    <a href="#">Yêu thích</a> | <a href="#" onclick="remoteOrderProduct(cartItem.id)">Hủy Đặt Hàng</a>
                                                </div>
                                                <div class="promotion">Tặng ngay phần quà khi mua tại cửa hàng còn quà
                                                </div>
                                                <div class="promotion quantityProduct">Số lượng: ${cartItem.count}</div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:when>


                                <!-- Nếu giỏ hàng không có sản phẩm nhưng có sản phẩm thanh toán -->
                                <c:otherwise>
                                    <c:if test="${not empty sessionScope.payProduct}">
                                    <div class="cart-item">
                                        <div class="product-info">
                                            <img src="${sessionScope.payProduct.image}"
                                                 alt="${sessionScope.payProduct.name}">
                                            <div class="product-details">
                                                <h3 class="nameProduct">${sessionScope.payProduct.name}</h3>
                                                <p class="detailProduct">${sessionScope.payProduct.detail}</p>
                                                <span class="priceProduct">
                                <c:choose>
                                    <c:when test="${sessionScope.payProduct.price != null}">
                                        ${sessionScope.payProduct.price}
                                    </c:when>

                                </c:choose>
                              </span>
                                                <div class="actions">
                                                    <a href="#">Yêu thích</a> | <a href="#" onclick="remoteOrderProduct(${sessionScope.payProduct.id})">Hủy Đặt Hàng</a>
                                                </div>
                                                <div class="promotion">Tặng ngay phần quà khi mua tại cửa hàng còn quà
                                                </div>
                                                <div class="promotion quantityProduct">Số lượng:
                                                    <c:choose>
                                                        <c:when test="${sessionScope.payProduct.quantity != null}">
                                                            ${sessionScope.payProduct.quantity}
                                                        </c:when>

                                                    </c:choose>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:otherwise>
                            </c:choose>


                        </div>

                    </div>

                    <div style="margin-top: 30px;">
                        <a href="index.jsp" class="btn" style="  color: white;
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


<%

    // Lấy username từ session
    User user = (User) session.getAttribute("user");

    String username = user.getFullName();


    // Nếu cưa đăng nhập, gán giá trị rỗng
    if (username == null) {
        username = "";
    }
%>
 <script src="${pageContext.request.contextPath}/js/updateUserMain.js"></script>
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

    function toggleChat() {
        var chatBox = document.getElementById("chatBox");
        if (chatBox.style.display === "none" || chatBox.style.display === "") {
            chatBox.style.display = "flex";
        } else {
            chatBox.style.display = "none";
        }
    }
</script>


        <script>

          async function remoteOrderProduct(id){
               const response = await fetch(`remoteOrderProduct?productId=`+id, {
                   method: 'GET'
               });

               if (response.ok) {
                   alert("  hủy đơn hàng thành công.");


               } else {
                   alert("Lỗi khi hủy đơn hàng.");
               }

           }
        </script>



</body>

</html>