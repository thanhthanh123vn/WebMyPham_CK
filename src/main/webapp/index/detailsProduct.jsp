
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="object.Product" %>
<%@ page import="object.User" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/hearderFooter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/detailsProduct.css">
</head>


<!-- Header -->
<div id="web-service">
<jsp:include page="../header.jsp"/>

<!-- Product Detail Section -->



    <div class="slection-product">
        <!-- Sidebar -->
        <div id="list-search-alpha">
            <ul>
                <li><a href="#">Trang chủ <i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Sức Khỏe - Làm Đẹp<i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Chăm Sóc Da Mặt <i class="fa-solid fa-chevron-right"> </i></a></li>
                <li><a href="#"> Làm Sạch Da <i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Tẩy Trang Mặt <i class="fa-solid fa-chevron-right"></i> </a></li>
                <li><a href="#"> Nước Tẩy Trang L'Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml </a></li>

            </ul>
        </div>
        <div class="synthetic"> <!--tổng hợp 2 bên-->
            <div class="product-detail"> <!--bao quanh chi tiết-->
                <div class="image-product"> <!--chi tiết ảnh bên trái-->
                    <div class="container-image"> <!--list ảnh scroll-->

                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-205100137-1695896128.png"
                                 alt="Image 1" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/p/r/promotions-auto-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml_VLF3ivLnqLaFKFed.png"
                                 alt="Image 2" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1684996339_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 3" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1-1684996339_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 4" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/k/e/kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-2-1716439990_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 5" onclick="selectImage(this.src)">
                        </div>
                        <div class="image-item">
                            <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-2-1684996339_img_80x80_d200c5_fit_center.jpg"
                                 alt="Image 6" onclick="selectImage(this.src)">
                        </div>
                    </div>
                    <img id="display-combobox" src="https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-205100137-1695896128.png">
                </div>
                <div class="infor-product">
                    <ul>
                        <li>
                            <a href="#">
                                <span class="color-orange italic-bold">N<i
                                        class="fa-regular fa-circle-check"></i>WFree</span>
                                <span class="green bold name-product">${product.brand}</span>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="product-title">${product.productName}</a>
                        </li>
                        <li class="special-item"><a href="#">Số công bố với Bộ Y Tế : 71846/18/CBMP-QLD</a></li>
                        <li class="custom-font-size">
                            <span class="color-orange">★★★★★ </span>
                            <a href="#">294 đánh giá</a>
                            <a href="#">| 955 Hỏi đáp</a>
                            <a href="#">| Mã sản phẩm: 205100137</a>
                        </li>
                        <li>
                            <a href="#" class="price color-orange"><i class="fa-solid fa-money-check-dollar"></i>${products.price}
                                ₫</a>
                            <span class="vat-text">(Đã bao gồm VAT)</span>
                        </li>

                        <li><span class="color-orange">Tặng ngay phần quà khi mua tại cửa hàng còn quà</span></li>
                        <li class="title">Dung Tich:</li>
                        <ul class="inline-list">
                            <!-- Tách chuỗi volume thành danh sách -->
                            <c:set var="volumes" value="${fn:split(product.volume, ' ')}" />
                            <c:forEach var="volume" items="${volumes}">
                                <li><a href="#">${volume}</a></li>
                            </c:forEach>

                        </ul>
                        <li class="title">Công dụng: <span class="useed"></span></li>
                        <div id="image-used">
                            <!-- <img src="" alt="Ảnh Công Dụng"> -->
                        </div>
                        <li>Số lượng: <span>

                                ${product.sensitiveSkinSafe ? '1' : '0'}

                        </span></li>
                        <li>
                            <a href="#">
                                <span class="color-orange italic-bold">N<i
                                        class="fa-regular fa-circle-check"></i>WFree</span>
                                Giao Nhanh Miễn Phí 2H tại 222 Chi Nhánh: </a>
                        </li>
                        <li>Bạn muốn nhận hàng trước <span class="color-orange">10h</span> ngày mai. Đặt hàng trước
                            <span class="color-orange">24h</span> và chọn giao hàng <span class="color-orange">2h</span>
                            ở
                            bước
                            thanh toán.
                            <a href="#"> Xem chi tiết</a>
                        </li>
                        <ul>
                            <li>
                                <button type="button" class="button-light-green">
                                    <i class="fa-solid fa-location-dot"></i> 224/224 Chi Nhánh Còn sản phẩm
                                </button>


                                <button type="button" class="button-dark-green" id="card-product" onclick="addProductCart(${products})">
                                    <i class="fa-sharp fa-solid fa-cart-shopping"></i> GIỎ HÀNG
                                </button>
                                <button type="button" class="button-orange">
                                    <span class="size-end">Mua ngay NowFree 2H</span> Trể tặng 100k
                                </button>
                            </li>
                        </ul>
                    </ul>
                </div>
            </div>


            <div class="your-infor">
                <ul>
                    <li class="green">- MIỄN PHÍ VẬN CHUYỂN -</li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/delivery-120-minutes.png" alt="">
                        Giao Nhanh Miễn Phí 2H tại 224 Chi Nhánh.
                        <span class="style-bold">Trễ tặng 100K</span>
                    </li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_3.png" alt="">
                        Hasaki đền bù <span class="style-bold">100%</span> + hãng đền bù <span
                            class="style-bold">100%</span>
                        nếu phát hiện hàng giả
                    </li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_2.png" alt="">
                        <span class="style-bold">Giao Hàng Miễn Phí</span> (từ 90K tại 54 Tỉnh Thành trừ huyện, toàn
                        Quốc từ
                        249K)
                    </li>
                    <li>
                        <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_2.png" alt="">
                        Đổi trả trong <span class="style-bold">30 ngày</span>.
                    </li>
                </ul>
            </div>
        </div>
        <div id="similar-products"></div>
        <div class="main-infor-detail">
            <div class="choose-detail">
                <ul>
                    <li><a href="#">Thông tin</a></li>
                    <li><a href="#">Thông số</a></li>
                    <li><a href="#">Thành phần</a></li>
                    <li><a href="#">Cách dùng</a></li>
                    <li><a href="#">Đánh giá</a></li>
                    <li><a href="#">Hỏi </a></li>
                </ul>
            </div>
            <div id="information">
                <p><span class="font-bold">${product.productName}</span> là dòng sản phẩm <a href="#">tẩy
                    trang</a> dạng nước đến từ <a href="#">thương hiệu ${product.brand}</a>, được ứng dụng công nghệ
                    Micellar
                    dịu nhẹ giúp làm
                    sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da thông
                    thoáng,
                    mềm
                    mượt mà không hề khô căng.</p>
                <img src="#" alt="Ảnh Sản phẩm">
            </div>
            <div id="parameter">
                <h3>Thông số sản phẩm</h3>
                <table>
                    <tr>
                        <td>Barcode</td>
                        <td>${product.barcode}</td>
                    </tr>
                    <tr>
                        <td>Thương Hiệu</td>
                        <td>${product.brand}</td>
                    </tr>
                    <tr>
                        <td>Xuất xứ thương hiệu</td>
                        <td>${product.brandOrigin}</td>
                    </tr>
                    <tr>
                        <td>Nơi sản xuất</td>
                        <td>${product.manufactureLocation}</td>
                    </tr>
                    <tr>
                        <td>Loại da</td>
                        <td>${product.suitableSkin}</td>
                    </tr>
                </table>
            </div>

            <div id="ingredient">
                <h3>Thành phần sản phẩm</h3>

                <h4>1. L'Oréal Paris Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin (Xanh dương đậm)</h4>
                <strong>Thành phần chính:</strong>
                <p>Có hai lớp chất lỏng giúp hòa tan chất bẩn và loại bỏ toàn bộ lớp trang điểm hiệu quả, kể cả lớp
                    trang
                    điểm lâu trôi và không thấm nước chỉ trong một bước.</p>
                <p>Lớp Micellar chứa các hạt mixen siêu nhỏ len lỏi sâu và dễ dàng lấy đi bụi bẩn, dầu thừa, lớp trang
                    điểm
                    và chất bẩn khác mà không làm khô da.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Cyclopentasiloxane, Isohexadecane, Potassium Phosphate, Sodium Chloride, Dipotassium
                    Phosphate, Disodium Edta, Decyl Glucoside, Hexylene Glycol, Polyaminopropyl Biguanide, CI 61565 /
                    Green
                    6</p>

                <h4>2. L'Oréal Paris Micellar Water 3-in-1 Refreshing Even For Sensitive Skin (Xanh dương nhạt)</h4>
                <strong>Thành phần chính:</strong>
                <p>Nước khoáng lấy từ những ngọn núi ở Pháp: làm dịu và giúp làn da trông tươi tắn lên sau khi tẩy
                    trang.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta,
                    BHT ,
                    Polyaminopropyl Biguanide</p>

                <h4>3. L'Oréal Paris Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin (Hồng)</h4>
                <strong>Thành phần chính:</strong>
                <p>Chiết xuất hoa hồng Pháp: cân bằng độ ẩm & làm mềm mịn da, làn da vẫn đủ độ ẩm sau khi tẩy trang.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184,
                    Disodium
                    Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>

                <h4>4. L'Oréal Paris Revitalift Crystal Purifying Micellar Water (Trắng)</h4>
                <strong>Thành phần chính:</strong>
                <p>Công nghệ micelles: hoạt động như một nam châm làm sạch, loại bỏ 5 loại tạp chất có trên da bạn hằng
                    ngày, giúp lỗ chân lông thoáng sạch.</p>
                <p>Glycerin: giúp cấp nước và giữ độ ẩm cho da, phục hồi và duy trì vẻ ngoài khỏe khoắn.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184,
                    Disodium
                    Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>

                <h4>5. L'Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water (Tím)</h4>
                <strong>Thành phần chính:</strong>
                <p>Hyaluronic Acid: giúp làm dịu và cấp ẩm da căng mọng từ bên trong, nuôi dưỡng da khỏe mạnh và sáng
                    bóng.</p>
                <strong>Thành phần đầy đủ:</strong>
                <p>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184,
                    Disodium
                    Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>
            </div>
            <div id="use">
                <h3>Hướng dẫn sử dụng</h3>
                <p>Lắc đều sản phẩm Nước Tẩy Trang L'Oreal trước khi sử dụng.</p>
                <p>Đổ nước tẩy trang thấm ướt vừa đủ lên miếng bông tẩy trang.</p>
                <p>Nhẹ nhàng lau lên mặt, mắt và môi theo chuyển động tròn (Riêng đối với vùng mắt, bạn hãy giữ miếng
                    bông
                    tẩy trang trên mắt vài giây để nước tẩy trang thấm sâu và cuốn đi lớp make-up dễ dàng hơn).</p>
                <p>Sử dụng để tẩy trang nhanh (không cần rửa lại với nước) khi bận rộn hoặc ở những nơi thiếu nước: khi
                    đi
                    du lịch, đi spa, đi gym, v.v...</p>
                <p>Khuyến khích sử dụng quy trình chăm sóc da hoàn chỉnh để có hiệu quả dưỡng da tốt nhất (Nước tẩy
                    trang -
                    Sữa rửa mặt - Nước hoa hồng - Kem dưỡng).</p>
            </div>




        </div>

    </div>

