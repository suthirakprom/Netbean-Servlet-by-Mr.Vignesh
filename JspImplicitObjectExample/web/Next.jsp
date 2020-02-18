<%-- 
    Document   : Next
    Created on : Feb 13, 2020, 1:42:14 PM
    Author     : jinjason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String user; %>
        <% 
            user = request.getParameter("user");
            out.println(user);
            String color = config.getInitParameter("color");
            if(color.equals("blue")) {
                String school = application.getInitParameter("school");
                out.println("You are from " + school);
            } else {
                out.println("You are open minded...");  
            }
        %>
        
    </body>
</html>
