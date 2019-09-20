<%-- 
    Document   : RoleDel3
    Created on : 4 Jul, 2018, 9:29:52 PM
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
         Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from ROLE_DELEGATION");
        while(rs.next()){
            String fid=rs.getString(2);System.out.println(fid);
        String id1=rs.getString(1);
        if(id1.equals(id)){
        PreparedStatement ps=con.prepareStatement("update LECTURER set STATUS='delegated' where LECTURER_ID='"+fid+"'");
        int k=ps.executeUpdate();
        
         PreparedStatement ps1=con.prepareStatement("update ROLE_DELEGATION set TO_ID=? where DELEGATION_ID='"+id+"'");
        ps1.setString(1,status);
        int k1=ps1.executeUpdate();
       
        if(k1!=0 & k!=0)
        {
            response.sendRedirect("RoleDel.jsp");
        }
      }
        }
        %>
        </body>
</html>