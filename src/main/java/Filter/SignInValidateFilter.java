package Filter;

import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter( "/login")
public class SignInValidateFilter implements Filter {

    private static final Logger log = Logger.getLogger(RegisterValidateFilter.class);

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpServletRequest req = (HttpServletRequest) request;
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        log.info("Do SignInValidateFilter");

        if (username.length() > 10 || username.length() < 1) {
            out.print("Invalid input! Username should contains 1 to 10 characters!");
        } else if (username.contains("\"") || username.contains("<") || username.contains(">")) {
            out.print("Invalid input! Username can't contains characters: \", <, >");
        } else if (password.contains("\"") || password.contains("<") || password.contains(">")) {
            out.print("Invalid input! Password can't contains characters: \", <, >");
        } else if (password.length() > 10 || password.length() < 1) {
            out.print("Invalid input! Password should contains 1 to 10 characters!");
        } else {
            chain.doFilter(request, response);
        }
    }
}
