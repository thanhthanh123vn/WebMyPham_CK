

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đơn hàng của tôi</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/changePW.css">
    <link rel="icon" href="../image/logo.png" type="image/x-icon">
</head>

<style>
    /* reset tất cả phần tử của html */
</style>

<body>
<div id="web-service">
 <jsp:include page="../header.jsp"/>
    <div id="session-body">
        <div class="container">
            <div class="body-left">
                <div class="content-left">
                    <div class="content-icon">
                        <div class="avt">
                            <img src="https://hasaki.vn/images/graphics/account-full.svg">
                        </div>
                        <div class="name">
                            <strong>Chào Le Thanh</strong>

                            <a href="https://hasaki.vn/customer/account/edit/">Chỉnh sửa tài khoản</a>
                        </div>
                    </div>
                    <div class="menu_profile">
                        <a href="https://hasaki.vn/customer/account/index" class="item_menu_profile ">Quản lý tài
                            khoản</a>
                        <a href="https://hasaki.vn/user/loyalty/home" class="item_menu_profile ">Hasaki tích
                            điểm</a>
                        <a href="inforUser.html" class="item_menu_profile active">Thông tin tài
                            khoản</a>
                        <a href="https://hasaki.vn/sales/order/history" class="item_menu_profile ">Đơn hàng
                            của tôi</a>
                        <a href="https://hasaki.vn/bookings/history" class="item_menu_profile ">Booking của tôi</a>
                        <a href="https://hasaki.vn/customer/address/index" class="item_menu_profile ">Sổ địa chỉ
                            nhận hàng</a>
                        <a href="https://hasaki.vn/wishlist" class="item_menu_profile ">Danh sách yêu thích</a>
                        <a href="https://hasaki.vn/user/repurchase-products" class="item_menu_profile ">Mua lại</a>
                        <a href="https://hasaki.vn/sales/product/question" class="item_menu_profile ">Hỏi đáp</a>
                    </div>
                </div>
            </div>
            <div class="body-right">
                <form action="http://localhost:8080/WebMyPham__/updateUser" method="POST" class="form" id="register-form">
                    <h3 class="heading">Thay đổi mật khẩu</h3>

                    <div class="spacer"></div>

                    <div class="form-group">
                        <label for="fullname"  class="form-label">Mật khẩu hiện tại:</label>
                        <input id="password" name="password" type="password" rules="required"
                               placeholder=" Nhập mật khẩu cũ" class="form-control">
                        <span class="form-message"></span>
                    </div>



                    <div class="form-group">
                        <label for="password" class="form-label">Mật khẩu mới:</label>
                        <input id="re-password" name="re-password" rules="required|min:6" type="password"
                               placeholder="Nhập mật khẩu mới" class="form-control">
                        <span class="form-message"></span>
                    </div>

                    <div class="form-group">
                        <label for="confirm-password" class="form-label">Nhập lại Mật khẩu:</label>
                        <input id="confirm-password" name="confirm-password" rules="required|min:6|match:password"
                               type="password" placeholder="Nhập lại mật khẩu" class="form-control">
                        <span class="form-message"></span>
                    </div>
                    <span class="form-message" style="margin-left: auto; margin-right: auto; color: red;" >${isSuccess}</span>
                    <button class="form-submit">Cập nhập</button>
                </form>
            </div>
        </div>
    </div>
 <jsp:include page="../footer.jsp"/>



    <script src="../js/updateUserMain.js"></script>


    <script src="../js/validator.js"></script>

    <script>
        var registerForm = document.getElementsByClassName('register-form');
        registerForm.onclick = function(){

            // Kiểm tra dữ liệu form
            console.log("onlick");
            const fullname = localStorage.getItem('tagData');

            const password = document.getElementById('password').value;
            const re_password = document.getElementById('re-password').value;
            const confi_password = document.getElementById('confirm-password').value;
            // Tạo một đối tượng chứa thông tin người dùng
            const userData = {
                fullname:fullname,

                password: password
            };

            // Kiểm tra xem email đã tồn tại chưa
            fetch('http://localhost:3000/users')
                .then(response => response.json())
                .then(users => {
                    const fullName = localStorage.getItem('tagData');
                    const existingUser = users.find(user => user.fullName === userData.fullName);

                    if (existingUser) {
                        if(userData.password === existingUser.password && re_password === confi_password){
                            // Email đã tồn tại, cập nhật mật khẩu
                            fetch(`http://localhost:3000/users/${existingUser.id}`, {
                                method: 'PATCH',
                                headers: {
                                    'Content-Type': 'application/json'
                                },
                                body: JSON.stringify({ password: userData.password }) // Cập nhật mật khẩu
                            })
                                .then(response => {
                                    if (!response.ok) {
                                        throw new Error('Cập nhật mật khẩu thất bại!');
                                        alert('Cập nhật mật khẩu thất bại!');
                                    }
                                    return response.json();
                                })
                                .then(data => {
                                    console.log('Cập nhật mật khẩu thành công:', data);
                                    alert('Mật khẩu đã được cập nhật thành công!');
                                    //window.location.href = 'login.html'; // Chuyển hướng đến trang đăng nhập
                                })
                                .catch(error => {
                                    console.error('Lỗi khi cập nhật mật khẩu:', error);
                                    alert('Cập nhật mật khẩu thất bại!');
                                });
                        }
                    } else {
                        // Nếu email chưa tồn tại, thực hiện đăng ký
                        fetch('http://localhost:3000/users', {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json'
                            },
                            body: JSON.stringify(userData) // Gửi dữ liệu đăng ký
                        })
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Đăng ký thất bại!');
                                }
                                return response.json();
                            })
                            .then(data => {
                                console.log('Thành công:', data);
                                window.location.href = 'login.html'; // Chuyển hướng đến trang đăng nhập
                            })
                            .catch(error => {
                                console.error('Lỗi trong quá trình đăng ký:', error);
                                alert('Đăng ký thất bại!');
                            });
                    }
                })
                .catch(error => {
                    console.error('Lỗi khi kiểm tra email:', error);
                    alert('Lỗi kiểm tra email!');
                });
        }





    </script>


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

</body>

</html>