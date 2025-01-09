const brandListDiv = document.querySelector(".brand-list");
const categoryListDiv = document.querySelector(".category-product");
let currentBrandSlideIndex = 0;
let currentCategorySlideIndex = 0;

// Gửi yêu cầu để lấy danh sách thương hiệu và danh mục từ Servlet
async function fetchBrandAndCategoryList() {
    try {
        // Gửi yêu cầu song song để lấy danh sách thương hiệu và danh mục
        const [brandResponse, categoryResponse] = await Promise.all([
            fetch("brandList"),
            fetch(`categoryList?startIndex=${encodeURIComponent(currentCategorySlideIndex)}`)
        ]);

        if (!brandResponse.ok) {
            throw new Error("Không thể tải danh sách thương hiệu.");
        }
        if (!categoryResponse.ok) {
            throw new Error("Không thể tải danh sách danh mục.");
        }

        const brands = await brandResponse.json();
        const categories = await categoryResponse.json();

        displayBrands(brands);
        displayCategories(categories);
    } catch (error) {
        console.error("Lỗi xảy ra:", error);
        brandListDiv.innerHTML = "<p>Đã xảy ra lỗi khi tải danh sách thương hiệu.</p>";
        categoryListDiv.innerHTML = "<p>Đã xảy ra lỗi khi tải danh sách danh mục.</p>";
    }
}

// Hiển thị danh sách thương hiệu
function displayBrands(brands) {
    brandListDiv.innerHTML = ''; // Xoá nội dung cũ

    if (brands.length === 0) {
        brandListDiv.innerHTML = "<p>Không có thương hiệu nào.</p>";
        return;
    }

    brands.forEach((brand) => {
        const brandItem = document.createElement("div");
        brandItem.classList.add("brand-item");


        brandItem.innerHTML = `
            <img src="${brand.image}" alt="${brand.name}" class="brand-logo">
            <p class="brand-name">${brand.name}</p>
        `;
        brandItem.onclick = function (){
            window.location.href = `CheckedBrand?filterBrand=${brand.name}`;

        }

        brandListDiv.appendChild(brandItem);
    });

    setupBrandSlides();
}

// Xử lý slide thương hiệu
function setupBrandSlides() {
    const brandItems = document.querySelectorAll(".brand-item");


    const itemsPerSlide = 7; // Hiển thị 8 thương hiệu mỗi slide

    brandItems.forEach((item, index) => {
        item.style.display = index < itemsPerSlide ? "block" : "none";

    });

    currentBrandSlideIndex = 0;
}

function showBrandSlide(index) {
    const brandItems = document.querySelectorAll(".brand-item");
    const itemsPerSlide = 7;
    const totalSlides = Math.ceil(brandItems.length / itemsPerSlide);

    if (index < 0) currentBrandSlideIndex = totalSlides - 1;
    else if (index >= totalSlides) currentBrandSlideIndex = 0;
    else currentBrandSlideIndex = index;

    brandItems.forEach((item, i) => {
        item.style.display = (i >= currentBrandSlideIndex * itemsPerSlide && i < (currentBrandSlideIndex + 1) * itemsPerSlide) ? "block" : "none";
    });
}

function prevBrandSlide() {
    showBrandSlide(currentBrandSlideIndex - 1);
}

function nextBrandSlide() {
    showBrandSlide(currentBrandSlideIndex + 1);
}

// Hiển thị danh sách danh mục
function displayCategories(categories) {
    categoryListDiv.innerHTML = ''; // Xóa nội dung cũ

    if (categories.length === 0) {
        categoryListDiv.innerHTML = "<p>Không có Danh mục nào.</p>";
        return;
    }

    categories.forEach((ct) => {
        const categoryContainer = document.createElement("div");
        categoryContainer.classList.add("category");

        categoryContainer.innerHTML = `
            <img src="${ct.image}" alt="${ct.categoryName}">
            <p>${ct.categoryName}</p>
        `;
        categoryContainer.onclick = function (){
            window.location.href = `searchProdcutCategory?name=${ct.categoryID}`;
        }

        categoryListDiv.appendChild(categoryContainer);
    });

    setupCategorySlides();
}

// Xử lý slide danh mục
function setupCategorySlides() {
    const categoryItems = document.querySelectorAll(".category");
    const itemsPerSlide = 8; // Hiển thị 8 danh mục mỗi slide

    categoryItems.forEach((item, index) => {
        item.style.display = index < itemsPerSlide ? "block" : "none";
    });

    currentCategorySlideIndex = 0;
}

function showCategorySlide(index) {
    const categoryItems = document.querySelectorAll(".category");
    const itemsPerSlide = 8;
    const totalSlides = Math.ceil(categoryItems.length / itemsPerSlide);

    if (index < 0) currentCategorySlideIndex = totalSlides - 1;
    else if (index >= totalSlides) currentCategorySlideIndex = 0;
    else currentCategorySlideIndex = index;

    categoryItems.forEach((item, i) => {
        item.style.display = (i >= currentCategorySlideIndex * itemsPerSlide && i < (currentCategorySlideIndex + 1) * itemsPerSlide) ? "block" : "none";
    });
}

function prevCategorySlide() {
    showCategorySlide(currentCategorySlideIndex - 1);
}

function nextCategorySlide() {
    showCategorySlide(currentCategorySlideIndex + 1);
}

// Tải danh sách thương hiệu và danh mục khi trang được tải
document.addEventListener("DOMContentLoaded", fetchBrandAndCategoryList);
