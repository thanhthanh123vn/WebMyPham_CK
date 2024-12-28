// Declare products array to hold the data
var products ;
alert("ProductAdmin");
// Initialize display
displayProducts();
// Fetch and display the products
async function displayProducts() {
    const productBody = document.getElementById("productBody");
    productBody.innerHTML = "";
    try {
        const response = await fetch("http://localhost:8080/WebMyPham__/listProducts"); // Adjust URL to your backend endpoint
        if (!response.ok) {
            throw new Error("Không thể tải danh sách sản phẩm.");
        }
        const productData = await response.json();
        products = productData; // Assign data to products

        products.forEach((product, index) => {
            const row = `<tr>
                <td>${product.name}</td>
                <td>${product.category_id}</td>
                <td>${product.price.toLocaleString()} đ</td>
                <td>${product.quantity}</td>
              
                <td>${product.description}</td>
                <td><img src="${product.image}" alt="${product.name}" width="50"></td>
               
                <td>
                    <button onclick="editProduct(${index})">Sửa</button>
                    <button onclick="deleteProduct(${index})">Xóa</button>
                </td>
            </tr>`;
            productBody.innerHTML += row;
        });
    } catch (error) {
        console.error("Lỗi:", error);
    }
}

// Show Add Product Modal
function showAddProductModal() {
    document.getElementById("modalTitle").innerText = "Thêm Sản Phẩm";
    document.getElementById("productName").value = "";
    document.getElementById("imageURL").value = "";
    document.getElementById("price").value = "";
    document.getElementById("description").value = "";
    document.getElementById("category").value = "";
    document.getElementById("stock").value = "";
    document.getElementById("productModal").style.display = "block";
}

// Show Edit Product Modal
function editProduct(index) {
    const product = products[index];
    document.getElementById("modalTitle").innerText = "Sửa Sản Phẩm";
    document.getElementById("productName").value = product.name;
    document.getElementById("imageURL").value = product.image;
    document.getElementById("price").value = product.price;
    document.getElementById("description").value = product.description;
    document.getElementById("category").value = product.category;
    document.getElementById("stock").value = product.stock;
    document.getElementById("productModal").style.display = "block";

    document.getElementById("productModal").dataset.index = index; // Store the index for later use
}

// Save Product (Add or Edit)
function saveProduct() {
    const name = document.getElementById("productName").value;
    const image = document.getElementById("imageURL").value;
    const price = parseFloat(document.getElementById("price").value);
    const description = document.getElementById("description").value;
    const stock = document.getElementById("stock").value;
    const category = document.getElementById("category").value;

    const product = { name, image, price, description, stock, category };

    const index = document.getElementById("productModal").dataset.index;
    if (index) {
        products[index] = product; // Edit existing product
    } else {
        products.push(product); // Add new product
    }

    fetch("http://localhost:8080/WebMyPham__/AddProduct", { // Adjust the URL for product saving
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(product)
    }).then(response => {
        if (response.ok) {
            alert("Sản phẩm đã được thêm hoặc sửa thành công!");
        } else {
            alert("Lỗi khi thêm hoặc sửa sản phẩm.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm hoặc sửa sản phẩm.");
    });

    hideModal();
    displayProducts();
}

// Delete Product
function deleteProduct(index) {
    if (confirm("Bạn có chắc chắn muốn xóa sản phẩm này?")) {
        const product = products[index];
        fetch("http://localhost:8080/WebMyPham__/removeProduct", { // Adjust the URL for product removal
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(product)
        }).then(response => {
            if (response.ok) {
                products.splice(index, 1); // Remove product from local array
                displayProducts();
            } else {
                alert("Lỗi khi xóa sản phẩm.");
            }
        }).catch(error => {
            console.error("Lỗi:", error);
            alert("Đã xảy ra lỗi khi xóa sản phẩm.");
        });
    }
}

// Hide Modal
function hideModal() {
    document.getElementById("productModal").style.display = "none";
    delete document.getElementById("productModal").dataset.index;
}


