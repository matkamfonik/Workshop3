package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "deleteUser", value = "/user/delete")
public class deleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String characterEncoding = "UTF-8";
        request.setCharacterEncoding(characterEncoding);
        response.setCharacterEncoding(characterEncoding);
        UserDao userDao = new UserDao();
        userDao.delete(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect("/user/list");

    }
}
