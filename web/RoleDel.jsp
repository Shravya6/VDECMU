<%-- 
    Document   : RoleDel
    Created on : 4 Jul, 2018, 9:30:09 PM
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
            <h1>Role Delegation Requests</h1>
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
            ResultSet rs=st.executeQuery("select * from ROLE_DELEGATION where TO_ID='pending' AND FROM_ID LIKE'LECID-%' AND FROM_ID!='"+sid+"' ");
            while(rs.next())
            {
               
            %>
            
            
            <tr align="center"><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><a href="RoleDelAction1.jsp?ID=<%=rs.getString(1)%>">Accept</a></td>
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


