// Dữ liệu sản phẩm mẫu


// Hiển thị danh sách sản phẩm
function displayProducts() {
    const productBody = document.getElementById("productBody");
    productBody.innerHTML = "";

    products.forEach((product, index) => {
        // <td>${product.id}</td>
        // <td>${product.brand}</td>
        // <td>${product.status}</td>
        const row = `<tr>
            <td>${product.name}</td>
            <td>${product.brand}</td>
            <td><img src="${product.image}" alt="${product.name}" width="50"></td>
            <td>${product.price.toLocaleString()} đ</td>
            <td>${product.description}</td>
            <td>${product.category}</td>
            <td>
                <button onclick="editProduct(${index})">Sửa</button>
                <button onclick="deleteProduct(${index},${product})">Xóa</button>
            </td>
        </tr>`;
        productBody.innerHTML += row;
    });
}

// Hiển thị modal thêm sản phẩm
function showAddModal() {
  
    document.getElementById("modalTitle").innerText = "Thêm Sản Phẩm";
    //document.getElementById("productID").value = "";
    document.getElementById("productName").value = "";
    // document.getElementById("brand").value = "";
    document.getElementById("imageURL").value = "";
    document.getElementById("price").value = "";
    document.getElementById("stock").value = "";
    document.getElementById("description").value = "";
    document.getElementById("category").value = "";
    //document.getElementById("status").value = "";
    document.getElementById("productModal").style.display = "block";
}

// Hiển thị modal sửa sản phẩm
function editProduct(index) {
    const product = products[index];
    document.getElementById("modalTitle").innerText = "Sửa Sản Phẩm";
    //document.getElementById("productID").value = product.id;
    document.getElementById("productName").value = product.name;
   // document.getElementById("brand").value = product.brand;
    document.getElementById("imageURL").value = product.image;
    document.getElementById("price").value = product.price;
    document.getElementById("description").value = product.description;
    document.getElementById("category").value = product.category;
    document.getElementById("stock").value = product.status;
    document.getElementById("productModal").style.display = "block";

    fetch('updateProduct',{
        method:"GET",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(product)
    }).then(response => {
        if (response.ok) {
            alert(" Update Product thành công!");
        } else {
            alert("Lỗi sửa Product.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi Update product.");
    });



    // Lưu lại index đang chỉnh sửa
    document.getElementById("productModal").dataset.index = index;
}

// Lưu sản phẩm (thêm hoặc sửa)
function saveProduct() {
    const id = document.getElementById("productID").value || `SP${products.length + 1}`;
    const name = document.getElementById("productName").value;
    const image = document.getElementById("imageURL").value;
    const price = parseFloat(document.getElementById("price").value);
    const description = document.getElementById("description").value;
    const quantity = document.getElementById("stock").value;
    const category = document.getElementById("category").value;

    const product = { id, name, description, price, quantity, image, category };

    fetch('Add', {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(product)
    }).then(response => {
        if (response.ok) {
            alert("Đã thêm sản phẩm thành công!");
        } else {
            alert("Lỗi khi thêm sản phẩm.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm sản phẩm.");
    });



    const index = document.getElementById("productModal").dataset.index;

    if (index) {
        products[index] = product; // Cập nhật sản phẩm
    } else {
        products.push(product); // Thêm mới sản phẩm
    }

    hideModal();
    displayProducts();
}

// Xóa sản phẩm
function deleteProduct(index,product) {

    fetch("deleteProductAdmin", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(product)
    }).then(response => {
        if (response.ok) {
            alert("Đã thêm sản phẩm thành công!");
        } else {
            alert("Lỗi khi thêm sản phẩm.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm sản phẩm.");
    });
    if (confirm("Bạn có chắc chắn muốn xóa sản phẩm này?")) {
        products.splice(index, 1);
        displayProducts();
    }

}


// Ẩn modal
function hideModal() {
    document.getElementById("productModal").style.display = "none";
    delete document.getElementById("productModal").dataset.index;
}

// Khởi tạo hiển thị
displayProducts();
