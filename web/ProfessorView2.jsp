<%-- 
    Document   : ProfessorView2
    Created on : 20 May, 2018, 6:22:42 PM
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
            <h1>List of professors</h1>
        <table border="1" width="100%" >
            <tr align="center">
               
                <th>Professor ID</th>
                <th>Professor Name</th>
                <th>Date of joining</th>
                <th>location</th>
                <th>Department</th>
                <th>University Name</th>
                <th>EMail</th>
                <th>Mobile No</th>
                <th>Experience</th>
                <th>Gender</th>
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from PROFESSOR");
            while(rs.next())
            {
            %>
            
            
            <tr align="center"><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(11)%></td>
            <td><%=rs.getString(12)%></td>
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