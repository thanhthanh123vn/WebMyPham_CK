package servlet.PayProduct;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import object.Product;
import object.cart.Cart;

import java.io.IOException;

@WebServlet("/cancelOrder")
public class CancelOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");


        int productId = Integer.parseInt(id);
        HttpSession session = req.getSession();
        Product product = (Product) session.getAttribute("product");
        Cart cartData = (Cart) session.getAttribute("cartQL");

        if(product != null) {
            session.removeAttribute("product");
            req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
        }else{
            if(cartData != null) {
                session.setAttribute("cartQL", cartData);
                req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
            }
        }



    }
}
