function createProductHTML(product, isPayProduct = false) {
    return `
                <div class="cart-item">
                    <div class="product-info">
                        <img src="${product.image}" alt="${product.name}">
                        <div class="product-details">
                            <h3 class="nameProduct">${product.name}</h3>
                            <p class="detailProduct">${product.detail || "Không có mô tả"}</p>
                            <span class="priceProduct">${product.price ? product.price + "đ" : "N/A"}</span>
                            <div class="actions">
                                <a href="#">Yêu thích</a> |
                                <a href="#" onclick="removeOrderProduct(${product.id})">Hủy Đặt Hàng</a>
                            </div>
                            <div class="promotion">Tặng ngay phần quà khi mua tại cửa hàng còn quà</div>
                            <div class="promotion quantityProduct">Số lượng: ${isPayProduct ? (product.quantity || "N/A") : product.count}</div>
                        </div>
                    </div>
                </div>
            `;
}
// Hàm xử lý hủy đặt hàng
function removeOrderProduct(productId) {
    console.log("Hủy đặt hàng sản phẩm có ID:", productId);
    // Thêm logic xử lý hủy đặt hàng ở đây
}