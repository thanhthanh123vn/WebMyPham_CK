package ServletAdmin;

import com.google.gson.Gson;
import dao.ProductsDao;
import dao.UserInfDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;
import object.UserInf;

import java.io.IOException;
import java.util.List;
@WebServlet("/listUserInf")

public class ListProductAdmin {








        private static final long serialVersionUID = 1L;


        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // Đặt loại nội dung trả về là JSON
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            ProductsDao dao = new ProductsDao();
            try {
                List<Product> productList = dao.listProducts();




                // Trả về dữ liệu JSON
                String json = new Gson().toJson(productList);
                response.getWriter().write(json);

            } catch (Exception e) {
                e.printStackTrace();
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        }


    }


