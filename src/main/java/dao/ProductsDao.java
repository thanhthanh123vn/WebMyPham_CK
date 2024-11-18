package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import object.Product;

public class ProductsDao {

    private Utils utils;
    private Connection conn;

    public ProductsDao() {
        utils = new Utils();
        System.out.println("haha");
        conn = utils.getConnection();
    }

    public List<Product> listProducts() {
        String sql = "SELECT * FROM products";
        List<Product> products = new ArrayList<>();

        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                System.out.println("ProductDetails success");
                Product product = new Product();
                product.setId(resultSet.getInt("Id"));
                product.setName(resultSet.getString("Name"));
                product.setDetail(resultSet.getString("Detail"));
                product.setPrice(resultSet.getBigDecimal("Price"));
                product.setImage(resultSet.getString("Image"));
//                product.setPriceNew(resultSet.getBigDecimal("PriceNew"));
//                product.setDate(resultSet.getDate("Date"));
//                product.setOrderProduct(resultSet.getInt("orderProduct"));
//                product.setGroupProductId(resultSet.getInt("GroupProduct_Id"));

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    public List<Product> searchProduct(String name) {
        String sql = "SELECT * FROM products WHERE Detail LIKE ?";
        List<Product> products = new ArrayList<>();

        try (PreparedStatement cmd = conn.prepareStatement(sql)) {
            cmd.setString(1, "%" + name + "%");

            try (ResultSet resultSet = cmd.executeQuery()) {
                while (resultSet.next()) {
                    Product product = new Product();
                    product.setId(resultSet.getInt("Id"));
                    product.setName(resultSet.getString("Name"));
                    product.setDetail(resultSet.getString("Detail"));
                    product.setPrice(resultSet.getBigDecimal("Price"));
                    product.setImage(resultSet.getString("Image"));
                    products.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //utils.closeConnection(conn);
        return products; // Trả về danh sách (có thể rỗng nếu không có dữ liệu hoặc có lỗi)
    }
    public int  countsearchProduct(String name) {
        String sql = "SELECT count(*) FROM products WHERE Detail LIKE ?";
        List<Product> products = new ArrayList<>();

        try (PreparedStatement cmd = conn.prepareStatement(sql)) {
            cmd.setString(1, "%" + name + "%");

            try (ResultSet resultSet = cmd.executeQuery()) {
                while (resultSet.next()) {
                    return resultSet.getInt(1);
                }


            }




        } catch (Exception e) {
            e.printStackTrace();
        }
        //utils.closeConnection(conn);
        return -1; // Trả về danh sách (có thể rỗng nếu không có dữ liệu hoặc có lỗi)
    }

}
