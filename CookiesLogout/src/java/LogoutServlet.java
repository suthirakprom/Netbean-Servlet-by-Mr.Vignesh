/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jinjason
 */
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        
        for(Cookie ck:cookies) {
            ck.setValue(null);
            ck.setMaxAge(0);
            resp.addCookie(ck);                 // add the new cookie
        }
        PrintWriter out = resp.getWriter();     // will print out the new one instead of the old one
        out.println("");
        resp.sendRedirect("index.jsp");
    }

    

}
