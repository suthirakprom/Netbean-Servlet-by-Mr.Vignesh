<%-- 
    Document   : Next
    Created on : Feb 12, 2020, 11:20:52 AM
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
        <h1>Hello World!</h1>
        
        <%! String user; %>         <!-- declaration tag -->
        
        <% 
        
            System.out.println("Hello");
            
            user = request.getParameter("user");
            out.println(user);              // this is an object of JSP writer
        
        %>
        
        <%= "This is expression tag.." %>
    </body>
</html>
