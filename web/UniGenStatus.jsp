<%-- 
    Document   : UniGenStatus
    Created on : 20 May, 2018, 3:32:58 PM
    Author     : B Shravya
--%>
<%@include file="AdminHead.jsp" %>
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
            <h1>List of pending Universities</h1>
        <table border="1" width="100%" >
            <tr align="center">
               
                <th>Univeristy ID</th>
                <th>University Name</th>
                <th>Password</th>
                <th>Date of joining</th>
                <th>location</th>
                <th>Offline</th>
                
            </tr>
            <%
            String status="pending";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from UNIVERSITY where STATUS='"+status+"'");
            while(rs.next())
            {
            %>
            
            
            <tr align="center"><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><a href="UniAccept.jsp?ID=<%=rs.getString(1)%>">Accept</a></td>
            <td><a href="UniReject.jsp?ID=<%=rs.getString(1)%>">Reject</a></td>
            </tr>
           
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

