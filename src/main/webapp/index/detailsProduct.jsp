
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nthanh Header</title>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"--%>
<%--          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="--%>
<%--          crossorigin="anonymous" referrerpolicy="no-referrer"/>--%>
  <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/detailProduct.css">


</head>

<body>
<div id="web-service">
<jsp:include page="../header.jsp"/>
    <div class="session-body">
        <div class="containers">
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
                                    <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1684996339_img_385x385_622873_fit_center.jpg"
                                         alt="Image 3" onclick="selectImage(this.src)">
                                </div>
                                <div class="image-item">
                                    <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1-1684996339_img_385x385_622873_fit_center.jpg"
                                         alt="Image 4" onclick="selectImage(this.src)">
                                </div>
                                <div class="image-item">
                                    <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-3-1684996340_img_385x385_622873_fit_center.jpg"
                                         alt="Image 5" onclick="selectImage(this.src)">
                                </div>
                                <div class="image-item">
                                    <img src="https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-2-1684996339_img_385x385_622873_fit_center.jpg"
                                         alt="Image 6" onclick="selectImage(this.src)">
                                </div>
                            </div>
                            <img id="display-combobox"
                                 src="https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-205100137-1695896128.png">
                        </div>
                        <div class="infor-product">
                            <ul>
                                <li>
                                    <a href="#">
                                <span class="color-orange italic-bold">N<i
                                        class="fa-regular fa-circle-check"></i>WFree</span>
                                        <span class="green bold name-product">L'Oreal</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="product-title">Nước Tẩy Trang L'Oreal Tươi Mát Cho Da Dầu, Hỗn
                                        Hợp
                                        400ml</a>
                                </li>
                                <li class="special-item"><a href="#">Số công bố với Bộ Y Tế : 71846/18/CBMP-QLD</a></li>
                                <li class="custom-font-size">
                                    <span class="color-orange">★★★★★ </span>
                                    <a href="#">294 đánh giá</a>
                                    <a href="#">| 955 Hỏi đáp</a>
                                    <a href="#">| Mã sản phẩm: 205100137</a>
                                </li>
                                <li>
                                    <a href="#" class="price color-orange"><i
                                            class="fa-solid fa-money-check-dollar"></i>152.000
                                        ₫</a>
                                    <span class="vat-text">(Đã bao gồm VAT)</span>
                                </li>

                                <li><span class="color-orange">Tặng ngay phần quà khi mua tại cửa hàng còn quà</span>
                                </li>
                                <li class="title">Dung Tich:</li>
                                <ul class="inline-list">
                                    <li><a href="#">2x400ml</a></li>
                                    <li><a href="#">95ml</a></li>
                                    <li><a href="#">400+95ml</a></li>
                                    <li><a href="#">400ml</a></li>
                                    <li><a href="#">Công dụng:</a></li>
                                </ul>
                                <li class="title">Công dụng: <span class="useed"></span></li>
                                <div id="image-used">
                                    <!-- <img src="" alt="Ảnh Công Dụng"> -->
                                </div>
                                <li>Số lượng: <span>1</span></li>
                                <li>
                                    <a href="#">
                                <span class="color-orange italic-bold">N<i
                                        class="fa-regular fa-circle-check"></i>WFree</span>
                                        Giao Nhanh Miễn Phí 2H tại 222 Chi Nhánh: </a>
                                </li>
                                <li>Bạn muốn nhận hàng trước <span class="color-orange">10h</span> ngày mai. Đặt hàng
                                    trước
                                    <span class="color-orange">24h</span> và chọn giao hàng <span
                                            class="color-orange">2h</span>
                                    ở
                                    bước
                                    thanh toán.
                                    <a href="#"> Xem chi tiết</a>
                                </li>
                                <ul style="">
                                    <li style="display: flex; gap: 10px; justify-content: space-around; margin-right: 20px;">
                                        <button type="button" class="button-light-green">
                                            <i class="fa-solid fa-location-dot"></i> 224/224 Chi Nhánh Còn sản phẩm
                                        </button>
                                        <button type="button" class="button-dark-green" id="card-prodcut">
                                            <i class="fa-sharp fa-solid fa-cart-shopping"></i> GIỎ HÀNG
                                        </button>
                                        <button type="button" class="button-orange">
                                            <span class="size-end" onclick="window.location.href='payAddress.html'">Mua ngay NowFree 2H</span>
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
                                <img class="info-image" src="https://hasaki.vn/images/graphics/delivery-120-minutes.png"
                                     alt="">
                                Giao Nhanh Miễn Phí 2H tại 224 Chi Nhánh.
                                <span class="style-bold">Trễ tặng 100K</span>
                            </li>
                            <li>
                                <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_3.png"
                                     alt="">
                                Hasaki đền bù <span class="style-bold">100%</span> + hãng đền bù <span
                                    class="style-bold">100%</span>
                                nếu phát hiện hàng giả
                            </li>
                            <li>
                                <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_2.png"
                                     alt="">
                                <span class="style-bold">Giao Hàng Miễn Phí</span> (từ 90K tại 54 Tỉnh Thành trừ huyện,
                                toàn
                                Quốc từ
                                249K)
                            </li>
                            <li>
                                <img class="info-image" src="https://hasaki.vn/images/graphics/img_quality_2.png"
                                     alt="">
                                Đổi trả trong <span class="style-bold">30 ngày</span>.
                            </li>
                        </ul>
                    </div>
                </div>
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
                        <p><span class="font-bold">Nước Tẩy Trang L'Oréal</span> là dòng sản phẩm <a href="#">tẩy
                            trang</a> dạng nước đến từ <a href="#">thương hiệu L'Oreal Paris</a>, được ứng dụng công
                            nghệ
                            Micellar
                            dịu nhẹ giúp làm
                            sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da
                            thông
                            thoáng,
                            mềm
                            mượt mà không hề khô căng.</p>
                        <img src="https://media.hasaki.vn/wysiwyg/nhphuong/PhuongSmall/nuoc-tay-trang-l-oreal-3-in-1.jpg"
                             alt="Ảnh Sản phẩm">
                    </div>
                    <div id="parameter">
                        <h3>Thông số sản phẩm</h3>
                        <table>
                            <tr>
                                <td>Barcode</td>
                                <td>6928820030226</td>
                            </tr>
                            <tr>
                                <td>Thương Hiệu</td>
                                <td>L'Oreal</td>
                            </tr>
                            <tr>
                                <td>Xuất xứ thương hiệu</td>
                                <td>Pháp</td>
                            </tr>
                            <tr>
                                <td>Nơi sản xuất</td>
                                <td>China</td>
                            </tr>
                            <tr>
                                <td>Loại da</td>
                                <td>Da dầu/Hỗn hợp dầu</td>
                            </tr>
                        </table>
                    </div>
                    <div id="ingredient">
                        <h3>Thành phần sản phẩm</h3>

                        <h4>2. L'Oréal Paris Micellar Water 3-in-1 Refreshing Even For Sensitive Skin (Xanh dương nhạt)</h4>
                        <strong>Thành phần chính:</strong>
                        <ul>
                            <li>Nước khoáng lấy từ những ngọn núi ở Pháp: làm dịu và giúp làn da trông tươi tắn lên sau khi tẩy trang.</li>
                        </ul>
                        <strong>Thành phần đầy đủ:</strong>
                        <ul>
                            <li>Aqua / Water, Hexylene Glycol, Glycerin, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, BHT, Polyaminopropyl Biguanide</li>
                        </ul>

                        <h4>3. L'Oréal Paris Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin (Hồng)</h4>
                        <strong>Thành phần chính:</strong>
                        <ul>
                            <li>Chiết xuất hoa hồng Pháp: cân bằng độ ẩm & làm mềm mịn da, làn da vẫn đủ độ ẩm sau khi tẩy trang.</li>
                        </ul>
                        <strong>Thành phần đầy đủ:</strong>
                        <ul>
                            <li>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT, Polyaminopropyl Biguanide</li>
                        </ul>

                        <h4>4. L'Oréal Paris Revitalift Crystal Purifying Micellar Water (Trắng)</h4>
                        <strong>Thành phần chính:</strong>
                        <ul>
                            <li>Công nghệ micelles: hoạt động như một nam châm làm sạch, loại bỏ 5 loại tạp chất có trên da bạn hằng ngày, giúp lỗ chân lông thoáng sạch.</li>
                            <li>Glycerin: giúp cấp nước và giữ độ ẩm cho da, phục hồi và duy trì vẻ ngoài khỏe khoắn.</li>
                        </ul>
                        <strong>Thành phần đầy đủ:</strong>
                        <ul>
                            <li>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT, Polyaminopropyl Biguanide</li>
                        </ul>

                        <h4>5. L'Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water (Tím)</h4>
                        <strong>Thành phần chính:</strong>
                        <ul>
                            <li>Hyaluronic Acid: giúp làm dịu và cấp ẩm da căng mọng từ bên trong, nuôi dưỡng da khỏe mạnh và sáng bóng.</li>
                        </ul>
                        <strong>Thành phần đầy đủ:</strong>
                        <ul>
                            <li>Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT, Polyaminopropyl Biguanide</li>
                        </ul>
                    </div>
                    <div id="use">
                        <h3>Hướng dẫn sử dụng</h3>
                        <ul>
                            <li>Lắc đều sản phẩm Nước Tẩy Trang L'Oreal trước khi sử dụng.</li>
                            <li>Đổ nước tẩy trang thấm ướt vừa đủ lên miếng bông tẩy trang.</li>
                            <li>Nhẹ nhàng lau lên mặt, mắt và môi theo chuyển động tròn.
                                <br> (Riêng đối với vùng mắt, bạn hãy giữ miếng bông tẩy trang trên mắt vài giây để nước tẩy trang thấm sâu và cuốn đi lớp make-up dễ dàng hơn).
                            </li>
                            <li>Sử dụng để tẩy trang nhanh (không cần rửa lại với nước) khi bận rộn hoặc ở những nơi thiếu nước: khi đi du lịch, đi spa, đi gym, v.v...</li>
                            <li>Khuyến khích sử dụng quy trình chăm sóc da hoàn chỉnh để có hiệu quả dưỡng da tốt nhất (Nước tẩy trang - Sữa rửa mặt - Nước hoa hồng - Kem dưỡng).</li>
                        </ul>
                    </div>
                    <div id="Evaluate">
                        <h3>Đánh giá</h3>
                        <p>Đánh giá trung bình: <strong>4.7</strong></p>
                        <p>
                            <span>★★★★★</span>
                        </p>
                        <p>294 nhận xét</p>
                        <p>
                            5 sao: <span class="rating-bar five-stars"></span> 228 Rất hài lòng
                        </p>
                        <p>
                            4 sao: <span class="rating-bar four-stars"></span> 55 Hài lòng
                        </p>
                        <p>
                            3 sao: <span class="rating-bar three-stars"></span> 7 Bình thường
                        </p>
                        <p>
                            2 sao: <span class="rating-bar two-stars"></span> 3 Không hài lòng
                        </p>
                        <p>
                            1 sao: <span class="rating-bar one-star"></span> 1 Rất tệ
                        </p>
                        <p>Chia sẻ nhận xét của bạn về sản phẩm này</p>
                        <a href="#" class="submit-review">Viết Bình luận</a>
                    </div>
                    <div id="Q&A">
                        <h3>Hỏi đáp</h3>
                        <input type="text" placeholder="Bạn có câu hỏi với sản phẩm này? Đặt câu hỏi ngay." />
                        <button>Gửi</button>

                        <div class="question">
                            <p><strong>Kim Tuyền - 02/12/2024</strong></p>
                            <p>Giá bên ngoài cửa hàng có giống trên đây không ạ?</p>
                            <p><span>Thích 0</span> - <a href="#">Trả lời</a></p>
                        </div>

                        <div class="answer">
                            <p><strong>Hasaki - 02/12/2024</strong></p>
                            <p>Dạ giá sản phẩm tại các cửa hàng thuộc hệ thống Hasaki...</p>
                            <p><span>Thích 0</span></p>
                        </div>

                        <div class="question">
                            <p><strong>Khánh Lâm - 28/11/2024</strong></p>
                            <p>Da dầu chọn nắp nào ạ?</p>
                            <p><span>Thích 1</span> - <a href="#">Trả lời</a></p>
                        </div>

                        <div class="answer">
                            <p><strong>Hasaki - 28/11/2024</strong></p>
                            <p>Hasaki xin chào, để tiện hỗ trợ hơn...</p>
                            <p><span>Thích 1</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <jsp:include page="../footer.jsp"/>
