<%-- 
    Document   : Error
    Created on : Feb 14, 2020, 11:45:29 AM
    Author     : jinjason
--%>

<!--4 This is for error exception only -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--4 exception-->
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>    `
            <% 
                out.println("This is error page");
            %>
            <!-- get message has to be in expression tag -->
            <%= exception.getMessage() %>
        </h1>
    </body>
</html>
