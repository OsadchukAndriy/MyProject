package Filter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.mockito.exceptions.verification.WantedButNotInvoked;
import org.mockito.junit.MockitoJUnitRunner;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.mockito.Mockito.times;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;



@RunWith(MockitoJUnitRunner.class)
public class HelloAdminFilterTest {

    HelloAdminFilter helloAdminFilter = new HelloAdminFilter();
    HttpSession session = Mockito.mock(HttpSession.class);
    FilterChain chain = Mockito.mock(FilterChain.class);
    HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
    HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

    @Test
    public void doAdminPassedFilter() throws IOException, ServletException {
       when(session.getAttribute("username")).thenReturn("admin");
        when(request.getSession()).thenReturn(session);
        helloAdminFilter.doFilter(request, response, chain);
        verify(chain, times(1)).doFilter(request, response);
    }

    @Test(expected = WantedButNotInvoked.class)
    public void doUserCantPassFilter() throws IOException, ServletException {
        when(session.getAttribute("username")).thenReturn("user");
        when(request.getSession()).thenReturn(session);
        helloAdminFilter.doFilter(request, response, chain);
        verify(chain, times(1)).doFilter(request, response);
    }
}