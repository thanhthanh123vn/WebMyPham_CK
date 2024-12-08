let currentStartIndex = 0; // Đầu tiên sẽ hiển thị từ index 0

function changeCategorySlide(direction) {
    currentStartIndex += direction;

    // Không cho index nhỏ hơn 0
    if (currentStartIndex < 0) {
        currentStartIndex = 0;
    }

    // Gửi yêu cầu đến server
    fetch(`category?startIndex=${currentStartIndex}`)
        .then(response => {
            if (!response.ok) {
                throw new Error("Failed to load categories");
            }
            return response.text();
        })
        .then(html => {
            // Xoá nội dung cũ và chèn nội dung mới
            const container = document.getElementById('category-product');
            container.innerHTML = html;
        })
        .catch(error => {
            console.error("Error fetching categories:", error);
        });
}
