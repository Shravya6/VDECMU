<%-- 
    Document   : StuProfile
    Created on : 20 May, 2018, 1:53:56 PM
    Author     : B Shravya
--%>
<%@include file="Stuheader.jsp" %>
<%@include file="connect.jsp"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
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
                <h1>Update Password</h1>
                <%
        if(sid != null){
            %>
         
        
            <div class="mvi">
                <form action="updatepass.jsp">
                    <table border="0" cellspacing="0" cellpadding="10">
            <tbody>
                <tr>
                    <td>Present password</td>
                    <td><input type="password" name="olpass" value="" placeholder="present password" required /></td>
                </tr>
                <tr>
                    <td>New password</td>
                    <td><input type="password" name="nupass" value="" placeholder="new password" required /></td>
                </tr>
                 <tr>
                  <td>Re-enter New Password</td>
                  <td><input type="Password" name="repwd" value="" placeholder="Re-enter new password" required /></td>
                </tr>   
                
                
                </tbody>
    </table>
                <button>UPDATE STUDENT PASSWORD</button> 
                </form>
        </div>
           
            
                 <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %>
        </div>
</center>
    </body>
</html>
