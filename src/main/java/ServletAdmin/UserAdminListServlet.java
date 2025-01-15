package ServletAdmin;

import com.google.gson.Gson;
import dao.UserInfDao;
import dao.Utils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.UserInf;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;





    @WebServlet("/listUserInf")
    public class UserAdminListServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // Đặt loại nội dung trả về là JSON
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            UserInfDao dao = new UserInfDao();
            try {
            List<UserInf> userList = dao.getListUserInf();




                // Trả về dữ liệu JSON
                String json = new Gson().toJson(userList);
                response.getWriter().write(json);

            } catch (Exception e) {
                e.printStackTrace();
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        }


}
