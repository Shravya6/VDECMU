<%-- 
    Document   : proupaction
    Created on : 20 May, 2018, 10:47:48 PM
    Author     : B Shravya
--%>
<%@page import="java.io.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="connect.jsp" %>
<%@include file="Uniheader.jsp" %>
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
        String uname =request.getParameter("uname");
        String doj =request.getParameter("doj");
        String location =request.getParameter("location");
        
        PreparedStatement ps=con.prepareStatement("update UNIVERSITY set DATEOFJOINING=?,LOCATION=?,UNIVERSITY_NAME=? where UNIVERSITY_ID='"+sid+"'");
        
        ps.setString(1,doj);
        ps.setString(2,location);
        ps.setString(3,uname);
       int k=ps.executeUpdate();
       
        if(k!=0)
        {
            %>
            <jsp:forward page="UpdateSucc1.jsp"></jsp:forward>
            
       <% }
      
        %>
        
      
        
    </body>
</html>
