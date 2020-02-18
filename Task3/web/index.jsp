<%-- 
    Document   : index
    Created on : Feb 7, 2020, 9:48:43 AM
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
        <form action="LoginServlet" method="post">
            <input type="text" name="user" placeholder="username">
            <input type="text" name="password" placeholder="password">
            <input type="submit" value="Login">
        </form>
    </body>
</html>
