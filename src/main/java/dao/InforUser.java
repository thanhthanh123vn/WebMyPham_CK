package dao;

import object.User;
import object.UserInf;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InforUser {
	private Connection conn;
	private Utils utils;

	public InforUser() {
		// TODO Auto-generated constructor stub
		utils = new Utils();
		conn = utils.getConnection();
	}

	public boolean checkUser(String username, String password) {
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setString(1, username);
            statement.setString(2, password);
            
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next(); // Trả về true nếu tìm thấy người dùng
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
	   public boolean insertUser(String username, String password, String email) {
	        String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
	        
	        try (PreparedStatement statement = conn.prepareStatement(sql)) {
	            statement.setString(1, username);
	            statement.setString(2, password);
	            statement.setString(3, email);

	            int rowsInserted = statement.executeUpdate();
	            return rowsInserted > 0; // Trả về true nếu chèn thành công
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false; // Trả về false nếu có lỗi xảy ra
	        }
	    }
public List<User> getList(){
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM users";
		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				User user = new User();
				user.setId(resultSet.getInt("id"));
				user.setFullName(resultSet.getString("username"));
				user.setEmail(resultSet.getString("email"));
				user.setPassword(resultSet.getString("password"));
				user.setRole(resultSet.getString("role"));
				user.setDate(resultSet.getDate("created_at"));
				list.add(user);

			}

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return list;

}
}
