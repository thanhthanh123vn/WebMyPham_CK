package ServletAdmin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.User;
import dao.InforUser;
import services.UserUtils;

import java.io.IOException;
import java.util.List;

@WebServlet("/table-admin-User")
public class TableAdminUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        InforUser listUser = new InforUser();
        List<User>reqUser = listUser.getList();
        if(reqUser.size()==0){
            req.setAttribute("errorMessage", "Chưa có user nào trong hệ thống");
            return ;
        }

        req.setAttribute("reqUser", reqUser);
        req.getRequestDispatcher("admin/tablesEmployees.jsp").forward(req, resp);

    }
}
