<%-- 
    Document   : AddUniversity
    Created on : 20 May, 2018, 3:27:10 PM
    Author     : B Shravya
--%>
<%@include file="Uniheader.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddUniversity</title>
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
         <center>
       <div class="login-page">
        <h1>Add University</h1>
        <form action="AddUniAction.jsp">
        <table border="0">
          <tbody>
                <tr>
                    <td>University ID</td>
                    <td><input type="text" name="uid" <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select count(UNIVERSITY_ID) from UNIVERSITY");
                rs.next();
                int n=rs.getInt(1);
                if(n==0)
                {
                 int s=1; %>
           value="UNIID-<%=s%>" readonly="readonly"<%}
             else{
                 Statement st1=con.createStatement();
                 ResultSet rs1=st1.executeQuery("select max(cast(substr(UNIVERSITY_ID,7,length(UNIVERSITY_ID)-6) as unsigned)) from UNIVERSITY");
                 rs1.next();
                 int m=rs1.getInt(1);
                 int count=m+1;%>  
                               value="UNIID-<%=count%>"  readonly="readonly"/><%}%></td>
                </tr>
                <tr>
                    <td>University Name</td>
                    <td><input type="text" name="uname" value="" placeholder="University Name" required /></td>
                </tr>
                <tr>
                      <td>Password</td>
                      <td><input type="password" name="pwd" value="" minlength="6" maxlength="10" placeholder="Password"/></td> 
                  </tr>
                  <tr>
                      <td>Re-enter Password</td>
                      <td><input type="password" name="repwd" placeholder="Re-enter Password" value="" required /></td>
                  </tr>
                <tr>
                    <td>Date of joining</td>
                    <td><input type="date" name="doj" value="" placeholder="date of joining" required /></td>
                </tr>
                <tr>
                    <td>location</td>
                    <td><input type="text" name="location" value="" placeholder="location" required /></td>
                </tr>
                
                </tbody>
        </table>
        <button>ADD UNIVERSITY</button> 
        </form>
        </div>
         </center>
    </body>
</html>
