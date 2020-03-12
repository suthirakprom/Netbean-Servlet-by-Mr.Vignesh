<%-- 
    Document   : index
    Created on : Mar 11, 2020, 10:42:55 AM
    Author     : jinjason
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--c is a value of prefix-->
        <%--
        <c:set var="abc" value="${500*5}" scope="session"/> 
        Before delete: <c:out value="${abc}"/>
        <c:remove var="abc" scope="session"/>
        After remove: <c:out value="${abc}"/>
        --%>
        
        <!--choose when otherwise-->
        <!--this is like switch case-->
        <%--
        <c:import url="Header.jsp"/>
        <c:set var="mark" value="${500*5}" scope="session"/> 
        Before delete: <c:out value="${abc}"/>
        <c:choose>
            <c:when test="${mark>2500}">
                <c:out value="Outstanding"/>
            </c:when>
            <c:when test="${mark>2000}">
                <c:out value="A"/>
            </c:when>
            <c:when test="${mark>1500}">
                <c:out value="B"/>
            </c:when>
            <c:otherwise>
                <c:out value="Bye Bye..."/>
            </c:otherwise>
        </c:choose>
        <c:import url="Footer.jsp" var="foot"/>
        </br>
        <c:out value="${foot}"/>
        </br>
        --%>
        <!--redirect-->
        <%--
        <c:url var="url1" value="Success.jsp">
            <c:param name="color" value="green"></c:param>
        </c:url>
        <c:url var="url2" value="Failure.jsp">
            <c:param name="color" value="red"></c:param>
        </c:url>
        <c:redirect url="${url1}">
            
        </c:redirect>
        --%>
        
        
        <!--forTokens-->
        <%--
        <c:forTokens var="i" delims="," items="Te-vy,Sok-noy,Chun-neng">
            <c:out value="${i}"></c:out>
            <c:forTokens var="j" delims="-" items="${i}">
                <c:out value="${j}"/>
            </c:forTokens>
        </c:forTokens>
        --%>
        
        <!--catch-->
        <c:catch>
            <%
                int x = 300/0;
            %>
        </c:catch>
        <c:if test="${x ne null}">
            <c:out value="This is an exception"/>
        </c:if>
    </body>
</html>
