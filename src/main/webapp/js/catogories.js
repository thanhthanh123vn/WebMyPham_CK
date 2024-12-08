let currentStartIndex = 0; // Đầu tiên sẽ hiển thị từ index 0

function changeCategorySlide(direction) {
    currentStartIndex += direction;


    if (currentStartIndex < 0) {
        currentStartIndex = 0;
    }


    updateCategoryDisplay();
}

function updateCategoryDisplay() {
    const categories = document.querySelectorAll('.category-product .category');
    const totalCategories = categories.length;


    categories.forEach((category, index) => {
        if (index >= currentStartIndex && index < Math.min(currentStartIndex + 8, totalCategories)) {
            category.style.display = 'block'; // Hiển thị
        } else {
            category.style.display = 'none'; // Ẩn
        }
    });
}

document.addEventListener('DOMContentLoaded', () => {
    updateCategoryDisplay();
});
