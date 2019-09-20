<%-- 
    Document   : RoleDelegationAction
    Created on : 20 May, 2018, 1:53:56 PM
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
            response.sendRedirect("RoleDelegation.jsp");
        }
      
        %>
        </body>
</html>

