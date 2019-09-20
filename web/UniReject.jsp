<%-- 
    Document   : UniReject
    Created on : 20 May, 2018, 3:37:00 PM
    Author     : B Shravya
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="connect.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    String id=request.getParameter("ID");
    PreparedStatement ps=con.prepareStatement("update UNIVERSITY set STATUS='Reject' where UNIVERSITY_ID='"+id+"'");
    int k=ps.executeUpdate();
    if(k!=0)
        {
            response.sendRedirect("UniversityView1.jsp");
        }
      
        %>
        </body>
</html>