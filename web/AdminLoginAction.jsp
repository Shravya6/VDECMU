<%-- 
    Document   : AdminLoginAction
    Created on : 20 May, 2018, 12:05:32 PM
    Author     : B Shravya
--%>
<%@page import="java.sql.*"%>
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
        String id=request.getParameter("uid");
        session.setAttribute("id1",id);
         String pw=request.getParameter("pwd");
         Statement st=con.createStatement();
         
        if(id.equals("admin"))
        {
            if(pw.equals("admin"))
            {%>
            <jsp:forward page="Admin.jsp"></jsp:forward>
            <%}
        
       
        
        
        else{
            %>
            <jsp:forward page="PassIncorrect.jsp"></jsp:forward>
            <%
        }}
        else{
            %>
            <jsp:forward page="error1.jsp"></jsp:forward>
            <%
        }
        %>
    </body>
</html>


