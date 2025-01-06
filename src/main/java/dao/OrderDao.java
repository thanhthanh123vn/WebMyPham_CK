package dao;

import object.Order;
import object.OrderDetail;
import object.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderDao {
    private Utils utils;
    private Connection conn;

    public OrderDao() {
        utils = new Utils();
        conn = utils.getConnection();
    }

    public List<Order> getUserOrder() {
        List<Order> userOrder = new ArrayList<Order>();
//        String sql = "select o.orderid , ua.fullName, ua.address , ua.phone, o.orderDate ,od.quantity" +
//                "od.price ,p.*,from   usersarress ua jojn order o  on ua.userid = o.userid" +
//                "join orderdetails od on od.orderid = o.orderid" +
//                "join products p on p.id = od.productid" ;
        String sql = "SELECT ua.userid, ua.fullName, ua.address, ua.phone, o.orderDate\n" +
                "FROM usersarress ua\n" +
                "JOIN orders o ON ua.userid = o.userid\n" +
                "JOIN orderdetails od ON od.orderid = o.orderid\n" +
                "JOIN products p ON p.id = od.productid;";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order(
                        rs.getInt("userid"),
                        rs.getString("fullName"),
                        rs.getString("address"),
                        rs.getString("phone"),
                        rs.getDate("orderDate")

                );
                userOrder.add(order);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return userOrder;


    }



    public List<OrderDetail> getOrderDetails(int index) {
        Map<String, OrderDetail> orderDetailsMap = new HashMap<>();
        String sql = "SELECT ua.fullName, ua.address, ua.phone, \n" +
                "                od.quantity, od.price, p.* \n" +
                "                FROM usersarress ua \n" +
                "                JOIN orders o ON ua.userid = o.userid \n" +
                "                JOIN orderdetails od ON od.orderid = o.orderid  \n" +
                "                JOIN products p ON p.id = od.productid \n" +
                "                WHERE ua.userid = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, index);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String fullName = rs.getString("fullName");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getDouble("price"));

                if (!orderDetailsMap.containsKey(fullName)) {
                    List<Product> productList = new ArrayList<>();
                    productList.add(product);
                    OrderDetail orderDetail = new OrderDetail(fullName, phone, address, productList, quantity, price);
                    orderDetailsMap.put(fullName, orderDetail);
                } else {
                    OrderDetail orderDetail = orderDetailsMap.get(fullName);
                    orderDetail.getProductList().add(product);
                    orderDetail.setTotalQuantity(orderDetail.getTotalQuantity() + quantity);
                    orderDetail.setTotalPrice(orderDetail.getTotalPrice() + price);
                }
            }
        } catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
        }
        return new ArrayList<>(orderDetailsMap.values());
    }

}
