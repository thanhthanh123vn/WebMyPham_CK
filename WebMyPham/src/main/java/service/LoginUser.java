package service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginUser extends HttpServlet {
	private InforUser user;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		user = new InforUser();
		String username = req.getParameter("username");

		String password = req.getParameter("password");

		boolean isValidUser = user.checkUser(username, password);
		boolean isValidAdmin = user.checkAdmin(username, password);
		if (isValidAdmin) {
			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			req.getRequestDispatcher("index.jsp").forward(req, resp);

		} else {

		if (isValidUser) {

			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			//lưu account lên trang login
			Cookie u = new Cookie("userC", username);
			Cookie p = new Cookie("passC", password);
			u.setMaxAge(60);
			p.setMaxAge(60);
			resp.addCookie(u);
			resp.addCookie(p);
			session.setAttribute("showAlert", "Hộp thoại success");
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		} else {
			// Thông báo lỗi nếu đăng nhập không thành công
			req.setAttribute("errorMessage", "Tên người dùng hoặc mật khẩu không đúng!");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie cookie[]= req.getCookies();
		
		for (Cookie cookie2 : cookie) {
			if(cookie2.getName().equals("userC")) {
				req.setAttribute("username", cookie2.getValue());
			}
			if(cookie2.getName().equals("passC")) {
				req.setAttribute("password", cookie2.getValue());
			}
			
		}
		req.getRequestDispatcher("login.jsp").forward(req, resp);

	}
}
