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
public class VlidateServlet extends HttpServlet {

    
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int sno = Integer.parseInt(request.getParameter("sno"));
        String firstName = request.getParameter("firstName");
        
        Student s = new Student();
        s.setId(sno);
        s.setFirstName(firstName);
        
        DBOperation dbop= new DBOperation();
        if(dbop.insertRecord(s)) {
            System.out.println("Data inserted successfully...");
            request.setAttribute("student", s);
        } else {
            System.out.println("Data insertion failed...");
        }
        RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
        rd.forward(request, response);
        
    }

   

}
