<%-- 
    Document   : Next
    Created on : Mar 3, 2020, 3:16:33 PM
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
        <%-- scriptlet --%>
        <% 
            String user = (String)session.getAttribute("user");
            out.println(user);
        %>
        <%-- scriptlet --%>
        
        <%-- expression tag --%>
        <%= (String)session.getAttribute("user") %>
        <%-- expression tag --%>
        
        <%-- expression language --%>
        ${sessionScope.user}
        <%-- expression language --%>
    </body>
</html>
