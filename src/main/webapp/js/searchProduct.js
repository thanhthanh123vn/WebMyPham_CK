async function searchProduct() {
    const searchInput = document.getElementById("searchInput");
    const resultDiv = document.getElementById("resultSearchProducts");
    const hoverSearch = document.getElementById("searchNotification");

    const keyword = searchInput.value.trim();

    console.log(keyword);



    if (keyword === "") {
        resultDiv.innerHTML = "";
        hoverSearch.style.display = "none";
        return;
    }

    try {
        const response = await fetch(`${pageContext.request.contextPath}/searchProduct?name=${encodeURIComponent(keyword)}`);


        if (!response.ok) {

            throw new Error("Phản hồi không hợp lệ.");
        }

        const searchProducts = await response.json();
         // Hiển thị thông báo
        hoverSearch.style.display = "none";
        displaySearchResults(searchProducts.products, resultDiv);

    } catch (error) {
        console.error("Lỗi xảy ra:", error);
        resultDiv.innerHTML = "<p>Đã xảy ra lỗi khi tìm kiếm sản phẩm.</p>";
    }
}

function displaySearchResults(products, resultDiv) {
    resultDiv.innerHTML = "";

    if (products.length === 0) {
        resultDiv.innerHTML = "<p>Không tìm thấy sản phẩm phù hợp.</p>";
        return;
    }

    const list = document.createElement("ul");
    list.style.listStyle = "none";
    list.style.padding = "0";

    products.forEach(product => {
        const listItem = document.createElement("li");
        listItem.style.display = "flex";
        listItem.style.alignItems = "center";
        listItem.style.padding = "10px";
        listItem.style.borderBottom = "1px solid #ddd";

        listItem.innerHTML = `
            <img src="${product.image}" alt="${product.name}" 
                style="width: 50px; height: 50px; margin-right: 10px; border-radius: 5px;">
            <div style="flex-grow: 1;">
                <p style="margin: 0; font-weight: bold;">${product.detail}</p>
                <p style="margin: 0; color: #888;">${product.price.toLocaleString()} VND</p>
            </div>
        `;
        listItem.onclick =function (){
            detailsProducts(product.id);
        };
        list.appendChild(listItem);
    });

    resultDiv.appendChild(list);


}



    document.addEventListener("click", function () {
        const searchInput = document.getElementById("searchInput");
        const resultDiv = document.getElementById("resultSearchProducts");
        const hoverSearch = document.getElementById("searchNotification");
        searchInput.addEventListener("blur", function () {

                resultDiv.innerHTML = "";
                resultDiv.style.display = "none";


        });

        searchInput.addEventListener("focus", function () {
            if (resultDiv.innerHTML.trim() !== "") {
                resultDiv.style.display = "block";
            }
        });
    });
function  detailsProducts(productId){
    console.log("productDetail" ,productId);
    window.location.href = `productDetail?id=${productId}`;

}