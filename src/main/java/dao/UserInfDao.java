package dao;
import object.UserInf;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserInfDao {
    private Connection conn;
private Utils utils;
    public UserInfDao( ) {
        utils = new Utils();
        this.conn = utils.getConnection();
    }

    // Phương thức cập nhật dữ liệu trong cả hai bảng
    public void updateUserAndAddress(UserInf userInf) {
        String updateUserSQL = "UPDATE Users SET userName = ?, email = ? WHERE userID = ?";
        String updateUserAddressSQL = "UPDATE UserArress SET age = ?, address = ?, imageURL = ?, phone = ? WHERE email = ?";

        try {
            // Bắt đầu giao dịch
            conn.setAutoCommit(false);

            // Cập nhật bảng Users
            try (PreparedStatement psUser = conn.prepareStatement(updateUserSQL)) {
                psUser.setString(1, userInf.getUserName());
                psUser.setString(2, userInf.getEmail());
                psUser.setInt(3, userInf.getId());
                psUser.executeUpdate();
            }

            // Cập nhật bảng UserArress
            try (PreparedStatement psUserAddress = conn.prepareStatement(updateUserAddressSQL)) {
                psUserAddress.setString(1, userInf.getPassword());
                psUserAddress.setString(2, userInf.getAddress());
                psUserAddress.setString(3, userInf.getImageURL());
                psUserAddress.setString(4, userInf.getPhone());
                psUserAddress.setString(5, userInf.getEmail());
                psUserAddress.executeUpdate();
            }

            // Cam kết giao dịch
            conn.commit();

        } catch (SQLException e) {
            try {
                // Rollback nếu có lỗi
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                conn.setAutoCommit(true);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Phương thức lấy danh sách người dùng
    public List<UserInf> getListUserInf(){
        List<UserInf> listUserInf = new ArrayList<>();
        String sql = "select ua.userID, u.userName, ua.email, u.password, ua.address, ua.imageURL, ua.phone from Users u join UsersArress ua on u.ID = ua.userID";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                UserInf userInf = new UserInf(
                        rs.getInt("userID"),
                        rs.getString("userName"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("address"),
                        rs.getString("imageURL"),
                        rs.getString("phone")
                );
                listUserInf.add(userInf);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listUserInf;
    }


    // Phương thức chèn dữ liệu vào bảng Users và UserArress
    public void insertUserAndAddress(UserInf userInf) {
        String insertUserSQL = "INSERT INTO Users (userName, email,password) VALUES (?, ?,?)";
        String insertUserAddressSQL = "INSERT INTO UsersArress (userID, email, address, imageURL, phone) VALUES (?, ?, ?, ?, ?)";

        try {
            // Bắt đầu giao dịch
            conn.setAutoCommit(false);

            // Chèn vào bảng Users
            int userID;
            try (PreparedStatement psUser = conn.prepareStatement(insertUserSQL, PreparedStatement.RETURN_GENERATED_KEYS)) {
                psUser.setString(1, userInf.getUserName());
                psUser.setString(2, userInf.getEmail());
                psUser.setString(3, userInf.getPassword());
                int row =   psUser.executeUpdate();
                if(row>0){
                    System.out.println("Inserted user address successfully");

                }else {
                    System.out.println("Inserted user address failed");
                }


                // Lấy userID từ bảng Users
                try (ResultSet generatedKeys = psUser.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        userID = generatedKeys.getInt(1);
                    } else {
                        throw new SQLException("Creating user failed, no ID obtained.");
                    }
                }
            }

            // Chèn vào bảng UserArress
            try (PreparedStatement psUserAddress = conn.prepareStatement(insertUserAddressSQL)) {
                psUserAddress.setInt(1, userID);
                psUserAddress.setString(2, userInf.getEmail());

                psUserAddress.setString(3, userInf.getAddress());
                psUserAddress.setString(4, userInf.getImageURL());
                psUserAddress.setString(5, userInf.getPhone());
                 int row =       psUserAddress.executeUpdate();
                 if(row>0){
                     System.out.println("Inserted userAddree address successfully.");
                     return ;
                 }
                System.out.println("Inserted userAddree address Fail.");
            }

            // Cam kết giao dịch
            conn.commit();

        } catch (SQLException e) {
            try {
                // Rollback nếu có lỗi
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                conn.setAutoCommit(true);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }


        // Phương thức xóa dữ liệu từ bảng Users và UserArress
        public void deleteUserAndAddress(int userID) {
            String deleteUserAddressSQL = "DELETE FROM UsersArress WHERE userID = ?";
            String deleteUserSQL = "DELETE FROM Users WHERE id = ?";

            try {
                // Bắt đầu giao dịch
                conn.setAutoCommit(false);

                // Xóa từ bảng UsersArress
                try (PreparedStatement psUserAddress = conn.prepareStatement(deleteUserAddressSQL)) {
                    psUserAddress.setInt(1, userID);
                    psUserAddress.executeUpdate();
                }

                // Xóa từ bảng Users
                try (PreparedStatement psUser = conn.prepareStatement(deleteUserSQL)) {
                    psUser.setInt(1, userID);
                   int row = psUser.executeUpdate();
                   if(row>0){
                        System.out.println("Deleted user address successfully");
                   }

                }

                // Cam kết giao dịch
                conn.commit();

            } catch (SQLException e) {
                try {
                    // Rollback nếu có lỗi
                    conn.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
                e.printStackTrace();
            } finally {
                try {
                    conn.setAutoCommit(true);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }



