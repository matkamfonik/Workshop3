package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShowUser", value = "/user/show")
public class ShowUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String characterEncoding = "UTF-8";
        request.setCharacterEncoding(characterEncoding);
        response.setCharacterEncoding(characterEncoding);
        UserDao userDao = new UserDao();
        User user = userDao.read(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/showUser.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
