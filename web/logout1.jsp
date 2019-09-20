<%-- 
    Document   : logout1
    Created on : 20 May, 2018, 4:15:43 PM
    Author     : B Shravya
--%>
<%@include file="AdminHead.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <%
    
    if (sid != null)
    {
    session.removeAttribute("sid");
    session.invalidate();
    response.sendRedirect("index.jsp");
        }
    else
    {

        response.sendRedirect("error.jsp");
    }
%> 
    </body>
</html>
