<%-- 
    Document   : ProAccept
    Created on : 20 May, 2018, 11:35:25 AM
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
    PreparedStatement ps=con.prepareStatement("update PROFESSOR set STATUS='Accept' where PROFESSOR_ID='"+id+"'");
    int k=ps.executeUpdate();
    if(k!=0)
        {
            response.sendRedirect("ProfessorView1.jsp");
        }
      
        %>
        </body>
</html>