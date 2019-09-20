<%-- 
    Document   : LecGenStatus
    Created on : 20 May, 2018, 3:07:06 PM
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
            <h1>List of pending Lecturers</h1>
        <table border="1" width="100%" >
            <tr align="center">
               
                <th>Lecturer ID</th>
                <th>Lecturer Name</th>
                <th>Date of joining</th>
                <th>location</th>
                <th>Password</th>
                <th>Department</th>
                <th>University Name</th>
                <th>EMail</th>
                <th>Mobile No</th>
                <th>Experience</th>
                <th>Gender</th>
                <th>Offline</th>
                
            </tr>
            <%
            String status="pending";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from LECTURER where STATUS='"+status+"'");
            while(rs.next())
            {
            %>
            
            
            <tr align="center"><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(11)%></td>
            <td><%=rs.getString(12)%></td>
            <td><%=rs.getString(13)%></td>
            <td><a href="LecAccept.jsp?ID=<%=rs.getString(1)%>">Accept</a></td>
            <td><a href="LecReject.jsp?ID=<%=rs.getString(1)%>">Reject</a></td>
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

