<%-- 
    Document   : LecView2
    Created on : 30 Jun, 2018, 12:11:44 AM
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
            <h1 align="center">List of lecturers of a particular university</h1>
        <table border="1" width="100%" >
            <tr>
               
                <th>Lecturer ID</th>
                <th>Lecturer Name</th>
                <th>Date of joining</th>
                <th>location</th>
                <th>Department</th>
                <th>University Name</th>
                <th>EMail</th>
                <th>Mobile No</th>
                <th>Experience</th>
                <th>Gender</th>
                <th>Offline</th>
            </tr>
            <%
            String status="Accept";
            String uname=request.getParameter("uname");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from LECTURER where STATUS='"+status+"' AND UNIVERSITY_NAME='"+uname+"'");
            while(rs.next())
            {
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(11)%></td>
            <td><%=rs.getString(12)%></td>
            <td><%=rs.getString(13)%></td>
            <td><a href="dellec1.jsp?sid=<%=rs.getString(1)%>">Delete</a></td>
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




