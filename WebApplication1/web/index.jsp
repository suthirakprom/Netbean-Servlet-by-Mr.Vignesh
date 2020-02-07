<%-- 
    Document   : index
    Created on : Jan 3, 2020, 11:44:59 AM
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
        <form method="post" action="ValidationServlet">
            <input type="text" name="user">
            <input type="password" name="pass">
            <input type="submit" value="Login">
        </form>
    </body>
</html>
