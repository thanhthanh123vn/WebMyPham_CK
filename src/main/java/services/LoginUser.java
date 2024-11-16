package services;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/LoginHandle")
public class LoginUser extends HttpServlet {
	private InforUser user;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		user = new InforUser();
		String username = req.getParameter("username");

		String password = req.getParameter("password");
		HttpSession session = req.getSession();
		System.out.println("login");
		boolean isValidUser = user.checkUser(username, password);
		boolean isValidAdmin = user.checkAdmin(username, password);
		if (isValidAdmin) {
			System.out.println(username);
			session.setAttribute("username", username);
			req.getRequestDispatcher("index.jsp").forward(req, resp);

		} else {

		if (isValidUser) {
			System.out.println(username);


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
			System.out.println("loi");
			session.setAttribute("errorMessage", "Tên người dùng hoặc mật khẩu không đúng!");
		
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
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
	}



}
