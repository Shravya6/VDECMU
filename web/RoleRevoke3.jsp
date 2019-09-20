<%-- 
    Document   : RoleRevoke3
    Created on : 4 Jul, 2018, 2:16:47 PM
    Author     : B Shravya
--%>
<%@include file="head.jsp" %>
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
            <h1>Role Revocation Request</h1>
        <table border="1" width="100%">
            <tr>
               
                <th>Revocation ID</th>
                <th>Revoke from ID</th>
                <th>Revoke to ID</th>
                <th>Date of Revocation</th>   
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ROLE_REVOCATION where TO_ID='"+sid+"'");
            while(rs.next())
            {
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><a href="RoleRevoke4.jsp?ID=<%=rs.getString(1)%>">Revoke</a></td>
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



