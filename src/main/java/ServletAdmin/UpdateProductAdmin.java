package ServletAdmin;

import com.google.gson.Gson;
import dao.ProductsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;

import java.io.BufferedReader;
import java.io.IOException;
@WebServlet("/updateProduct")
public class UpdateProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BufferedReader reader = req.getReader();
        Gson gson = new Gson();
        Product product = gson.fromJson(reader, Product.class);

        ProductsDao productsDao = new ProductsDao();
        boolean isSuccess = productsDao.updateProduct(product);
        if(isSuccess) {
            System.out.println("Cập nhập thành công");
            return;
        }
        
        System.out.println("Cậpj nhập thất bại");




    }
}
