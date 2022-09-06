package Filter;

import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(MockitoJUnitRunner.class)
class LocalizationFilterTest {
    LocalizationFilter filter = new LocalizationFilter();

    HttpSession session = Mockito.mock(HttpSession.class);
    FilterChain chain = Mockito.mock(FilterChain.class);
    HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
    HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

    @Test
    public void doFilterSetLanguageFromRequest() throws ServletException, IOException {
        when(request.getParameter("lang")).thenReturn("en");
        when(request.getSession()).thenReturn(session);
        filter.doFilter(request, response, chain);
        verify(request.getSession()).setAttribute("lang", "en");
    }
}