<%-- 
    Document   : index
    Created on : Feb 14, 2020, 12:03:01 PM
    Author     : jinjason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="/NullHandle.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="a.jsp">Click me</a>
        <!-- This is for null exception -->
        <h1>Null Code is here</h1>
        <%
            String user = request.getParameter("user");
            out.println(user.indexOf(1));
        %>
    </body>
</html>
