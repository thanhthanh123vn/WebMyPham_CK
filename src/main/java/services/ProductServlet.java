package services;
import dao.CategoryDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import object.Categories;
import object.Product;
import dao.ProductsDao;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductsDao productDetails = new ProductsDao();
        CategoryDao categoryDao = new CategoryDao();


        int startIndex = 0;
        String startIndexParam = request.getParameter("startIndex");
        if (startIndexParam != null) {
            try {
                startIndex = Integer.parseInt(startIndexParam);
            } catch (NumberFormatException e) {

                startIndex = 0;
            }
        }
        System.out.println(startIndex);
        try {
            List<Product> products = productDetails.listProducts();
            List<Categories> categories = categoryDao.getAllCategories(startIndex);
            System.out.println(categories.toString());

            if (products != null && !products.isEmpty()) {
                request.setAttribute("products", products);
                request.setAttribute("categories", categories);
                request.setAttribute("startIndex", startIndex); // Truyền startIndex vào request
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Không có sản phẩm nào được tìm thấy!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Đã xảy ra lỗi khi tải danh sách sản phẩm!");
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
