<%-- 
    Document   : index
    Created on : Mar 3, 2020, 2:43:53 PM
    Author     : jinjason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page buffer="3kb" autoFlush="false" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%@include file="header.jsp" %>
        </div>
        <h1>Hello World</h1>
        <%
            // auto flush
//            for(int i=0;i<5000;i++) {
//                out.println("hello");
//                out.flush();
//                // when we increase the side of the buffer we don't need to flush
//            }
            
            
        %>
        
        <%-- expression language --%>
        
        ${10*5}
        
        <%-- expression language --%>
        <div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
