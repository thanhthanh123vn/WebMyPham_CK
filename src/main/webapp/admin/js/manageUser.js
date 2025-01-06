// Hiển thị danh sách người dùng

isStart = false;
var userInfs =[{}];

async function displayUsers() {
    const userBody = document.getElementById("userBody");
    userBody.innerHTML = "";

    try {
        const response = await fetch("http://localhost:8080/WebMyPham__/listUserInf");
        if (!response.ok) {
            throw new Error("Không thể tải danh sách ListUser Info.");
        }

        const userInf = await response.json();

            userInfs = userInf;



        var modifiedUsers = userInfs.map((user, index) => {
            return {
                userName: user.userName,
                password: '******', // Mật khẩu bị ẩn
                address: user.address,
                imageURL: `<img src="${user.imageURL}" alt="${user.userName}" width="50">`,
                email: user.email,
                phone: user.phone,
                action: `<td style="display: flex; justify-content: space-around; text-align: center;">
                            <button onclick="editUser(${index})">Sửa</button>
                            <button style="margin-left: 10px" onclick="deleteUser(${index})">Xóa</button>
                        </td>`
            };
        });

        $('#userTable').DataTable({
            "processing": true,
            data: modifiedUsers,
            columns: [
                { data: 'userName' },
                { data: 'password' },
                { data: 'address' },
                { data: 'imageURL' },
                { data: 'email' },
                { data: 'phone' },
                { data: 'action' }
            ]
        });

    } catch (error) {
        console.error("Lỗi:", error);
    }
}
$(document).ready(function (){
    displayUsers();
    $("#list-header").on({
        mouseenter: function() {
            $(this).css("background-color", "lightgray");
        },
        mouseleave: function(){
            $(this).css("background-color", "lightblue");
        },
    });

});

// Hiển thị modal thêm người dùng
function showAddModal() {
    document.getElementById("modalTitle").innerText = "Thêm Người Dùng";
    document.getElementById("userName").value = "";
    document.getElementById("password").value = "";
    document.getElementById("address").value = "";
    document.getElementById("imageURL").value = "";
    document.getElementById("email").value = "";
    document.getElementById("phone").value = "";

    document.getElementById("userModal").style.display = "block";
}

// Hiển thị modal sửa người dùng
function editUser(index) {
    const user = userInfs[index];
    document.getElementById("modalTitle").innerText = "Sửa Người Dùng";
    document.getElementById("userName").value = user.userName;
    document.getElementById("password").value = user.password;
    document.getElementById("address").value = user.address;
    document.getElementById("imageURL").value = user.imageURL;
    document.getElementById("email").value = user.email;
    document.getElementById("phone").value = user.phone;
    document.getElementById("userModal").style.display = "block";

    // Lưu lại index đang chỉnh sửa
    document.getElementById("userModal").dataset.index = index;
}

// Lưu người dùng (thêm hoặc sửa)
function saveUser() {
    const userName = document.getElementById("userName").value;
    const password = document.getElementById("password").value;
    const address = document.getElementById("address").value;
    const imageURL = document.getElementById("imageURL").value;
    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;

    const user = {
        userName: userName,
        email: email,
        password: password,
        address: address,
        imageURL: imageURL,
        phone: phone
    };

    fetch(`http://localhost:8080/WebMyPham__/AddUser`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(user)
    }).then(response => {
        if (response.ok) {
            alert("Người dùng đã được thêm hoặc sửa thành công!");
        } else {
            alert("Lỗi khi thêm User.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi thêm User.");
    });

    const index = document.getElementById("userModal").dataset.index;

    if (index) {
        userInfs[index] = user; // Cập nhật người dùng
    } else {
        userInfs.push(user); // Thêm mới người dùng
    }

    hideModal();
    displayUsers();
}

// Xóa người dùng
function deleteUser(index) {
    const user = userInfs[index];
    fetch(`http://localhost:8080/WebMyPham__/removeUser`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(user)
    }).then(response => {
        if (response.ok) {
            alert("Người dùng đã bị xóa.");
        } else {
            alert("Lỗi khi xóa User.");
        }
    }).catch(error => {
        console.error("Lỗi:", error);
        alert("Đã xảy ra lỗi khi xóa User.");
    });
    if (confirm("Bạn có chắc chắn muốn xóa người dùng này?")) {
        userInfs.splice(index, 1);
        displayUsers();
    }
}

// Tìm kiếm thông tin người dùng
async function searchUserInf() {
    const userBody = document.getElementById("userBody");
    userBody.innerHTML = "";
    const keyword = document.getElementById("search").value;
    const response = await fetch(`http://localhost:8080/WebMyPham__/searchUserInf?username=` + encodeURIComponent(keyword))
    if (!response.ok) {
        throw new Error("Phản hồi không hợp lệ.");
    }

    const searchUserInf = await response.json();

    var modifiedUsers = searchUserInf.map((user, index) => {
        return {
            userName: user.userName,
            password: '******', // Mật khẩu bị ẩn
            address: user.address,
            imageURL: `<img src="${user.imageURL}" alt="${user.userName}" width="50">`,
            email: user.email,
            phone: user.phone,
            action: `<td style="display: flex; justify-content: space-around; text-align: center;">
                        <button onclick="editUser(${index})">Sửa</button>
                        <button style="margin-left: 10px" onclick="deleteUser(${index})">Xóa</button>
                    </td>`
        };
    });

    $('#userTable').DataTable({
        data: modifiedUsers,
        columns: [
            { data: 'userName' },
            { data: 'password' },
            { data: 'address' },
            { data: 'imageURL' },
            { data: 'email' },
            { data: 'phone' },
            { data: 'action' }
        ]
    });
}

// Ẩn modal
function hideModal() {
    document.getElementById("userModal").style.display = "none";
    delete document.getElementById("userModal").dataset.index;
}
