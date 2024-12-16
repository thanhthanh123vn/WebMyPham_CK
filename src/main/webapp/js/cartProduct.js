function  addProductCart(product){


            console.log(product);
        const data = {
            action: "add",
            productId: product.id,
            name: product.name,
            price: product.price,
            quantity: 1,
            image: product.image
        };
        fetch(`cart?action=${data.action}`, {
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