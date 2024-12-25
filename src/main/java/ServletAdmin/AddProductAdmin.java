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

@WebServlet("/Add")
public class AddProductAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Đọc dữ liệu JSON từ yêu cầu
        ProductsDao dao = new ProductsDao();
        BufferedReader reader = request.getReader();
        Gson gson = new Gson();
        Product product = gson.fromJson(reader, Product.class);
     boolean isSucces =    dao.insertProduct(product);
        // Xử lý sản phẩm (ví dụ: lưu vào cơ sở dữ liệu)
        // Bạn có thể thêm mã xử lý dữ liệu ở đây
        if(isSucces){
            System.out.println("Product added successfully");
            return ;
        }

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"message\":\"Sản phẩm đã được thêm thành công!\"}");
    }
}
