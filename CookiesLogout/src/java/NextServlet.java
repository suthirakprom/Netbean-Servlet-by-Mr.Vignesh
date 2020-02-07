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
public class NextServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        
        Cookie ck = new Cookie("user", user);
        resp.addCookie(ck);
        resp.setContentType("text/html");       // so we could write, and the server can understand HTML code
        PrintWriter out = resp.getWriter();
        
        out.println("Welcome :" + user);
        out.println("<a href='LogoutServlet'>Click to Logout</a>");
    }


}
