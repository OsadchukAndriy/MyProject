package Servlets.PeriodicalsServlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ConfirmServlet", value = "/ConfirmServlet")
public class ConfirmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getParameter("subscribe");

        HttpSession session = request.getSession();

        session.setAttribute("idConfirm", request.getParameter("id"));
        session.setAttribute("nameConfirm", request.getParameter("name"));
        session.setAttribute("priceConfirm", request.getParameter("price"));
        session.setAttribute("typeConfirm", request.getParameter("type"));
        session.setAttribute("descriptionConfirm", request.getParameter("description"));

        response.sendRedirect("confirm.jsp");
    }
}
