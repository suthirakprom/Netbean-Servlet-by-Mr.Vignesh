<%-- 
    Document   : Success
    Created on : Mar 4, 2020, 9:46:56 AM
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
            String user = request.getParameter("user");
            
            out.println("Welcome" + user);
        %>
    </body>
</html>
