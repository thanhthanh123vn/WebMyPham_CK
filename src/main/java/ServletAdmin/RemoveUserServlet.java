package ServletAdmin;

import com.google.gson.Gson;
import dao.UserInfDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.UserInf;

import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/removeUser")
public class RemoveUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        Gson gson = new Gson();
        UserInf user = gson.fromJson(reader, UserInf.class);

        // Logic xóa người dùng khỏi cơ sở dữ liệu
        try {
            UserInfDao userDAO = new UserInfDao();
            userDAO.deleteUserAndAddress(user.getId());
            response.setStatus(HttpServletResponse.SC_OK);
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
