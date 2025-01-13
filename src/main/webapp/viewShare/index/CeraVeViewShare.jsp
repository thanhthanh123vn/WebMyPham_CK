<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/13/2025
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>





          <div id="information">
            <p><span class="font-bold">Sữa Rửa Mặt ${products.name} Sạch Sâu </span> là dòng sản phẩm <a
                    href="#">
              sữa rửa mặt</a> đến từ <a href="#"> thương hiệu mỹ phẩm ${product.brand}</a> của Mỹ, với sự
              kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm giúp làm sạch và giữ ẩm cho làn
              da mà không ảnh hưởng đến hàng rào bảo vệ da mặt và cơ thể.</p>
            <p>Hiện sản phẩm Sữa Rửa Mặt ${product.name} Sạch Sâu đã có mặt tại TTT với 2 loại và 3 dung
              tích (88ml; 236ml; 473ml):
            </p>
            <ul>
              <li>Sữa Rửa Mặt ${products.name} Sạch Sâu Cho Da Thường Đến Da Dầu
              </li>
              <li>Sữa Rửa Mặt ${products.name} Sạch Sâu Cho Da Thường Đến Da Khô
              </li>

            </ul>
            <img src="https://media.hcdn.vn/wysiwyg/kimhuy/sua-rua-mat-cerave-sach-sau-cho-da-thuong-den-da-dau.jpg"
                 alt="Ảnh Sản phẩm">
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
                <td>${product.brandOrigin}
                </td>
              </tr>
              <tr>
                <td>Nơi sản xuất</td>
                <td>${product.manufactureLocation}</td>
              </tr>
              <tr>
                <td>Loại da</td>
                <td>${product.skinSolution}
                </td>
              </tr>
            </table>
          </div>
          <div id="ingredient">
            <h3>Thành phần sản phẩm</h3>
            <h4>1.Sữa Rửa Mặt ${products.name} Sạch Sâu Cho Da Thường Đến Da Dầu</h4>
            <strong>Thành phần chính:</strong>
            <ul>
              <li>3 loại Ceramides (1, 3, 6-II): thiết yếu giúp khôi phục hàng rào độ ẩm da.
              </li>
              <li>Hyaluronic Acid: giúp duy trì độ ẩm tự nhiên của da.
              </li>
              <li>Niacinamide: giúp làm dịu, nuôi dưỡng, củng cố hàng rào da.
              </li>
            </ul>
            <strong>Thành phần đầy đủ:</strong>
            <ul>
              <li>Purified Water (Aqua), Cocamidopropyl Hydroxysultaine, Glycerin, Sodium Lauroyl
                Sarcosinate, Peg-150 Pentaerythrityl Tetrastearate (And) Peg-6 Caprylic/Capric
                Glycerides, Niacinamide, Propylene Glycol, Sodium Methyl Cocoyl Taurate, Ceramide 3,
                Ceramide 6-Ii, Ceramide 1, Hyaluronic Acid, Cholesterol, Sodium Chloride,
                Phytosphingosine, Citric Acid, Edetate Disodium Dihydrate, Sodium Lauroyl Lactylate,
                Methylparaben, Propylparaben, Carbomer, Xanthan Gum.
              </li>
            </ul>
            <h4>2.Sữa Rửa Mặt ${product.name} Sạch Sâu Cho Da Thường Đến Da Khô</h4>
            <strong>Thành phần chính:</strong>
            <ul>
              <li>3 loại Ceramides (1, 3, 6-II): thiết yếu giúp khôi phục hàng rào độ ẩm da.
              </li>
              <li>Hyaluronic Acid: giúp duy trì độ ẩm tự nhiên của da.
              </li>
              <li>Niacinamide: giúp làm dịu, nuôi dưỡng, củng cố hàng rào da.
              </li>
            </ul>
            <strong>Thành phần đầy đủ:</strong>
            <ul>
              <li>Purified Water, Glycerin, Behentrimonium Methosulfate, Cetearyl Alcohol, Ceramide 3,
                Ceramide 6-Ii, Ceramide 1, Hyaluronic Acid, Cholesterol, Polyoxyl 40 Stearate, Glyceryl
                Monostearate, Stearyl Alcohol, Polysorbate 20, Potassium Phosphate, Dipotassium
                Phosphate, Sodium Lauroyl Lactylate, Cetyl Alcohol, Disodium Edta, Phytosphingosine,
                Methylparaben, Propylparaben, Carbomer, Xanthan Gum.
              </li>
            </ul>
          </div>
          <div id="use">
            <h3>Hướng dẫn sử dụng</h3>
            <ul>
              <li>Làm ướt da.
              </li>
              <li>Mát xa sữa rửa mặt theo chuyển động tròn.
              </li>
              <li>Nhẹ nhàng rửa sạch lại với nước.
              </li>
            </ul>
          </div>
          <div id="Evaluate">
            <h3>Đánh giá</h3>
            <p>Đánh giá trung bình: <strong>4.8</strong></p>
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
            <input type="text" placeholder="Bạn có câu hỏi với sản phẩm này? Đặt câu hỏi ngay."/>
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
