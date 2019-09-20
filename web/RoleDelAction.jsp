<%-- 
    Document   : RoleDelAction
    Created on : 4 Jul, 2018, 9:30:44 PM
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
         String id=request.getParameter("id");
         String status =request.getParameter("status");
         PreparedStatement ps=con.prepareStatement("update ROLE_DELEGATION set TO_ID=? where DELEGATION_ID='"+id+"'");
        ps.setString(1,status);
        int k=ps.executeUpdate();
       
        if(k!=0)
        {
            response.sendRedirect("RoleDel.jsp");
        }
      
        %>
        </body>
</html>

