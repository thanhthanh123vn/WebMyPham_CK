<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/8/2025
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Địa chỉ nhận hàng</title>
  <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" type="image/x-icon">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/delivery.css">
</head>
<body>
<div class="address-modal">
  <div class="modal-header">
    <h2>Địa chỉ nhận hàng</h2>
    <button class="close-btn">×</button>
  </div>
  <div class="modal-body">
    <div class="address-info">
      <div class="address-details">
        <p><span class="user-name">${userAddress.userName}</span> - <span class="user-phone">${userAddress.phone}</span></p>
        <p class="user-address">${userAddress.address}</p>
        <div class="tags">
          <span class="tag home-tag">Nhà riêng</span>
          <span class="tag default-tag">Địa chỉ mặc định</span>
        </div>
      </div>
      <div class="address-actions">
        <button class="delete-btn"><i class="fas fa-trash-alt"></i></button>
        <a href="payAddress.html" class="edit-link">Sửa</a>
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <a href="#" class="add-address-link">Thêm địa chỉ mới <i class="fas fa-plus-circle"></i></a>
    <button class="btn cancel-btn" onclick="window.href.window='payAddress.html'">Hủy</button>
    <button class="btn continue-btn" id="back">Tiếp tục</button>
  </div>
</div>
</body>
</html>
</title>
</head>
<body>
<script>
  var back = document.getElementById('back');
  back.onclick = function () {
    window.location.href = 'checkout.html';
  }


</script>
<script src="${pageContext.request.contextPath}/js/delivery.js"></script>
</body>
</html>