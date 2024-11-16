package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.Utils;

public class InforUser {
	private Connection conn;
	private Utils utils;

	public InforUser() {
		// TODO Auto-generated constructor stub
		utils = new Utils();
		conn = utils.getConnection();
	}

	public boolean checkUser(String username, String password) {
		String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
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

	public boolean checkAdmin(String username, String password) {
		String sql = "SELECT * FROM users WHERE username = ? AND password = ? AND role = 1";
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
	public boolean checkInfoUser(String username , String email) {
		String sql = "SELECT * FROM user WHERE username = ? AND email = ?";
		try (PreparedStatement statement = conn.prepareStatement(sql)) {
			statement.setString(1, username);
			statement.setString(2, email);

			ResultSet resultSet = statement.executeQuery();
			return resultSet.next(); // Trả về true nếu tìm thấy người dùng
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	


}
