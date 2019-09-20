<%-- 
    Document   : RoleRevoke
    Created on : 4 Jul, 2018, 1:48:13 PM
    Author     : B Shravya
--%>
<%@include file="head.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RoleRevocationRequest</title>
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
        <center>
        <div class="login-page">
        <h1>Role Revocation Request</h1>
        <form action="RoleRevoke2.jsp">
        <table border="0">
        <tbody>
            <tr>
                <td>Revocation ID</td>
                <td><input type="text" name="rid" <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select count(REVOCATION_ID) from ROLE_REVOCATION");
                rs.next();
                int n=rs.getInt(1);
                if(n==0)
                {
                 int s=1; %>
           value="RID-<%=s%>" readonly="readonly"<%}
             else{
                 Statement st1=con.createStatement();
                 ResultSet rs1=st1.executeQuery("select max(cast(substr(REVOCATION_ID,5,length(REVOCATION_ID)-4)as unsigned)) from ROLE_REVOCATION");
                 rs1.next();
                 int m=rs1.getInt(1);
                 int count=m+1;%>  
                               value="RID<%=count%>" title="enter student id" readonly="readonly"/><%}%> </td>
            </tr>
            <%
                Statement st2=con.createStatement();
                ResultSet rs2=st2.executeQuery("select * from ROLE_DELEGATION where FROM_ID='"+sid+"'");
               System.out.println(sid);
               rs2.next();
                %>
            <tr>
                <td>Revoke from ID</td>
                <td><input type="text" name="rfid" value="<%=rs2.getString(3)%>" readonly="readonly"/></td>
            </tr>
            <tr>
                <td>Revoke to ID</td>
                <td><input type="text" name="rtid" value="<%=rs2.getString(2)%>" readonly="readonly"/></td>
            </tr>
            <tr>
                <td>Date of Revocation</td>
                <td><input type="date" name="dor" value="<%=rs2.getString(5)%>" readonly="readonly"/></td>
            </tr>
        </tbody>
    </table>
        <button>revoke</button>
        </form>
        </div>
        </center>
            <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %> 
    </body>

</html>

