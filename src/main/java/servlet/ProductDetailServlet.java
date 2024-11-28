package servlet;

import dao.ProductsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;
import object.ProductDetail;

import java.io.IOException;

@WebServlet("/productDetail")
public class ProductDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy ID sản phẩm từ URL
        String productId = request.getParameter("id");

        // Lấy thông tin sản phẩm từ cơ sở dữ liệu (ví dụ sử dụng DAO)
        Product product = ProductsDao.getProductById(Integer.parseInt(productId));
        ProductDetail productDetail = product.getProductDetail();
        System.out.println(productDetail.toString());
        // Đặt thông tin sản phẩm vào request scope
        request.setAttribute("product", productDetail);
        request.setAttribute("products", product);


        // Chuyển tiếp đến trang chi tiết sản phẩm (JSP)
        request.getRequestDispatcher("index/detailsProduct.jsp").forward(request, response);
    }
}
