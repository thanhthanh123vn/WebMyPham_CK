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
import jakarta.servlet.http.HttpSession;
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
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        OrderDao dao = new OrderDao();
        HttpSession session = req.getSession();
        Date date = new Date();
        User user = (User) req.getSession().getAttribute("user");
        int id = user.getId();
        Order order = new Order();
        order.setId(id);
        order.setCreate_date(date);
        Product product = (Product)session.getAttribute("payProduct");
        Cart cart = (Cart)session.getAttribute("cart");
        if (product != null) {


            boolean isSuccess = dao.insertOrder(order);
            boolean isOrderDetail = dao.insertOrderDetail(order.getId(),
                    product.getId(), id, 1, product.getPrice());


            if (isSuccess && isOrderDetail) {
                session.setAttribute("productQL", product);
                req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
            } else {
                System.out.println("Mua ngay đó nha"+product.toString());
                req.setAttribute("product", product);
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
                for (Product cproduct : products) {
                    isOrderDetail = dao.insertOrderDetail(order.getId(), cproduct.getId(), id, cproduct.getQuantity(), cproduct.getPrice());

                }
            }
            if(isSuccess&&isOrderDetail) {
             req.setAttribute("cart", cart);
            req.getRequestDispatcher("index/qldonhang.jsp").forward(req, resp);
            }else {

                session.setAttribute("cartQL", cart);
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