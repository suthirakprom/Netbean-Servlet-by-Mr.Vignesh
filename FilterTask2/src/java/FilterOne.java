
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author jinjason
 */
public class FilterOne implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter Initialized...");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String currency = request.getParameter("currency");
        String usd = request.getParameter("usd");
        int result = 0;
        if(currency.equals("KHR")) {
            result = Integer.parseInt(usd) * 4000;
            request.setAttribute("currency", result);
            chain.doFilter(request, response);
        } else if(currency.equals("YUAN")) {
            result = Integer.parseInt(usd) * 7;
            request.setAttribute("currency", result);
            chain.doFilter(request, response);
        } 
    }

    @Override
    public void destroy() {
        System.out.println("Filter Destroyed...");
    }
    
}
