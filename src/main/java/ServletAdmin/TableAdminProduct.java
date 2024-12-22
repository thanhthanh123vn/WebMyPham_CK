package ServletAdmin;

import dao.ProductsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;

import java.io.IOException;
import java.util.List;

public class TableAdminProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductsDao dao = new ProductsDao();
        List<Product> listProduct = dao.listProducts();
        if(listProduct.size()==0){
            req.setAttribute("errorMessage","không có sản phẩm trong hệ thống");
            return ;
        }
        req.setAttribute("listProduct", listProduct);
        req.getRequestDispatcher("admin/tablesProducts.jsp").forward(req, resp);
    }
}
