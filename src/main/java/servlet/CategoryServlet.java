package servlet;

import com.google.gson.Gson;
import dao.CategoryDao;
import dao.Utils;
import gson.GsonUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Categories;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/categoryList")
public class CategoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Đặt loại nội dung trả về là JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        CategoryDao categoryDao = new CategoryDao();
            int startIndex = 0;
            startIndex = request.getParameter("startIndex") != null ? Integer.parseInt(request.getParameter("startIndex")) : 0;
            List<Categories> categories = categoryDao.getAllCategories(startIndex);
            System.out.println(categories.toString());

            // Trả về dữ liệu JSON
            String json = new GsonUtil().getGson().toJson(categories);
            
            response.getWriter().write(json);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
