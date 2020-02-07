<%-- 
    Document   : index
    Created on : Jan 15, 2020, 11:03:50 AM
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
        <form action="ValidateServlet" method="post">
            Username<input type="text" name="name">
            Email<input type="text" name="email">
            <input type="submit" value="login">
        </form>
    </body>
</html>
