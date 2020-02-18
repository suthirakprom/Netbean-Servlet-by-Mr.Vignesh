<%-- 
    Document   : Result
    Created on : Feb 18, 2020, 3:05:43 PM
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
        <% 
            Student s = (Student)request.getAttribute("student");
        %>
        
        <%= s %>
    </body>
</html>
