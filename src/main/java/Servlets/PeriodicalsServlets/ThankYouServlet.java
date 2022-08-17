package Servlets.PeriodicalsServlets;

import DAO.AddOrderDao;
import DAO.MoneyDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ThankYouServlet", value = "/ThankYouServlet")
public class ThankYouServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String periodical_id = (String) session.getAttribute("idConfirm");
        String username = (String) session.getAttribute("username");

        String price1 = (String) session.getAttribute("priceConfirm");
        price1 = price1.substring(0, price1.length() - 1);
        System.out.println("price1   " + price1);
        int price = Integer.parseInt(price1);


        int myMoney = MoneyDao.getMoney(username);

        if (myMoney >= price) {
            MoneyDao.updateMoney((myMoney - price) + "", username);
            AddOrderDao.insertOrder(periodical_id, username);
            response.sendRedirect("thankyou.jsp");
        } else {
            response.getWriter().println("Its not enough money! Please replenish your bill!");
        }
    }
}

