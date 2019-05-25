package SkillsCollector.servlets;

import SkillsCollector.model.dao.UserDao;
import SkillsCollector.model.entities.User;
import org.hibernate.SessionFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class RegistrationServlet extends HttpServlet {

    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("session_factory");
        userDao = new UserDao(sessionFactory);
    }

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setFirst_name(firstName);
        user.setLast_name(lastName);

        Boolean usernameAvailable = userDao.isUsernameAvailable(username);
        if (usernameAvailable) {
            userDao.save(user);
            resp.sendRedirect("/login");
        } else {
            req.setAttribute("error", "Podana nazwa użytkownika jest zajęta");
            req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
        }


    }
}
