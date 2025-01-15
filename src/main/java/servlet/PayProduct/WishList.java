package servlet.PayProduct;

import dao.ProductsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import object.Product;

import java.io.IOException;

@WebServlet("/wishlist")
public class WishList extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        HttpSession session = req.getSession();
        ProductsDao dao = new ProductsDao();

        Product product = dao.getProductById(Integer.parseInt(id));
        if(product!=null) {
            session.setAttribute("Wishlistproduct", product);
            req.getRequestDispatcher("index/Wishlist.jsp").forward(req, resp);
        }else{
            req.setAttribute("error", "Product not found");
            req.getRequestDispatcher("index/Wishlist.jsp").forward(req, resp);
        }
    }
}
