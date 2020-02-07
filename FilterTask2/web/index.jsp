<%-- 
    Document   : index
    Created on : Feb 5, 2020, 10:31:58 AM
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
            <input type="number" name="usd" placeholder="USD">
            <select name="currency">
                <option value="KHR">KHR</option>
                <option value="INR">INR</option>
                <option value="YUAN">YUAN</option>
            </select>
            <br>
            <input type="submit" value="submit">
        </form>
    </body>
</html>
