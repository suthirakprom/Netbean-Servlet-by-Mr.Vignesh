<%-- 
    Document   : Next
    Created on : Mar 4, 2020, 9:46:50 AM
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
        <%-- action tags example --%>
        <jsp:forward page="Success.jsp">
            <jsp:param name="user" value="${param.user}"/>
        </jsp:forward>
        <%-- action tags example --%>
        
        
        <%--
            Student stud = new Student();
//            stud.setName(request.getParameter("name"));
            
//            session.setAttribute("stud", stud);
        --%> 
        
        <jsp:useBean class="com.Student" id="stud" scope="session"></jsp:useBean>
        
        <jsp:setProperty name="stud" property="name" value="${param.name}"/>
        <jsp:getProperty name="stud" property="name"/>
            <%= "Hello from Next.jsp" %>
        
        
    </body>
</html>
