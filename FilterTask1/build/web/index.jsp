<%-- 
    Document   : index
    Created on : Feb 5, 2020, 9:51:14 AM
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
        <form action="NextServlet" method="post">
            <input type="text" name="user">
            <br>
            <select name="role">
                <option value="admin">admin</option>
                <option value="superviser">superviser</option>
                <option value="teacher">teacher</option>
            </select>
            <br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
