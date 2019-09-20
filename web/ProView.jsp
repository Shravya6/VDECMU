<%-- 
    Document   : ProView
    Created on : 29 Jun, 2018, 9:56:33 PM
    Author     : B Shravya
--%>
<%@include file="Proheader.jsp" %>
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
            <h1>Professor Details</h1>
        <table border="0" width="30%" >
           <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from PROFESSOR where PROFESSOR_ID='"+sid+"'");
            while(rs.next())
            {
            %>
            
            <br><br>
            <tr> <th>Professor ID</th><td><%=rs.getString(1)%></td></tr>
             <tr><th>Professor Name</th><td><%=rs.getString(2)%></td></tr>
             <tr><th>Date of joining</th><td><%=rs.getString(3)%></td></tr>
             <tr><th>location</th><td><%=rs.getString(4)%></td></tr>
             <tr><th>Password</th><td><%=rs.getString(5)%></td></tr>
             <tr><th>Department</th><td><%=rs.getString(7)%></td></tr>
             <tr><th>University Name</th><td><%=rs.getString(8)%></td></tr>
             <tr><th>EMail</th><td><%=rs.getString(9)%></td></tr>
             <tr><th>Mobile No</th><td><%=rs.getString(10)%></td></tr>
             <tr><th>Experience</th><td><%=rs.getString(11)%></td></tr>
             <tr><th>Gender</th><td><%=rs.getString(12)%></td></tr>
            
           
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


