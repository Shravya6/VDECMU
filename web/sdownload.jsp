<%-- 
    Document   : sdownload
    Created on : 27 Jun, 2018, 9:59:25 AM
    Author     : B Shravya
--%>
<%@include file="Stuheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Material</title>
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
       <h1>View Materials of particular BRANCH</h1>
        <form action="sdownload2.jsp">
        <table border="0" cellspacing="5">
            <tbody>
                <tr>
                    <td>Branch</td>
                    <td><select name="branch">
                            <option value="disabled">--selected--</option>
  <option value="CSE">CSE</option>
  <option value="IT">IT</option>
  <option value="ECE">ECE</option>
  <option value="EEE">EEE</option>
  <option value="MECH">MECH</option>
</select></td>
                </tr>
            </tbody>
        </table>
            <button>view</button> 
</form>
        <h1>View list of available Material</h1>
        <form action="view3.jsp">
            <button>view all</button>
                
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


