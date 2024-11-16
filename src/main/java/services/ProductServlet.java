package services;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import object.Product;
import dao.ProductsDao;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductsDao productDetails = new ProductsDao();
        List<Product> products = productDetails.listProducts();
      
        HttpSession session = request.getSession();
        session.setAttribute("products", products); // Gửi danh sách sản phẩm sang JSP
      request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
