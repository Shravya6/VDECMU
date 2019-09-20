<%-- 
    Document   : error1
    Created on : 20 May, 2018, 4:15:43 PM
    Author     : B Shravya
--%>

<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <div>
        <h1 style="padding: 30px" align="center">Incorrect user id or password</h1>
        <%
        session.removeAttribute("sid");
    session.invalidate();
    %>
        </div>
    </body>
</html>
