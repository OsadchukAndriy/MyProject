package Filter;

import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter("/helloAdmin.jsp")
public class HelloAdminFilter implements Filter {

    private static final Logger log = Logger.getLogger(HelloAdminFilter.class);

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        log.info("Do HelloAdminFilter");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session = req.getSession();
        log.info("s    :  " + session.getAttribute("username"));
        if (session.getAttribute("username") != null && ((String) session.getAttribute("username")).equals("admin")) {
            chain.doFilter(request, response);
        } else {
            resp.sendRedirect("login.jsp");
        }
    }
}
