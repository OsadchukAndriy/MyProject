package Servlets.RegisterLoginServlets;

import Entity.LoginBean;
import DAO.LoginDao;
import Service.Coder;
import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.MessageDigest;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    private static final Logger log = Logger.getLogger(LoginServlet.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        if (username != null) {
            request.setAttribute("un", username);
        }
        String lang = request.getParameter("lan");
        request.getSession().setAttribute("lang", lang);
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null) {
            request.setAttribute("un", username);

            if (username.equals("admin") && password.equals("admin")) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                request.setAttribute("un", username);
                session.setMaxInactiveInterval(145);

                response.sendRedirect("helloAdmin.jsp");
                return;
            }
            Coder coder = new Coder();

            String sha = coder.sha256(password);
            password = sha;

            LoginBean loginBean = new LoginBean();
            loginBean.setUsername(username);
            loginBean.setPassword(password);

            LoginDao loginDao = new LoginDao();
            if (loginDao.validate(loginBean)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                request.setAttribute("un", username);
                session.setMaxInactiveInterval(145);

                response.sendRedirect("loginSuccess.jsp");
            } else {
                response.sendRedirect("tryagain.jsp");
            }
        }
    }
}

