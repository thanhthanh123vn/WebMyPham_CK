package services;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import object.User;

@WebServlet("/LoginHandle")
public class LoginUser extends HttpServlet {
	private InforUser user;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		user = new InforUser();
		String username = req.getParameter("username");
		String password = req.getParameter("password");



		User userCus = user.checkUser(username, password); // Sử dụng mật khẩu đã băm

		if (userCus != null) { // Nếu tài khoản tồn tại
			req.setAttribute("userLogin", userCus);
			if ("user".equalsIgnoreCase(userCus.getRole())) {
				System.out.println("login"+username);
				req.getRequestDispatcher("products").forward(req, resp);
			} else if ("admin".equalsIgnoreCase(userCus.getRole())) {
				req.getRequestDispatcher("admin/index.html").forward(req, resp);
			}
		} else {
			req.setAttribute("errorMessage", "Tên người dùng hoặc mật khẩu không đúng!");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    Cookie[] cookies = req.getCookies();
	    String username = null;
	    String password = null;
	    String errorMessage = null;

	    for (Cookie cookie : cookies) {
	        if (cookie.getName().equals("userC")) {
	            username = cookie.getValue();
	        }
	        if (cookie.getName().equals("passC")) {
	        	password = cookie.getValue();
	        }
	        if (cookie.getName().equals("errorMessage")) {
	        	errorMessage = cookie.getValue();
	        }
	    }


	    if (username != null) {
	        req.getSession().setAttribute("username", username);

	    }
	    if (password != null) {
	        req.getSession().setAttribute("password", password);

	    }
	    if (errorMessage != null) {
	        req.getSession().setAttribute("errorMessage", errorMessage);

	    }
		doPost(req, resp);

	}




}
