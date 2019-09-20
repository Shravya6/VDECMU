<%-- 
    Document   : ProApprove
    Created on : 27 Jun, 2018, 10:14:27 AM
    Author     : B Shravya
--%>
<%@include file="Proheader.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
.login-page {
  width: 800px;
  padding: 2% 0 0;
  margin: auto;
}
           form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
form input,form select {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
form button:hover,form button:active,form button:focus {
  background: #43A047;
}
        </style> 
    </head>
    <body>
        <%
        if(sid != null){
            %>
            <h1 align="center">List of materials to be approved</h1>
        <table border="1" width="100%">
            <tr align="center">
                <th>FILE ID</th>
                <th>MATERIAL ID</th>
                <th>MATERIAL NAME</th>
                <th>MATERIAL DESC</th>
                <th>BRANCH</th>
                <th>FILE</th>
            </tr>
            <%
            Statement st1=con.createStatement();
            ResultSet rs1=st1.executeQuery("select DEPARTMENT from PROFESSOR where PROFESSOR_ID='"+sid+"'");
            rs1.next();
            String dep1=rs1.getString(1);
            System.out.println(dep1);
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from file where status='pending' and branch='"+dep1+"'");
            while(rs.next())
            {
            %>
            
            
            <tr align="center">
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><a href="MatAccept.jsp?id=<%=rs.getString(1)%>">Approve</a></td>
            <td><a href="MatReject.jsp?id=<%=rs.getString(1)%>">Reject</a></td>
            </tr>
           
            <%
            }
            %>
        </table>
        <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %> 
    </body>
</html>

