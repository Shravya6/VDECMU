<%-- 
    Document   : UniView
    Created on : 30 Jun, 2018, 12:17:41 AM
    Author     : B Shravya
--%>
<%@include file="Uniheader.jsp" %>
<%@include file="connect.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        if(sid != null){
            %>
        <center>
            <h1>University Details</h1>
        <table border="0" width="30%">
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from UNIVERSITY");
            while(rs.next())
            {
            %>
            
            <br><br>
            <tr><th>University ID</th><td><%=rs.getString(1)%></td></tr>
            <tr><th>University Name</th><td><%=rs.getString(2)%></td></tr>
            <tr><th>Password</th><td><%=rs.getString(3)%></td></tr>
            <tr><th>Date of joining</th><td><%=rs.getString(5)%></td></tr>
            <tr><th>location</th><td><%=rs.getString(6)%></td></tr>
            <tr><th>Status</th><td><%=rs.getString(7)%></td></tr>
            
            
           
            <%
            }
            %>
        </table>
    </center>
         <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %> 
    </body>
</html>

