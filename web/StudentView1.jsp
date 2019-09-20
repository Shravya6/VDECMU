<%-- 
    Document   : StudentView1
    Created on : 20 May, 2018, 5:01:04 PM
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
            <h1>List of Students</h1>
        <table border="1" width="100%">
            <tr>
               
                <th>stu_id</th>
                <th>stu_name</th>
                <th>Department</th>
                <th>Date Of Birth</th>
                <th>Email</th>
                <th>Mobile No</th>
                <th>Qualification</th>
                <th>Gender</th>
                
                
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from REGISTRATION");
            while(rs.next())
            {
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getString(10)%></td>
           
            
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