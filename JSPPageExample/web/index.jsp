<%-- 
    Document   : index
    Created on : Mar 3, 2020, 10:53:39 AM
    Author     : jinjason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Student, java.util.Date" info="This is index page" session="true" isThreadSafe="false"%>        <%-- isThreadSafe="false" meaning user cannot access the servlet at the same time --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("user", "JinJason");
            //Thread.sleep(5000);
            out.println("Hello World");
            //Thread.sleep(5000);
            out.println(getServletInfo());      // info
            Student std = new Student();        // Student import from com.Student 
            Date date = new Date();             // Date import
        %>
        
        <%= std.msg() %>    <%-- Student Java Class import --%>
        <%= date %>         <%-- date import --%>
    </body>
</html>
