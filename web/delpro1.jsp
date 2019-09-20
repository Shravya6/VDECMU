<%-- 
    Document   : delpro1
    Created on : 20 May, 2018, 5:10:01 PM
    Author     : B Shravya
--%>
<%@page import="java.sql.Statement"%>
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
        String id=request.getParameter("sid");
        Statement st=con.createStatement();
        int k=st.executeUpdate("delete from PROFESSOR where PROFESSOR_ID='"+id+"'");
        if(k!=0)
        {
            response.sendRedirect("ProView1.jsp");
        }
        else
        {
            response.sendRedirect("error2.jsp");
        }
        %>
    </body>
</html>