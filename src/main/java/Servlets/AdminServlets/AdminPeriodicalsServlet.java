package Servlets.AdminServlets;



import Entity.Periodical;
import DAO.AdminPeriodicalsDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminPeriodicalsServlet", value = "/AdminPeriodicalsServlet")
public class AdminPeriodicalsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Periodical> periodicalsAdminList = AdminPeriodicalsDao.getPeriodicals();
        request.getSession().setAttribute("periodicalsAdminList", periodicalsAdminList);
        System.out.println("periodicalsAdminList:  " + periodicalsAdminList);
        response.sendRedirect("adminPeriodicals.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
