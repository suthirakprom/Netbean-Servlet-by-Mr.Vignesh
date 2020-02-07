/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jinjason
 */
public class NewServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        ServletConfig sc = getServletConfig();
        String color = sc.getInitParameter("color");
        PrintWriter writer = resp.getWriter();            // be able to print on the web
        writer.print("This is " + color);                 // print on the web
        System.out.println(color);                        // this will show in the console
        
    }

    
}
