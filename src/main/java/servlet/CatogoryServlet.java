package servlet;

import dao.CategoryDao;
import dao.ProductsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Categories;
import object.Product;


import java.io.IOException;
import java.util.List;

@WebServlet("/category")
public class CatogoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDao categoryDao = new CategoryDao();
        int startIndex = 0;

        // Lấy giá trị startIndex từ request
        String startIndexParam = request.getParameter("startIndex");
        if (startIndexParam != null) {
            try {
                startIndex = Integer.parseInt(startIndexParam);
            } catch (NumberFormatException e) {
                startIndex = 0;
            }
        }

        try {
            List<Categories> categories = categoryDao.getAllCategories(startIndex);
            if(categories.size() > 0) {
                System.out.println(categories.size());

                // Tạo HTML trả về (chỉ danh mục)
                response.setContentType("text/html;charset=UTF-8");
                for (Categories category : categories) {
                    response.getWriter().println(
                            "<div class='category'>" +
                                    "<img src='" + category.getImage() + "' alt='" + category.getCategoryName() + "'>" +
                                    "<p>" + category.getCategoryName() + "</p>" +
                                    "</div>"
                    );
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("<p>Đã xảy ra lỗi khi tải danh mục!</p>");
        }
    }
}
