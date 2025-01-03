package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import object.Product;
import object.ProductDetail;

public class ProductsDao {

    private static Utils utils;
    private static Connection conn;

    public ProductsDao() {
        utils = new Utils();
        System.out.println("haha");
        conn = utils.getConnection();
    }
    public boolean deleteProDuct(Product product){
        String sql = "delete from products where id=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, product.getId());
            int row = ps.executeUpdate();
            if(row>0)return true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
public boolean insertProduct(Product product) {
        String sql = "insert into product (id,name,Detail,price,quantity,image,category_id) " +
                "values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, product.getId());
            ps.setString(2, product.getName());
            ps.setString(3, product.getDetail());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5,product.getQuantity());
            ps.setString(6, product.getImage());
            ps.setInt(7,product.getCategory_id());

            int row = ps.executeUpdate();
            if(row>0){
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
}
public boolean updateProduct(Product product) {
        String sql = "update product set  name=?,detail=?price=?," +
                "quantity=?,image=?,category_id=? where name=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2,product.getDetail());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getQuantity());
            ps.setString(5, product.getImage());
            ps.setInt(6, product.getCategory_id());

            int row = ps.executeUpdate();
            if(row >0){
                return true;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
}
    public static List<Product> listProducts() {
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
                product.setPrice(resultSet.getDouble("Price"));
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

    public static List<Product> searchProduct(String name) {
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
                    product.setPrice(resultSet.getDouble("Price"));
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
    public  static int  countsearchProduct(String name) {
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
    public static Product getProductById(int id) {
        Product product = null;
        ProductDetail productDetail = null;
        try {

            // Chuẩn bị câu truy vấn
            PreparedStatement stmt = conn.prepareStatement(
                    "SELECT products.id , products.name , products.detail , " +
                            "products.price , products.image , " +
                            "ProductDetail.ProductName , ProductDetail.Category, " +
                            "ProductDetail.Description, ProductDetail.SuitableSkin, ProductDetail.SkinSolution, " +
                            "ProductDetail.Highlight, ProductDetail.Ingredients, ProductDetail.FullIngredients, " +
                            "ProductDetail.HowToUse, ProductDetail.Storage, ProductDetail.Brand, " +
                            "ProductDetail.BrandOrigin, ProductDetail.ManufactureLocation, ProductDetail.Barcode, " +
                            "ProductDetail.Volume, ProductDetail.IsSensitiveSkinSafe, ProductDetail.CreatedAt " +
                            "FROM products " +
                            "JOIN ProductDetail ON products.id = ProductDetail.ID " +
                            "WHERE products.id = ?"
            );
            stmt.setInt(1, id);

            // Thực thi câu truy vấn
            ResultSet rs = stmt.executeQuery();

            // Ánh xạ kết quả vào đối tượng Product
            if (rs.next()) {
                product = new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("detail"),
                        rs.getDouble("price"),
                        rs.getString("image")
                );

                // Thiết lập các thuộc tính từ ProductDetail
                productDetail   = new ProductDetail();
                productDetail.setProductName(rs.getString("ProductName"));
                productDetail.setCategory(rs.getString("Category"));
                productDetail.setDescription(rs.getString("Description"));
                productDetail.setSuitableSkin(rs.getString("SuitableSkin"));
                productDetail.setSkinSolution(rs.getString("SkinSolution"));
                productDetail.setHighlight(rs.getString("Highlight"));
                productDetail.setIngredients(rs.getString("Ingredients"));
                productDetail.setFullIngredients(rs.getString("FullIngredients"));
                productDetail.setHowToUse(rs.getString("HowToUse"));
                productDetail.setStorage(rs.getString("Storage"));
                productDetail.setBrand(rs.getString("Brand"));
                productDetail.setBrandOrigin(rs.getString("BrandOrigin"));
                productDetail.setManufactureLocation(rs.getString("ManufactureLocation"));
                productDetail.setBarcode(rs.getString("Barcode"));
                productDetail.setVolume(rs.getString("Volume"));
                productDetail.setSensitiveSkinSafe(rs.getBoolean("IsSensitiveSkinSafe"));
                productDetail.setCreatedAt(rs.getTimestamp("CreatedAt").toLocalDateTime());

                // Gắn ProductDetail vào Product (giả định bạn có setter cho thuộc tính này)
                product.setProductDetail(productDetail);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }
}
