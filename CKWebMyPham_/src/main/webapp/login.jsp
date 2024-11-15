<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link rel="stylesheet" href="css/signUp.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body,
        html {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #8a2be2, #87ceeb);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 1200px;
            padding: 20px;
        }
        p,
        a {
            margin-top: 20px;
            font-size: 14px;
            line-height: 20px;
            font-weight: 700;
            font-style: bold;
        }

        a:hover {
            color: #23df12;
            text-decoration: none;
            cursor: pointer;
        }

        .login-alt {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px 0;
        }



        .login-alt img {
            width: 40px;
            height: 40px;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .login-alt img:hover {
            transform: scale(1.1);
            background-color: aqua;
        }

        .sign-up {
            color: gray;
            margin-top: 20px;
            font-size: 15px;
        }


        .sign-up a {
            text-decoration: none;
            color: #6A006A;
            font-weight: bold;
        }

        .sign-up a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="form-sign">

            <form action="LoginHandle" method="POST" class="form" id="register-form">
                <h3 class="heading">Đăng Nhập❤️</h3>

                <div class="spacer"></div>

                <div class="form-group">
                    <label for="username" class="form-label">Tên đầy đủ</label>
                    <input id="username" name="username" type="text" rules="required" placeholder="VD: Nguyễn Thạnh"
                        class="form-control">
                    <span class="form-message"></span>
                </div>


                <div class="form-group">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <input id="password" name="password" rules="required|min:6" type="password"
                        placeholder="Nhập mật khẩu" class="form-control">
                    <span class="form-message"></span>
                </div>



                <button class="form-submit">Đăng Nhập</button>
                <a id="quenmk">Quên mật khẩu</a>
                <p>Hoặc đăng nhập bằng</p>
                <div class="login-alt">
                    <img src="https://img.icons8.com/ios-filled/50/000000/facebook-new.png" alt="Facebook">
                    <img src="https://img.icons8.com/ios-filled/50/000000/google-logo.png" alt="Google">
                </div>
                <p class="sign-up">Bạn chưa có tài khoản? <a href="signUp.html">Đăng ký</a></p>
            </form>
        </div>
    </div>
    <script src="../js/validator.js"></script>
    <script>


       
        var quenMk = document.getElementById('quenmk');

        quenMk.onclick = function () {

            window.location.href = '../startbootstrap-sb-admin-2-gh-pages/forgot-password.html';
        }
        var loginForm = Validator('#register-form', {
            onSubmit: function () {
                // Lấy dữ liệu từ form
               
        });
    

    </script>
</body>

</html>