<%-- 
    Document   : RoleDelR
    Created on : 4 Jul, 2018, 9:39:35 PM
    Author     : B Shravya
--%>
<%@include file="Lecheader.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RoleDelegationRequest</title>
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
        <h1>Role Delegation Request</h1>
        <form action="RoleDelRAction.jsp">
        <table border="0">
            <tbody>
                <tr>
                    <td>Delegation ID</td>
                    <td><input type="text" name="rdid" 
                              <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select count(DELEGATION_ID) from ROLE_DELEGATION");
                rs.next();
                int n=rs.getInt(1);
                if(n==0)
                {
                 int s=1; %>
           value="DID-<%=s%>" readonly="readonly"<%}
             else{
                 Statement st1=con.createStatement();
                 ResultSet rs1=st1.executeQuery("select max(cast(substr(DELEGATION_ID,5,length(DELEGATION_ID)-4) as unsigned)) from ROLE_DELEGATION");
                 rs1.next();
                 int m=rs1.getInt(1);
                 int count=m+1;%>  
                               value="DID-<%=count%>" title="enter delegation id" readonly="readonly"/><%}%></td>
              </tr>
                <tr>
                    <td>pro ID(from)</td>
                    <td><input type="text" name="delid" value="<%=sid%>" /></td>
                    <td style="visibility: hidden">pro ID(to)</td>
                    <td style="visibility: hidden"><input type="text" name="pid2" value="" /></td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td><input type="text" name="depart"
                               <%
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select DEPARTMENT from LECTURER where LECTURER_ID='"+sid+"'");rs2.next();

                               %> value="<%=rs2.getString(1)%>"/>
</td>
                </tr>
                <tr>
                    <td>From Date</td>
                    <td><input type="date" name="fdate" value="" required /></td>
                </tr>
                <tr>
                    <td>To Date</td>
                    <td><input type="date" name="tdate" value="" required /></td>
                </tr>
            </tbody>
        </table>
        <p>Reason</p>
        <textarea name="reason" rows="6" cols="25" placeholder="reason">
        </textarea>
        <p>
        <button>delegate</button>
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

