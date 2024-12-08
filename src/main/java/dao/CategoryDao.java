package dao;


import object.Categories;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class CategoryDao   {

    Utils utils;
    Connection conn;
    public CategoryDao (){
    utils = new Utils();
    conn = utils.getConnection();

    }
    public void closeConnection(){
    utils.closeConnection(conn);
    }

    public List<Categories> getAllCategories(int amount) {
        List<Categories> categories = new ArrayList<>();
        int offset = amount * 8;  // Số dòng cần bỏ qua (tính từ 0)
        String sql = "SELECT * FROM categories ORDER BY CategoryID LIMIT 8 OFFSET ?";

        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, offset);  // Thiết lập giá trị offset
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Categories c = new Categories(
                        rs.getInt("CategoryID"),
                        rs.getString("CategoryName"),
                        rs.getString("ImageURL"),
                        rs.getString("Description"),
                        rs.getTimestamp("CreatedAt")
                );

                categories.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Offset: " + offset);
        System.out.println("Categories fetched: " + categories.size());

        return categories;
    }


}
