<%-- 
    Document   : QueryAnsAction
    Created on : 20 May, 2018, 1:53:56 PM
    Author     : B Shravya
--%>

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
        
            String id=request.getParameter("sqid");
            String name=request.getParameter("stid");
            String depart=request.getParameter("query");
            String pwd=request.getParameter("qtag");
            String status="pending";
        String dept=request.getParameter("depart");
        PreparedStatement ps=con.prepareStatement("insert into STUQUERY values(?,?,?,?,?,?)");
        
        ps.setString(1,id);
        ps.setString(2,name);
        ps.setString(3,depart);
        ps.setString(4,pwd);
        ps.setString(5,status);
        ps.setString(6,dept);
        int k=ps.executeUpdate();
         if(k!=0)
        {
           
          response.sendRedirect("AddedSucc.jsp");
        }
         else
         {
             out.println("not added");
         }
        
       
        
        %>
    </body>
</html>

