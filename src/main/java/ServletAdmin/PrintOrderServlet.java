package ServletAdmin;

import dao.OrderDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.OrderDetail;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@WebServlet("/PrintOrder")
public class PrintOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderId = request.getParameter("id");


        OrderDao dao = new OrderDao();
        List<OrderDetail> orderDetails = dao.getOrderDetails(Integer.parseInt(orderId));
        System.out.println(orderDetails.size()+" orderdetail");



        if (!orderDetails.isEmpty()) {
            OrderDetail orderDetail = orderDetails.get(0); // Assume one order

            request.setAttribute("orderDt", orderDetail);
            request.setAttribute("productList", orderDetail.getProductList());
            request.getRequestDispatcher("admin/orderdetail.jsp").forward(request,response);
            return ;
        }
        request.setAttribute("errorMassage","Lỗi");
        request.getRequestDispatcher("admin/orderdetail.jsp").forward(request,response);
    }


}
