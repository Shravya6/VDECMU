<%-- 
    Document   : SQueriesAnsView
    Created on : 20 May, 2018, 11:44:50 PM
    Author     : B Shravya
--%>
<%@page import="java.sql.*"%>
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
    <center>
        <table border="1" cellspacing="50" style="border-color: collapse;width: 100%;">
            <tr>
               
                <th>StuQueryAns ID</th>
                <th>Student ID</th>
                <th>ID</th>
                <th>StuQuery ID</th>
                <th>Answer</th>
            </tr>
            <%
                String id=request.getParameter("pid");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from STUQUERYANS");
            while(rs.next())
            {
            
            
            String id1=rs.getString(4);
            if(id.equals(id1))
            {
            %>
            <tr>
            <td align="center"><%=rs.getString(1)%></td>
            <td align="center"><%=rs.getString(2)%></td>
            <td align="center"><%=rs.getString(3)%></td>
            <td align="center"><%=rs.getString(4)%></td>
            <td align="center"><%=rs.getString(5)%></td>
            </tr>
           
            <%
            
            }
            }
            
            %>
        </table>
    </center>
    </body>
</html>

        