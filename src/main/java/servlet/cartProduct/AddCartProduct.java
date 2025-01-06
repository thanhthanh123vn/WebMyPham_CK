package servlet.cartProduct;

import com.google.gson.Gson;
import dao.ProductsDao;
import gson.GsonUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;
import object.cart.Cart;
import object.cart.ProductCart;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("AddCart")
public class AddCartProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Cart cart ;
    AddCartProduct(Cart cart) {
    this.cart = cart;
}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BufferedReader reader = request.getReader();
        Gson gson = GsonUtil.getGson();
        Product product = gson.fromJson(reader, Product.class);
        cart.put(product);

        System.out.println("Product received: " + product);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
