package Filter;

import Entity.Member;
import org.junit.Before;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class SignInValidateFilterTest {

    SignInValidateFilter filter = new SignInValidateFilter();

    Member user = Mockito.mock(Member.class);

    HttpSession session = Mockito.mock(HttpSession.class);

    FilterChain chain = Mockito.mock(FilterChain.class);


    HttpServletRequest request = Mockito.mock(HttpServletRequest.class);

    HttpServletResponse response = Mockito.mock(HttpServletResponse.class);


    @BeforeEach
    public void setUp() throws Exception {
        when(request.getParameter("username")).thenReturn("name");
        when(request.getParameter("password")).thenReturn("password");
    }

    @Test
    public void doUserPassFilter() throws IOException, ServletException {
        when(user.getUname()).thenReturn("name");
        when(session.getAttribute("user")).thenReturn(user);
        when(request.getSession(false)).thenReturn(session);
        filter.doFilter(request, response, chain);
        verify(chain, times(1)).doFilter(request, response);
    }

    @Test
    public void doUnAuthorizedUserCantPassFilter() throws IOException, ServletException {
        when(session.getAttribute("user")).thenReturn(null);
        when(request.getSession(false)).thenReturn(session);
        filter.doFilter(request, response, chain);
        verify(chain, times(1)).doFilter(request, response);
    }
}