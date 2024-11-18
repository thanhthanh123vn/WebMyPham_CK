package dao;

import object.ProductDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDetailsDao {
    private Utils utils;
    private Connection conn;

    public ProductDetailsDao() {
        utils = new Utils();
        conn = utils.getConnection();
    }
    public List<ProductDetail> listProductsDetail() {
        String sql = "SELECT * FROM product_details";
        List<ProductDetail> products = new ArrayList<>();

        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                System.out.println("ProductDetails success");
                ProductDetail product = new ProductDetail();
                product.setId(resultSet.getInt("Id"));
                product.setProductId(resultSet.getInt("Product_Id"));
                product.setSize(resultSet.getString("Size"));
                product.setColor(resultSet.getString("Color"));
                product.setIngredients(resultSet.getString("Ingredients"));
                product.setUsageInstructions(resultSet.getString("Usage_Instructions"));
                product.setStockQuantity(resultSet.getInt("Stock_Quantity"));

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //utils.closeConnection(conn);
        return products;
    }
}
