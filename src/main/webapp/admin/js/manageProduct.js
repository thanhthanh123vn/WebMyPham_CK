// Declare products array to hold the data
var products = [];
var table;

// Fetch and display the products
async function displayProducts() {
    const productBody = document.getElementById("productBody");
    productBody.innerHTML = "";
    try {
        const response = await fetch(`http://localhost:8080/WebMyPham__/listProducts`); // Adjust URL to your backend endpoint
        if (!response.ok) {
            throw new Error("Không thể tải danh sách sản phẩm.");
        }
        const productData = await response.json();
        products = productData; // Assign data to products

<<<<<<< HEAD
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
=======
        const modifiedProduct = products.map((eachProduct, index) => ({
            id:eachProduct.id,
            name: eachProduct.name,
            category_id: eachProduct.category_id,
            price: eachProduct.price.toString() + "đ",
            quantity: eachProduct.quantity,
            detail: eachProduct.detail,
            image: `<img src="${eachProduct.image}" alt="${eachProduct.name}" width="50">`,
            action: `<div style="display: flex; justify-content: space-around; text-align: center;">
                        <button onClick="editProduct(${index})">Sửa</button>
                        <button style="margin-left:10px;" onClick="deleteProduct(${index})">Xóa</button>
                     </div>`
        }));

        // Initialize or refresh DataTable
        if ($.fn.DataTable.isDataTable('#productTables')) {
            table.clear();
            table.rows.add(modifiedProduct).draw(); // Add new data and redraw table
        } else {
            table = $('#productTables').DataTable({
                data: modifiedProduct,
                columns: [
                    {data: 'id'},
                    { data: 'name' },
                    { data: 'category_id' },
                    { data: 'price' },
                    { data: 'quantity' },
                    { data: 'detail' },
                    { data: 'image' },
                    { data: 'action' }
                ],
                destroy: true
            });
        }
    } catch (error) {
        console.error("Lỗi:", error);
        alert("Không thể tải danh sách sản phẩm.");
    }
>>>>>>> Thanh
}

// Show Add Product Modal
function showAddProductModal() {
    document.getElementById("modalTitle").innerText = "Thêm Sản Phẩm";
    resetModalFields();
    document.getElementById("productModal").style.display = "block";
}

// Show Edit Product Modal
function editProduct(index) {
    const product = products[index];
    document.getElementById("modalTitle").innerText = "Sửa Sản Phẩm";
    document.getElementById("id").value = product.id;
    document.getElementById("productName").value = product.name;
    document.getElementById("imageURL").value = product.image;
    document.getElementById("price").value = product.price;
    document.getElementById("description").value = product.detail;
    document.getElementById("category").value = product.category_id;
    document.getElementById("stock").value = product.quantity;
    document.getElementById("productModal").style.display = "block";

<<<<<<< HEAD
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
=======
    // Store the index for later use
>>>>>>> Thanh
    document.getElementById("productModal").dataset.index = index;
}

// Save Product (Add or Edit)
function saveProduct() {
    const id = document.getElementById("id").value;
    const name = document.getElementById("productName").value;
    const image = document.getElementById("imageURL").value;
    const price = parseFloat(document.getElementById("price").value);
    const description = document.getElementById("description").value;
    const stock = parseInt(document.getElementById("stock").value);
    const category = parseInt(document.getElementById("category").value);

    const product = { id,name, image, price, detail: description, quantity: stock, category_id: category };

    const index = document.getElementById("productModal").dataset.index;
    const url = index !== undefined ? "http://localhost:8080/WebMyPham__/EditProduct" : "http://localhost:8080/WebMyPham__/AddProduct";

    fetch(url, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(product)
    }).then(response => {
        if (!response.ok) {
            return response.text().then(text => { throw new Error(text); });
        }
        alert("Sản phẩm đã được thêm hoặc sửa thành công!");
        displayProducts(); // Refresh products after saving
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm hoặc sửa sản phẩm: " + error.message);
    }).finally(() => {
        hideModal();
    });
}

<<<<<<< HEAD
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
=======
// Delete Product
function deleteProduct(index) {
>>>>>>> Thanh
    if (confirm("Bạn có chắc chắn muốn xóa sản phẩm này?")) {
        const product = products[index];
        fetch("http://localhost:8080/WebMyPham__/removeProduct", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(product)
        }).then(response => {
            if (!response.ok) {
                throw new Error("Lỗi khi xóa sản phẩm.");
            }
            alert("Sản phẩm đã được xóa thành công!");
            displayProducts();
        }).catch(error => {
            console.error("Lỗi:", error);
            alert("Đã xảy ra lỗi khi xóa sản phẩm.");
        });
    }

}

<<<<<<< HEAD

// Ẩn modal
function hideModal() {
    document.getElementById("productModal").style.display = "none";
=======
// Reset Modal Fields
function resetModalFields() {
    document.getElementById("id").value = "";
    document.getElementById("productName").value = "";
    document.getElementById("imageURL").value = "";
    document.getElementById("price").value = "";
    document.getElementById("description").value = "";
    document.getElementById("category").value = "";
    document.getElementById("stock").value = "";
>>>>>>> Thanh
    delete document.getElementById("productModal").dataset.index;
}

// Hide Modal
function hideModal() {
    document.getElementById("productModal").style.display = "none";
    resetModalFields();
}

// Initialize on Page Load
$(document).ready(function () {
    displayProducts();

    $("#list-header").on({
        mouseenter: function () {
            $(this).css("background-color", "lightgray");
        },
        mouseleave: function () {
            $(this).css("background-color", "lightblue");
        },
    });
});
