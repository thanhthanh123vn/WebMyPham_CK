package servlet.PayProduct;

import com.google.gson.Gson;
import gson.GsonUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;
import object.cart.Cart;

import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/DeliveryProduct")
public class DeliveryProduct extends HttpServlet {
Product product = null;
Cart cart = null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BufferedReader reader = req.getReader();

        Gson gson = GsonUtil.getGson();
        product = gson.fromJson(reader, Product.class);
        cart = gson.fromJson(reader, Cart.class);


        
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(product != null) {

            req.setAttribute("product", product);
            req.getRequestDispatcher("index/deliveryAdd.jsp").forward(req, resp);

        }
        if(cart != null) {
            req.setAttribute("cart", cart);
            req.getRequestDispatcher("index/deliveryAdd.jsp").forward(req, resp);

        }
    }
}
