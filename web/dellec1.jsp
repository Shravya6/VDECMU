<%-- 
    Document   : dellec1
    Created on : 20 May, 2018, 4:15:43 PM
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
        int k=st.executeUpdate("delete from LECTURER where LECTURER_ID='"+id+"'");
        if(k!=0)
        {
            response.sendRedirect("LecView1.jsp");
        }
        else
        {
            response.sendRedirect("error2.jsp");
        }
        %>
    </body>
</html>
