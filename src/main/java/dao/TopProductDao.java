package dao;
import utils.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TopProductDao {
    public class ProductsDao {
        private int productID;
        private String productName;
        private int totalQuantity;

        public int getProductID() {
            return productID;
        }

        public void setProductID(int productID) {
            this.productID = productID;
        }

        public String getProductName() {
            return productName;
        }

        public void setProductName(String productName) {
            this.productName = productName;
        }

        public int getTotalQuantity() {
            return totalQuantity;
        }

        public void setTotalQuantity(int totalQuantity) {
            this.totalQuantity = totalQuantity;
        }
    }

    public List<ProductsDao> getTop10Products() {
        List<ProductsDao> products = new ArrayList<>();
        String query = "SELECT p.ProductID, p.ProductName, SUM(od.Quantity) AS total_quantity\n" +
                "FROM Products p\n" +
                "JOIN OrderDetails od ON p.ProductID = od.ProductID\n" +
                "GROUP BY p.ProductID, p.ProductName\n" +
                "ORDER BY total_quantity DESC\n" +
                "LIMIT 10;";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                // Tạo đối tượng ProductsDao và ánh xạ dữ liệu
                ProductsDao product = new ProductsDao();
                product.setProductID(rs.getInt("ProductID"));
                product.setProductName(rs.getString("ProductName"));
                product.setTotalQuantity(rs.getInt("total_quantity"));

                products.add(product); // Thêm vào danh sách
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }

}

