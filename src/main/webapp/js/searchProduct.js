async function searchProduct() {
    const searchInput = document.getElementById("searchInput");
    const resultDiv = document.getElementById("resultSearchProducts");
    const hoverSearch = document.getElementById("searchNotification");

    const keyword = searchInput.value().trim();
    console.log(keyword);

    // Kiểm tra từ khóa rỗng
    if (keyword === "") {
        resultDiv.innerHTML = ""; // Xóa nội dung nếu từ khóa rỗng
        hoverSearch.style.display = "none"; // Ẩn thông báo
        return;
    }

    try {
        // Gửi yêu cầu AJAX đến server
        const response = await fetch(`/searchProduct?name=${encodeURIComponent(keyword)}`, {
            method: "GET",
            headers: {
                "Content-Type": "application/json",
            },
        });

        // Kiểm tra trạng thái phản hồi
        if (response.status === 204 || (await response.text()) === "[]") {
            resultDiv.innerHTML = "<p  >Không tìm thấy sản phẩm phù hợp.</p>";
            hoverSearch.style.display = "none";
            return;
        }

        if (!response.ok) {
            throw new Error("Có lỗi xảy ra khi tìm kiếm sản phẩm.");
        }

        // Parse JSON từ server
        const searchProducts = await response.json();

        // Ẩn thông báo hover
        hoverSearch.style.display = "none";

        // Hiển thị kết quả
        displaySearchResults(searchProducts.products, resultDiv);

    } catch (error) {
        console.error("Error:", error);
        resultDiv.innerHTML = "<p>Đã xảy ra lỗi trong khi tìm kiếm sản phẩm.</p>";
    }
}

function displaySearchResults(products, resultDiv) {
    resultDiv.innerHTML = ""; // Xóa kết quả cũ

    if (products.length === 0) {
        resultDiv.innerHTML = "<p>Không tìm thấy sản phẩm phù hợp.</p>";
        return;
    }

    // Tạo danh sách kết quả
    const list = document.createElement("ul");
    list.style.listStyle = "none"; // Xóa bullet của danh sách
    list.style.padding = "0"; // Loại bỏ padding mặc định

    products.forEach(product => {
        const listItem = document.createElement("li");
        listItem.style.display = "flex";
        listItem.style.alignItems = "center";
        listItem.style.padding = "10px";
        listItem.style.borderBottom = "1px solid #ddd";

        listItem.innerHTML = `
            <img src="${product.image}" alt="${product.name}" 
                style="width: 50px; height: 50px; margin-right: 10px; border-radius: 5px;">
            <div style="flex-grow: 1;">
                <p style="margin: 0; font-weight: bold;">${product.name}</p>
                <p style="margin: 0; color: #888;">${product.price.toLocaleString()} VND</p>
            </div>
        `;
        list.appendChild(listItem);
    });

    resultDiv.appendChild(list);
}
