/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIFactoryMethod;
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
public class ValidateServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        
        if(name.trim().equals("Dane"))
        {
            Cookie nameCookie = new Cookie("name", name);
            response.addCookie(nameCookie);
            Cookie emailCookie = new Cookie("email", email);
            response.addCookie(emailCookie);
            
            PrintWriter out = response.getWriter();
            out.println("Hi Dane....");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
    
    
    
    }

    
   
    
    


