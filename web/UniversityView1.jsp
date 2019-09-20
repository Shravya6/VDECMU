<%-- 
    Document   : UniversityView1
    Created on : 20 May, 2018, 5:18:49 PM
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
            <h1>List of Universities</h1>
        <table border="1" width="100%">
            <tr>
               
                <th>University ID</th>
                <th>University Name</th>
                <th>Date of joining</th>
                <th>location</th>
                
                
                
                
            </tr>
            <%
            String status="Accept";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from UNIVERSITY where STATUS='"+status+"'");
            while(rs.next())
            {
            %>
            
            
            <tr align="center"><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><a href="deluni1.jsp?uid=<%=rs.getString(1)%>" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td></tr>
           
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