<jsp:include page="../footer.jsp"/>
</div>
<script src="${pageContext.request.contextPath}/js/main.js"></script>

<script src="${pageContext.request.contextPath}/js/searchProduct.js"></script>.
<script src="${pageContext.request.contextPath}/js/updateUserMain.js"></script>
<script src="${pageContext.request.contextPath}/js/modifierCart.js"></script>
<script >



        // Đảm bảo biến products đã được định nghĩa




function categorySearch(){

const searchInput = document.getElementById("searchInput").value;
console.log(searchInput)
window.location.href =`danh-muc?name=`+searchInput;


}

</script>


<%

    // Lấy username từ session
    User user = (User) session.getAttribute("user");

    String username = user.getFullName();


    // Nếu cưa đăng nhập, gán giá trị rỗng
    if (username == null) {
        username = "";
    }
%>
<script>
    // Gán username từ server vào biến JavaScript
    const username = "<%= username %>";
    console.log(username);

    // Kiểm tra trạng thái đăng nhập và gọi hàm loginUser nếu đã đăng nhập
    if (username && username.trim() !== "") {
        loginUser();
    }

    // Đảm bảo xử lý nút đăng xuất
    document.addEventListener("DOMContentLoaded", () => {
        const logoutButtons = document.querySelectorAll(".logout-account");
        logoutButtons.forEach(button => {
            button.addEventListener("click", () => {
                logoutUser();
            });
        });
    });

    // Hàm xử lý đăng xuất
    function logoutUser() {
        console.log("Đăng xuất...");

        // Gửi yêu cầu đến server để xóa session
        fetch("LogoutServlet", {
            method: "POST"
        })
            .then(response => {
                if (response.ok) {
                    console.log("Đăng xuất thành công");
                    // Chuyển hướng người dùng về trang đăng nhập hoặc trang chủ
                    window.location.href = "index.jsp";
                } else {
                    console.error("Lỗi khi đăng xuất");
                }
            })
            .catch(error => console.error("Lỗi kết nối:", error));
    }
</script>

</body>
</html>
