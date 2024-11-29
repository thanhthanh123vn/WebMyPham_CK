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
        try {
            // Lấy ID sản phẩm từ URL
            String productId = request.getParameter("id");
            if (productId == null || productId.isEmpty()) {
                throw new IllegalArgumentException("Product ID is required");
            }
            ProductsDao productsDao = new ProductsDao();
            // Lấy thông tin sản phẩm từ cơ sở dữ liệu
            Product product = productsDao.getProductById(Integer.parseInt(productId));
            if (product == null) {
                throw new NullPointerException("Product not found for ID: " + productId);
            }

            ProductDetail productDetail = product.getProductDetail();
            System.out.println( " ProductDetails "+productDetail.toString());
            System.out.println(" ProductDetails "+product.toString());
            if (productDetail == null) {
                throw new NullPointerException("Product detail not found for product ID: " + productId);
            }

            // Đặt thông tin sản phẩm vào request scope
            request.setAttribute("product", productDetail);
            request.setAttribute("products", product);

            // Chuyển tiếp đến trang chi tiết sản phẩm (JSP)
            request.getRequestDispatcher("index/detailsProduct.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace(); // Log lỗi để debug
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}

