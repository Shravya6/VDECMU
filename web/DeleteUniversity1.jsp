<%-- 
    Document   : DeleteUniversity1
    Created on : 20 May, 2018, 5:20:53 PM
    Author     : B Shravya
--%>
<%@include file="AdminHead.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete University</title>
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
        <h1>Delete University</h1>
        <form action="deluni1.jsp">
        <table border="0" cellspacing="5">
            <tbody>
                <tr>
                    <td>University ID</td>
                    <td><input type="text" name="uid" value="" required /></td>
                </tr>
            </tbody>
        </table>
            <button onclick="ConfirmDelete()">DELETE UNIVERSITY</button> 
            <script>
                function ConfirmDelete()
{
  var x = confirm("Are you sure you want to delete?");
  if (x)
      return true;
  else
    return false;
}
            </script>
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

