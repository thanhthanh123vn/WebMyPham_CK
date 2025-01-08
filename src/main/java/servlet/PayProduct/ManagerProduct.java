package servlet.PayProduct;

import com.google.gson.Gson;
import dao.OrderDao;
import dao.ProductsDao;
import gson.GsonUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Order;
import object.Product;
import object.User;
import object.cart.Cart;
import object.cart.ProductCart;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/ManagerProduct")
public class ManagerProduct extends HttpServlet {
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
        OrderDao dao = new OrderDao();
        Date date = new Date();
        User user = (User) req.getSession().getAttribute("user");
        int id = user.getId();
        Order order = new Order();
        order.setId(id);
        order.setCreate_date(date);
        if (product != null) {


            boolean isSuccess = dao.insertOrder(order);
            boolean isOrderDetail = dao.insertOrderDetail(order.getId(),
                    product.getId(), id, 1, product.getPrice());


            if (isSuccess && isOrderDetail) {

                req.setAttribute("product", product);
                req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
            } else {
                req.setAttribute("errorMessage", "Khong the chen Order");
                req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
            }


        }
        if (cart != null) {
            boolean isSuccess = dao.insertOrder(order);
            boolean isOrderDetail = false;
            List<ProductCart> productCarts = cart.getList();
            List<Product> products = getProducts(productCarts);
            if (!products.isEmpty()) {
                for (Product product : products) {
                    isOrderDetail = dao.insertOrderDetail(order.getId(), product.getId(), id, product.getQuantity(), product.getPrice());

                }


            }
            if(isSuccess&&isOrderDetail) {

            req.setAttribute("cart", cart);

            req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
            }else {
                req.setAttribute("errorMessage", "Khong the chen Order");
                req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
            }

        }
    }

    public List<Product> getProducts(List<ProductCart> list) {

        List<Product> products = new ArrayList<>();
        for (ProductCart cart : list) {
            Product product = new Product();
            product.setId(cart.getId());
            product.setName(cart.getName());
            product.setPrice(cart.getPrice());
            product.setQuantity(cart.getCount());

            products.add(product);

        }
        return products;

    }
}