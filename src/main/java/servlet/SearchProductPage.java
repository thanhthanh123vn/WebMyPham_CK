package servlet;

import com.google.gson.Gson;
import dao.ProductsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;

import java.io.IOException;
import java.util.List;

@WebServlet("/danh-muc")
public class SearchProductPage extends HttpServlet {
    private ProductsDao productsDao = new ProductsDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lấy tham số từ request
        String searchProduct = req.getParameter("name");
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        System.out.println(searchProduct);

        if (searchProduct != null && !searchProduct.trim().isEmpty()) {
            // Truy vấn sản phẩm từ cơ sở dữ liệu
            List<Product> products = productsDao.searchProduct(searchProduct);
            req.setAttribute("products", products);

            req.getRequestDispatcher("SearchProducts.jsp").forward(req, resp);






        } else {
            // Nếu tham số tìm kiếm rỗng, trả về lỗi
            req.setAttribute("error","Không tìm thấy sản phẩm");
            req.getRequestDispatcher("SearchProducts.jsp").forward(req, resp);
        }
    }
}
