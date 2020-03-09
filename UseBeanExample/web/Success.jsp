<%-- 
    Document   : Success
    Created on : Mar 6, 2020, 9:49:34 AM
    Author     : jinjason
--%>

<%@page import="com.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%-- 
       <%
           Student st = (Student)session.getAttribute("st");
           out.println(st.getName());
           out.println(st.getAge());
       %>
       --%>
       <!--#1--> 
       <jsp:useBean id="st" class="com.Student" scope="session"/>
       <jsp:getProperty name="st" property="name"/>
       <jsp:getProperty name="st" property="age"/>
       
       <!--#2-->
       ${sessionScope.st.name}
       ${sessionScope.st.age}
       
       <!--#1 and #2 is the same-->
    </body>
</html>
