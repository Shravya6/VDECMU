<%-- 
    Document   : RoleDelRAction
    Created on : 4 Jul, 2018, 9:39:51 PM
    Author     : B Shravya
--%>
<%@include file="Lecheader.jsp" %>
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
       
        String name=request.getParameter("rdid");
        String depart=request.getParameter("delid");
        String df=request.getParameter("fdate");
        String dt=request.getParameter("tdate");
        String email=request.getParameter("reason");
     String dept=request.getParameter("depart");
        
        PreparedStatement ps=con.prepareStatement("insert into ROLE_DELEGATION values(?,?,'pending',?,?,?,?)");
       
        ps.setString(1,name);
        ps.setString(2,depart);
        ps.setString(3,df);
        ps.setString(4,dt);
        ps.setString(5,email);
        ps.setString(6,dept);
        int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("Added Sucessfully"); 
          response.sendRedirect("ViewRoleDel4.jsp");
        }
         else
         {
             out.println("not added");
         }
        
       
        
        %>
    </body>
</html>