</div>

<%--<script src="../js/detailProduct.js"></script>--%>
<script src="../js/main.js"></script>
<script>
    function selectImage(imageSrc) {
        console.log(imageSrc);
        const displayedImage = document.getElementById('display-combobox');
        displayedImage.src = imageSrc;
        displayedImage.style.display = 'block'; // Hiển thị hình ảnh đã chọn
    }

    var cardProduct = document.getElementById('card-prodcut');

    cardProduct.onclick = function () {
        increaseCartCount();


    }

    function increaseCartCount() {
        // Lấy phần tử có class 'cart-count'
        const cartCountElement = document.querySelector('.cart-count');

        const info = document.querySelector('.infor-product');
        var image = "https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-205100137-1695896128.png";
        var name = info.querySelector('.name-product')?.textContent.trim() || '';
        var detail = info.querySelector('.product-title')?.textContent.trim() || '';
        var price = info.querySelector('.price')?.textContent.trim() || '';

        var product = {
            image: image,
            name: name,
            detail: detail,
            price: price
        };


        // Kiểm tra xem phần tử có tồn tại hay không
        if (cartCountElement) {
            // Lấy giá trị hiện tại và chuyển thành số nguyên
            let currentCount = parseInt(cartCountElement.textContent);

            // Kiểm tra nếu currentCount là số, nếu không gán mặc định là 0
            if (isNaN(currentCount)) {
                currentCount = 0;
            }

            // Tăng giá trị lên 1 và cập nhật lại nội dung
            cartCountElement.textContent = currentCount + 1;
            addProduct(product);
            alert("Thêm sản phẩm thành công");
        } else {
            console.log("Không tìm thấy phần tử có class 'cart-count'");
        }
    }
</script>
</body>

</html>