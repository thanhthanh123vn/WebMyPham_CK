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

        var modifiedProduct = products.map((eachProduct, index) => {
            return {
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
            };
        });

        if ($.fn.DataTable.isDataTable('#productTables')) {
            $('#productTables').DataTable().clear().destroy(); // Destroy the existing instance
            $('#productTables').empty(); // Empty the table to remove any artifacts
        }

        table = $('#productTables').DataTable({
            "processing": true,
            data: modifiedProduct,
            columns: [
                { data: 'name' },
                { data: 'category_id' },
                { data: 'price' },
                { data: 'quantity' },
                { data: 'detail' },
                { data: 'image' },
                { data: 'action' }
            ]
        });

    } catch (error) {
        console.error("Lỗi:", error);
    }
}

$(document).ready(function (){
    displayProducts();

    $("#list-header").on({
        mouseenter: function() {
            $(this).css("background-color", "lightgray");
        },
        mouseleave: function(){
            $(this).css("background-color", "lightblue");
        },
    });
});

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

    // Remove index attribute if adding new product
    delete document.getElementById("productModal").dataset.index;
}

// Show Edit Product Modal
function editProduct(index) {
    const product = products[index];
    document.getElementById("modalTitle").innerText = "Sửa Sản Phẩm";
    document.getElementById("productName").value = product.name;
    document.getElementById("imageURL").value = product.image;
    document.getElementById("price").value = product.price;
    document.getElementById("description").value = product.detail;
    document.getElementById("category").value = product.category_id;
    document.getElementById("stock").value = product.quantity;
    document.getElementById("productModal").style.display = "block";

    // const name = document.getElementById("productName").value;
    // const image = document.getElementById("imageURL").value;
    // const price = parseFloat(document.getElementById("price").value);
    // const description = document.getElementById("description").value;
    // const stock = parseInt(document.getElementById("stock").value);
    // const category = parseInt(document.getElementById("category").value);
    //
    // const curProduct = { name, image, price, detail: description, quantity: stock, category_id: category };
    //
    // // Store the index for later use
    // document.getElementById("productModal").dataset.index = index;
    // const  response = fetch("http://localhost:8080/WebMyPham__/EditProduct",{
    //     method: "POST",
    //     headers: { "Content-Type": "application/json" },
    //     body: JSON.stringify(curProduct)
    // }).then(response => {
    //     console.log(response); // Kiểm tra phản hồi từ server
    //     if (response.ok) {
    //         alert("Sản phẩm đã được thêm hoặc sửa thành công!");
    //         displayProducts(); // Refresh products after saving
    //     } else {
    //         return response.text().then(text => {throw new Error(text)}); // Lấy chi tiết lỗi từ phản hồi
    //     }
    // }).catch(error => {
    //     console.error("Lỗi:", error);
    //     alert("Đã xảy ra lỗi khi thêm hoặc sửa sản phẩm: " + error.message);
    // });
    // hideModal();
}
function  editProductSave(){
    const name = document.getElementById("productName").value;
    const image = document.getElementById("imageURL").value;
    const price = parseFloat(document.getElementById("price").value);
    const description = document.getElementById("description").value;
    const stock = parseInt(document.getElementById("stock").value);
    const category = parseInt(document.getElementById("category").value);

    const product = { name, image, price, detail: description, quantity: stock, category_id: category };

    const index = document.getElementById("productModal").dataset.index;
    if (index !== undefined) {
        products[index] = product; // Edit existing product
    } else {
        products.push(product); // Add new product
    }

    console.log(JSON.stringify(product)); // Kiểm tra dữ liệu trước khi gửi

    const url =   "http://localhost:8080/WebMyPham__/EditProduct" ;

    fetch(url, { // Adjust the URL for product saving
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(product)
    }).then(response => {
        console.log(response); // Kiểm tra phản hồi từ server
        if (response.ok) {
            alert("Sản phẩm đã được thêm hoặc sửa thành công!");
            displayProducts(); // Refresh products after saving
        } else {
            return response.text().then(text => {throw new Error(text)}); // Lấy chi tiết lỗi từ phản hồi
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm hoặc sửa sản phẩm: " + error.message);
    });

    hideModal();
}

// Save Product (Add or Edit)
function saveProduct() {
    const name = document.getElementById("productName").value;
    const image = document.getElementById("imageURL").value;
    const price = parseFloat(document.getElementById("price").value);
    const description = document.getElementById("description").value;
    const stock = parseInt(document.getElementById("stock").value);
    const category = parseInt(document.getElementById("category").value);

    const product = { name, image, price, detail: description, quantity: stock, category_id: category };

    const index = document.getElementById("productModal").dataset.index;
    if (index !== undefined) {
        products[index] = product; // Edit existing product
    } else {
        products.push(product); // Add new product
    }

    console.log(JSON.stringify(product)); // Kiểm tra dữ liệu trước khi gửi

    const url = index !== undefined ? "http://localhost:8080/WebMyPham__/EditProduct" : "http://localhost:8080/WebMyPham__/AddProduct";

    fetch(url, { // Adjust the URL for product saving
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(product)
    }).then(response => {
        console.log(response); // Kiểm tra phản hồi từ server
        if (response.ok) {
            alert("Sản phẩm đã được thêm hoặc sửa thành công!");
            displayProducts(); // Refresh products after saving
        } else {
            return response.text().then(text => {throw new Error(text)}); // Lấy chi tiết lỗi từ phản hồi
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm hoặc sửa sản phẩm: " + error.message);
    });

    hideModal();
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
                alert("Sản phẩm đã được xóa thành công!");
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
