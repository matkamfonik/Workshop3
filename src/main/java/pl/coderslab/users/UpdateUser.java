package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateUser", value = "/user/edit")
public class UpdateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String characterEncoding = "UTF-8";
        request.setCharacterEncoding(characterEncoding);
        response.setCharacterEncoding(characterEncoding);
        UserDao userDao = new UserDao();
        User user = new User();
        user.setUserName(request.getParameter("userName"));
        user.setEmail(request.getParameter("email"));
        user.setId(Integer.parseInt(request.getParameter("id")));
        user.setPassword(request.getParameter("password"));
        userDao.update(user);
        response.sendRedirect("/user/list");

    }
}
