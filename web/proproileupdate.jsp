<%-- 
    Document   : proproileupdate
   Created on : 20 May, 2018, 4:15:43 PM
    Author     : B Shravya
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@include file="Proheader.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="connect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("id");
        String name =request.getParameter("name");
        String doj =request.getParameter("doj");
        String location =request.getParameter("location");
        String Dept=request.getParameter("Dept");
        PreparedStatement ps=con.prepareStatement("update PROFESSOR set DATE_OF_JOINING=?,LOCATION=?,DEPARTMENT=?,PROFESSOR_NAME=? where PROFESSOR_ID='"+sid+"'");
        ps.setString(1,doj);
        ps.setString(2,location);
        ps.setString(3,Dept);
        ps.setString(4,name);
       int k=ps.executeUpdate();
       
        if(k!=0)
        {
            %>
            <jsp:forward page="UpdateSucc2.jsp"></jsp:forward>
            
       <% 
        }
        %>
        
      
        
    </body>
</html>

