<%-- 
    Document   : ViewRoleDel4
    Created on : 4 Jul, 2018, 9:42:19 PM
    Author     : B Shravya
--%>
<%@include file="Lecheader.jsp" %>
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
            <h1>Role Delegation</h1>
        <table border="1" width="100%">
            <tr>
               
                <th>Delegation ID</th>
                <th>pro ID(from)</th>
                <th>pro ID(to)</th>
                <th>From Date</th>   
                 <th>To Date</th>
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ROLE_DELEGATION");
            while(rs.next())
            {
            %>
            
            
            <tr align="center"><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            
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

