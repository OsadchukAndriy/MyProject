package Filter;

import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import static org.mockito.Mockito.when;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.IOException;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(MockitoJUnitRunner.class)
class CharsetFilterTest extends Mockito {

    CharsetFilter filter = new CharsetFilter();
    FilterChain chain = Mockito.mock(FilterChain.class);
    HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
    HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

    @Test
    public void doFilterTest() throws ServletException, IOException {

        when(request.getCharacterEncoding()).thenReturn("UTF-8");

        filter.doFilter(request, response, chain);
        assertEquals("UTF-8", request.getCharacterEncoding());
    }
}