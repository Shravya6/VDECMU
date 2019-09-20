<%-- 
    Document   : RoleRevoke5
    Created on : 4 Jul, 2018, 2:25:27 PM
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
         
         Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from ROLE_REVOCATION");
        while(rs.next()){
            String fid=rs.getString(3);System.out.println(fid);
        String id1=rs.getString(1);
        if(id1.equals(id)){
        PreparedStatement ps=con.prepareStatement("update PROFESSOR set STATUS='Accept' where PROFESSOR_ID='"+fid+"'");
        int k=ps.executeUpdate();
        PreparedStatement ps3=con.prepareStatement("update LECTURER set STATUS='Accept' where LECTURER_ID='"+fid+"'");
        int k3=ps3.executeUpdate();
        PreparedStatement ps1=con.prepareStatement("delete from ROLE_REVOCATION where REVOCATION_ID='"+id+"'");
        
        int k1=ps1.executeUpdate();
         
       PreparedStatement ps2=con.prepareStatement("delete from ROLE_DELEGATION where FROM_ID='"+fid+"'");
       int k2=ps2.executeUpdate();
        if(k1!=0 & k2!=0)
        {
            if(k!=0){
            response.sendRedirect("ProHome.jsp");
            }
            else if(k3!=0){
                response.sendRedirect("LecHome.jsp");
            }
        }
      }
        
        }
        %>
        
       
         </body>
</html>