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

@WebServlet("/deleteProductAdmin")
public class DeleteProductAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductsDao dao = new ProductsDao();
        BufferedReader reader = req.getReader();
        Gson gson = new Gson();
        Product product = gson.fromJson(reader, Product.class);
        boolean isSuccess = dao.deleteProDuct(product);

        if(isSuccess){
            System.out.println("Product deleted successfully");
            return ;
        }
        System.out.println("Product not deleted successfully");
    }
}
