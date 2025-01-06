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

import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/removeProduct")
public class RemoveProductAdmin extends HttpServlet {
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        Gson gson = new Gson();
        Product product = gson.fromJson(reader, Product.class);

        // Logic xóa người dùng khỏi cơ sở dữ liệu
        try {
            ProductsDao productDao = new ProductsDao();
           boolean deleteP = productDao.deleteProduct(product.getId());
           if(deleteP)
            response.setStatus(HttpServletResponse.SC_OK);
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
