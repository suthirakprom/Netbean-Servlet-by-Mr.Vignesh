<%-- 
    Document   : Next
    Created on : Mar 6, 2020, 9:44:37 AM
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
            String user = request.getParameter("user");
            String age = request.getParameter("age");
            
            Student st = new Student();
            st.setName(user);
            st.setAge(age);
            
            session.setAttribute("st", st);
            RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
            rd.forward(request, response);
        %>
        --%>
        
        <jsp:useBean id="st" class="com.Student" scope="session"/>
        <jsp:setProperty name="st" property="name" value="${param.user}"/>
        <jsp:setProperty name="st" property="age" value="${param.age}"/>
        <jsp:forward page="Success.jsp"/>
           
      
    </body>
</html>
