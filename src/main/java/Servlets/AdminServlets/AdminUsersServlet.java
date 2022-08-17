package Servlets.AdminServlets;


import Entity.Member;
import DAO.AllUsersDao;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminUsersServlet", value = "/AdminUsersServlet")
public class AdminUsersServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(" i am AdminUsersServlet");
        //BLOCK USER
        if (request.getParameter("blockUser") != null) {
            AllUsersDao.blockUser(request.getParameter("blockUser"));
        }

        //UNBLOCK USER
        if (request.getParameter("unblockUser") != null) {
            AllUsersDao.unblockUser(request.getParameter("unblockUser"));
        }
        //FILL PAGE WITH LIST
        List<Member> mList = AllUsersDao.getAllUsers();
        request.getSession().setAttribute("mList", mList);
        System.out.println("mList:  " + mList);
        response.sendRedirect("adminUsers.jsp");
    }
}
