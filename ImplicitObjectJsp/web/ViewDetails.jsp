<%-- 
    Document   : ViewDetails
    Created on : Feb 14, 2020, 10:55:13 AM
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
        <%
            //1 print out the cookie
//            Cookie ck[] = request.getCookies();
//            
//            for(Cookie cookie:ck){
//                out.println(cookie.getName());
//                out.println(cookie.getValue());
//            }
            
            //2 get attribute from Next.jsp
//            String user = (String)session.getAttribute("user");
            //3 pageContext
            String user = (String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);
        %>
            
        <%= 
            //2 like printing and also used for 3
            "Welcome:" + user 
            
        %>
    </body>
</html>
