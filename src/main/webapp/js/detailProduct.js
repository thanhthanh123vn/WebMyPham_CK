function addCart(product) {
    if (confirm("Bạn có chắc chắn muốn xóa sản phẩm này?")) {

        fetch("http://localhost:8080/WebMyPham__/addCart", { // Adjust the URL for product removal
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(product)
        }).then(response => {
            if (response.ok) {
                products.splice(index, 1); // Remove product from local array
                alert("Sản phẩm đã được thêm vào giỏ hàng thành công!");

            } else {
                alert("Lỗi khi khi thêm  sản phẩm vào giỏ.");
            }
        }).catch(error => {
            console.error("Lỗi:", error);
            alert("Lỗi khi khi thêm  sản phẩm vào giỏ.");
        });
    }
}
