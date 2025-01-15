package ServletAdmin;

import com.google.gson.Gson;
import dao.ProductsDao;
import gson.GsonUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;

import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/AddProduct")
public class AddProductAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductsDao dao = new ProductsDao();
        BufferedReader reader = request.getReader();
        Gson gson = GsonUtil.getGson();
        Product product = gson.fromJson(reader, Product.class);
<<<<<<< HEAD
     boolean isSucces =    dao.insertProduct(product);
        // Xử lý sản phẩm (ví dụ: lưu vào cơ sở dữ liệu)
        // Bạn có thể thêm mã xử lý dữ liệu ở đây
        if(isSucces){
            System.out.println("Product added successfully");
            return ;
        }

=======
        boolean isSuccess = dao.insertProduct(product);
        System.out.println("Product received: " +product);
>>>>>>> Thanh
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        if (isSuccess) {
            response.getWriter().write("{\"message\":\"Sản phẩm đã được thêm thành công!\"}");
        } else {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("{\"message\":\"Có lỗi xảy ra khi thêm sản phẩm.\"}");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
