<%-- 
    Document   : ViewRoleDel5
    Created on : 15 Jul, 2018, 2:00:41 PM
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
    <style>
            table{
    border-collapse: collapse;
    width: 100%;
}
table td, th{
    text-align: center;
   border: 1px solid #ddd;
   padding: 8px;
}
th{
    padding-top: 12px;
    padding-bottom: 12px;
    background-color: #4CAF50;
     color: white;
}
tr:nth-child(even) {
    background-color: #dbdbdb;
   
}
tr:hover {background-color: #bbbbbb; }
        </style>
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
            ResultSet rs=st.executeQuery("select * from ROLE_DELEGATION where TO_ID!='pending'");
            while(rs.next())
            {
            %>
            <tr><td><%=rs.getString(1)%></td>
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
            %>
            <script type="text/javascript">
           window.alert("You need to login"); 
           window.location="index.jsp";
           </script>
            <%
        }
        %>  
    </body>
</html>

