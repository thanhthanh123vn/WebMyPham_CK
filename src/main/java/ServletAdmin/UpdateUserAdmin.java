package ServletAdmin;

import com.google.gson.Gson;
import dao.InforUser;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.User;

import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/UpdateUserAdmin")
public class UpdateUserAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        InforUser dao = new InforUser() ;
        BufferedReader reader = req.getReader();
        Gson gson = new Gson();
        User user = gson.fromJson(reader, User.class);
        boolean isSuccsee =  dao.UpdateUser(user);
        if(isSuccsee){
            System.out.println("Update User");
            return ;
        }
        System.out.println("Update User Fail");








    }
}
