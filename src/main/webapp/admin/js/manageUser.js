// Dữ liệu người dùng mẫu

displayUsers();

// Hiển thị danh sách người dùng
function displayUsers() {
    const userBody = document.getElementById("userBody");
    userBody.innerHTML = "";

    users.forEach((user, index) => {
        const row = `<tr>
            <td>${user.userName}</td>
            <td>${user.age}</td>
            <td>${user.address}</td>
            <td><img src="${user.imageURL}" alt="${user.userName}" width="50"></td>
            <td>${user.email}</td>
            <td>${user.phone}</td>
            <td>
                <button onclick="editUser(${index})">Sửa</button>
                <button onclick="deleteUser(${index})">Xóa</button>
            </td>
        </tr>`;
        userBody.innerHTML += row;
    });
}

// Hiển thị modal thêm người dùng
function showAddModal() {
    document.getElementById("modalTitle").innerText = "Thêm Người Dùng";
    document.getElementById("userName").value = "";
    document.getElementById("age").value = "";
    document.getElementById("address").value = "";
    document.getElementById("imageURL").value = "";
    document.getElementById("email").value = "";
    document.getElementById("phone").value = "";

    document.getElementById("userModal").style.display = "block";
}

// Hiển thị modal sửa người dùng
function editUser(index) {
    const user = users[index];
    document.getElementById("modalTitle").innerText = "Sửa Người Dùng";
    document.getElementById("userName").value = user.userName;
    document.getElementById("age").value = user.password;
    document.getElementById("address").value = user.address;
    document.getElementById("imageURL").value = user.image;
    document.getElementById("email").value = user.email;
    document.getElementById("phone").value = user.phone;
    document.getElementById("userModal").style.display = "block";

    // Lưu lại index đang chỉnh sửa
    document.getElementById("userModal").dataset.index = index;
}

// Lưu người dùng (thêm hoặc sửa)
function saveUser() {
    const name = document.getElementById("userName").value;
    const password = document.getElementById("age").value;
    const address = document.getElementById("address").value;
    const image = document.getElementById("imageURL").value;
    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;

    const user = { name, password, address, image, email, phone };

    fetch(`http://localhost:8080/WebMyPham__/AddUser`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(user)
    }).then(response => {
        if (response.ok) {
            alert("Đã thêm User thành công!");
        } else {
            alert("Lỗi khi thêm User.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm User.");
    });

    const index = document.getElementById("userModal").dataset.index;

    if (index) {
        users[index] = user; // Cập nhật người dùng
    } else {
        users.push(user); // Thêm mới người dùng
    }

    hideModal();
    displayUsers();
}

// Xóa người dùng
function deleteUser(index) {
    const user = users[index];
    fetch(`http://localhost:8080/WebMyPham__/removeUser`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(user)
    }).then(response => {
        if (response.ok) {
            alert("Đã thêm User thành công!");
        } else {
            alert("Lỗi khi thêm User.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm User.");
    });
    if (confirm("Bạn có chắc chắn muốn xóa người dùng này?")) {
        users.splice(index, 1);
        displayUsers();
    }
}

// Ẩn modal
function hideModal() {
    document.getElementById("userModal").style.display = "none";
    delete document.getElementById("userModal").dataset.index;
}

