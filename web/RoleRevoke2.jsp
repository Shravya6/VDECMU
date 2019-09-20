<%-- 
    Document   : RoleRevoke2
    Created on : 4 Jul, 2018, 2:15:16 PM
    Author     : B Shravya
--%>
<%@include file="head.jsp" %>
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
       
        String name=request.getParameter("rid");
        String depart=request.getParameter("rfid");
        String pwd=request.getParameter("rtid");
        String df=request.getParameter("dor");
     
        
        PreparedStatement ps=con.prepareStatement("insert into ROLE_REVOCATION values(?,?,?,?)");
       
        ps.setString(1,name);
        ps.setString(2,depart);
        ps.setString(3,pwd);
        ps.setString(4,df);
        int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("Added Sucessfully");  
          response.sendRedirect("RoleRevoke3.jsp");
        }
         else
         {
             out.println("not added");
         }
        
       
        
        %>
    </body>
</html>
