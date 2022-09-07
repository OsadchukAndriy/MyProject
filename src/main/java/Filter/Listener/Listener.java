package Filter.Listener;

import org.apache.log4j.Logger;

import javax.servlet.*;


public class Listener implements ServletContextListener {

    private static final Logger log = Logger.getLogger(Listener.class);

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        log.info("Do Listener");
        if (sce.getServletContext().getRequestCharacterEncoding()==null) {
            sce.getServletContext().setRequestCharacterEncoding("UTF-8");
        }
    }
}
