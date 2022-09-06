package Servlets.AdminServlets;

import Entity.Periodical;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RunWith(MockitoJUnitRunner.class)
public class AdminPeriodicalsServletTest {

    AdminPeriodicalsServlet adminPeriodicalsServlet = new AdminPeriodicalsServlet();
    HttpSession session = Mockito.mock(HttpSession.class);
    HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
    HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
    List<Periodical> periodicalsAdminList = Mockito.mock(List.class);
//    @Test
//    void doGet() throws ServletException, IOException {
//        when(request.getSession()).thenReturn(session);
//        adminPeriodicalsServlet.doGet(request,response);
//
//    }
    @Test(expected = NullPointerException.class)
    public final void testDoPostPositive() throws ServletException, IOException {
        adminPeriodicalsServlet.doGet(null, null);
    }
}