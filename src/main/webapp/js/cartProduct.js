function  addProductCart(id){


        const data = {
            action: "add",
            productId: productId,
            name: name,
            price: price,
            quantity: quantity,
            image: image
        };

        fetch("cart", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: new URLSearchParams(data)
        }).then(response => {
            if (response.ok) {
                alert("Đã thêm sản phẩm vào giỏ hàng!");
            } else {
                alert("Lỗi khi thêm sản phẩm.");
            }
        });


}