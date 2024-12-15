const brandListDiv = document.querySelector(".brand-list");
let currentSlideIndex = 0;

// Gửi yêu cầu để lấy danh sách thương hiệu từ Servlet
async function fetchBrandList() {
    try {
        const response = await fetch("brandList");
        if (!response.ok) {
            throw new Error("Không thể tải danh sách thương hiệu.");
        }

        const brands = await response.json();
        displayBrands(brands);
    } catch (error) {
        console.error("Lỗi xảy ra:", error);
        brandListDiv.innerHTML = "<p>Đã xảy ra lỗi khi tải danh sách thương hiệu.</p>";
    }
}

// Hiển thị danh sách thương hiệu
function displayBrands(brands) {
    if (brands.length === 0) {
        brandListDiv.innerHTML = "<p>Không có thương hiệu nào.</p>";
        return;
    }

    const brandContainer = document.createElement("div");
    brandContainer.classList.add("brand-container");
    brandListDiv.appendChild(brandContainer);

    brands.forEach((brand) => {
        const brandItem = document.createElement("div");
        brandItem.classList.add("brand-item");

        brandItem.innerHTML = `
            <img src="${brand.image}" alt="${brand.name}" class="brand-logo">
            <p class="brand-name">${brand.name}</p>
        `;

        brandContainer.appendChild(brandItem);
    });

    setupSlides();
}

// Xử lý slide
function setupSlides() {
    const brandItems = document.querySelectorAll(".brand-item");
    const itemsPerSlide = 8; // Hiển thị 4 thương hiệu mỗi slide

    brandItems.forEach((item, index) => {
        item.style.display = index < itemsPerSlide ? "block" : "none";
    });

    currentSlideIndex = 0;
}

function showSlide(index) {
    const brandItems = document.querySelectorAll(".brand-item");
    const itemsPerSlide = 8;
    const totalSlides = Math.ceil(brandItems.length / itemsPerSlide);

    if (index < 0) currentSlideIndex = totalSlides - 1;
    else if (index >= totalSlides) currentSlideIndex = 0;
    else currentSlideIndex = index;

    brandItems.forEach((item, i) => {
        if (i >= currentSlideIndex * itemsPerSlide && i < (currentSlideIndex + 1) * itemsPerSlide) {
            item.style.display = "block";
        } else {
            item.style.display = "none";
        }
    });
}

function prevSlide() {
    showSlide(currentSlideIndex - 1);
}

function nextSlide() {
    showSlide(currentSlideIndex + 1);
}

// Tải danh sách thương hiệu khi trang được tải
document.addEventListener("DOMContentLoaded", fetchBrandList);
