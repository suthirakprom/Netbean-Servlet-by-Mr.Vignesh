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
import javax.servlet.http.HttpSession;

/**
 *
 * @author jinjason
 */
public class LoginServlet extends HttpServlet {


  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean flag = false;
        String user = request.getParameter("user");
        String pass = request.getParameter("password");
        if(user.equals("JinJason")&&pass.equals("1234")) {
            HttpSession hs = request.getSession();
            hs.setAttribute("flag", true);
            RequestDispatcher rd = request.getRequestDispatcher("SuccessServlet");
            rd.forward(request, response);
            
        }
        else {
            response.sendRedirect("index.jsp");    
        }
    }

   

}
