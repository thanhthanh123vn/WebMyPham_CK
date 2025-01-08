<%@ page import="object.UserInf" %>
<%@ page import="gson.GsonUtil" %>
<%@ page import="object.Product" %><%--
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

  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/delivery.css">
</head>
<%
  UserInf user = (UserInf) session.getAttribute("userAddress");
  if (user != null) {
    System.out.println(user.toString() + " JSPSErverad");
  } else {
    System.out.println("User address is null JSP");
  }
%>
<body>
<div class="address-modal">
  <div class="modal-header">
    <h2>Địa chỉ nhận hàng</h2>
    <button class="close-btn">×</button>
  </div>
  <div class="modal-body">
    <div class="address-info">
      <div class="address-details">
        <% if (user != null) { %>
        <p><span class="user-name"><%=user.getUserName()%></span> - <span class="user-phone"><%=user.getPhone()%></span></p>
        <p class="user-address"><%=user.getAddress()%></p>
        <div class="tags">
          <span class="tag home-tag">Nhà riêng</span>
          <span class="tag default-tag">Địa chỉ mặc định</span>
        </div>
        <% } else { %>
        <p>Không có thông tin địa chỉ.</p>
        <% } %>
      </div>
      <div class="address-actions">
        <button class="delete-btn"><i class="fas fa-trash-alt"></i></button>
        <a href="payAddress.html" class="edit-link">Sửa</a>
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <a href="#" class="add-address-link">Thêm địa chỉ mới <i class="fas fa-plus-circle"></i></a>
    <button class="btn cancel-btn" onclick="window.location.href='payAddress.jsp'">Hủy</button>
    <button class="btn continue-btn" id="back" onclick="redirectPay()">Tiếp tục</button>
  </div>
</div>

<% Product product = (Product) request.getAttribute("product");
String topayProduct = new GsonUtil().getGson().toJson(product)
        ;
  Product cart = (Product) request.getAttribute("cart");
  String topayCartProduct = new GsonUtil().getGson().toJson(cart);
%>
<script src="${pageContext.request.contextPath}/js/delivery.js">
  const  topayProduct = JSON.parse(<%=topayProduct%>);
  const  topayCartProduct = JSON.parse(<%=topayCartProduct%>);
</script>

</body>
</html>
