<%-- 
    Document   : Next
    Created on : Feb 14, 2020, 10:54:20 AM
    Author     : jinjason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--4 exception -->
<%@page errorPage="/Error.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            //1 this is related to add cookie and show cookie
//            String user = request.getParameter("user");
//            Cookie ck = new Cookie("user", user);
//            
//            response.addCookie(ck);
//            out.println("<a href='ViewDetails.jsp'>View Detail</a>");
              
            //2 this is set attribute and set attribute
//            String user = request.getParameter("user");
//            session.setAttribute("user", user);
//            out.print("<a href='ViewDetails.jsp'>View Details</a>");
            //3 pageContext will take the session from the session. this is an alternative way of 2
            String user = request.getParameter("user");
            pageContext.setAttribute("user", user,PageContext.SESSION_SCOPE);   // it will have the session object ready
            out.print("<a href='ViewDetails.jsp'>View Details</a>");
            
            //4 exception
            int c = 10/0;
        %>
        
    </body>
</html>
