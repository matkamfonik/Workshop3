package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserList", value = "/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String characterEncoding = "UTF-8";
        request.setCharacterEncoding(characterEncoding);
        response.setCharacterEncoding(characterEncoding);
        UserDao userDao = new UserDao();
        User[] userList = userDao.findAll();
        request.setAttribute("users", userList);
        getServletContext().getRequestDispatcher("/users/list.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
