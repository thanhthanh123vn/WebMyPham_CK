function redirectPay(){
    if(topayProduct){
        fetch("http://localhost:8080/WebMyPham__/ManagerProduct", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(topayProduct)
        }).then(response => {
            if (response.ok) {
                window.location.href = "http://localhost:8080/WebMyPham__/ManagerProduct";

            } else {
                response.text().then(text => {
                    console.error("Lỗi:", response.status, text);
                    alert("Lỗi khoong load được sản phẩm: " + text);
                });
            }
        }).catch(error => {
            console.error("Lỗi:", error);
            alert("Lỗi khi thêm địa chỉ người dùng.");
        });
    } else {
        alert("Vui lòng nhập đầy đủ thông tin");
    }

    if(topayCartProduct){
        fetch("http://localhost:8080/WebMyPham__/ManagerProduct", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(topayCartProduct)
        }).then(response => {
            if (response.ok) {
                window.location.href = "http://localhost:8080/WebMyPham__/ManagerProduct";

            } else {
                response.text().then(text => {
                    console.error("Lỗi:", response.status, text);
                    alert("Lỗi khoong load được sản phẩm: " + text);
                });
            }
        }).catch(error => {
            console.error("Lỗi:", error);
            alert("Lỗi khi thêm địa chỉ người dùng.");
        });
    } else {
        alert("Vui lòng nhập đầy đủ thông tin");
    }
}