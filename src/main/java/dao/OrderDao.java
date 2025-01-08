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
                Order order = new Order();
                    order.setUserId( rs.getInt("userid"));
                    order.setUserName(rs.getString("fullName"));
                    order.setAddress(rs.getString("address"));
                    order.setPhone( rs.getString("phone"));
                    order.setCreate_date(rs.getDate("orderDate"));
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
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setRecipientName(fullName);
                    orderDetail.setPhoneNumber(phone);
                    orderDetail.setAddress(address);
                    orderDetail.setProductList(productList);
                    orderDetail.setTotalQuantity(quantity);
                    orderDetail.setTotalPrice(price);
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
    public boolean insertOrder(Order order) {
        String sql = "INSERT INTO orders VALUES (?,?)";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, order.getUserId());
            ps.setDate(2,new java.sql.Date(order.getCreate_date().getTime()));
            int rows = ps.executeUpdate();


            return rows > 0;




        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
    public boolean insertOrderDetail(int orderId, int productId,int userID,int quantity,double price ) {
        String sql = "INSERT INTO orderdetails VALUES (?,?,?,?,?)";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId);
            ps.setInt(2, productId);
            ps.setInt(3, userID);
            ps.setInt(4, quantity);
            ps.setDouble(5, price);
            int rows = ps.executeUpdate();
            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }


}
