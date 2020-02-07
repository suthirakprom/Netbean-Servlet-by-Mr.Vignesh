/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jinjason
 */
public class FirstServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        
        if(user.trim().equals("Thirak")) { 
//            resp.sendRedirect("newjsp.jsp");  // redirect to the new servlet
            RequestDispatcher rd = req.getRequestDispatcher("newjsp.jsp");
            PrintWriter pw = resp.getWriter();
            pw.print("111");                    // if we don't print it won't show, will show the header
//            rd.forward(req,resp);             // forward to the header
            rd.include(req,resp);               // show the body which is HTML

        } else {
            RequestDispatcher rd = req.getRequestDispatcher("newjsp.jsp");
            rd.forward(req, resp);
        }
    }

    }
