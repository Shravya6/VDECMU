<%-- 
    Document   : StuProfileUpdate
   Created on : 20 May, 2018, 1:53:56 PM
    Author     : B Shravya
--%>
<%@page import="java.io.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="connect.jsp" %>
<%@include file="Stuheader.jsp" %>
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
        String name =request.getParameter("name");
        String spl =request.getParameter("eid");
        String g =request.getParameter("phno");
        String d=request.getParameter("depname");
        PreparedStatement ps=con.prepareStatement("update REGISTRATION set STUDENT_NAME=?,EMAIL=?,MOBILENO=?,DEPARTMENT=? where STUDENT_ID='"+sid+"'");
        ps.setString(1,name);
        ps.setString(2,spl);
        ps.setString(3,g);
        ps.setString(4,d);
       int k=ps.executeUpdate();
       
        if(k!=0)
        {
            %>
            <jsp:forward page="UpdateSucc.jsp"></jsp:forward>
            
       <% }
      
        %>
        
      
        
    </body>
</html>

