<%-- 
    Document   : RoleDel2
    Created on : 4 Jul, 2018, 9:29:39 PM
    Author     : B Shravya
--%>
<%@include file="Lecheader.jsp" %>
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
    <center>
        <h1>Accept role delegation</h1>
        <form action="RoleDel3.jsp">
            <br><br>  
        <table border="0">
            <tbody>
                <tr>
                    <td>Delegation ID</td>
                <%String id=request.getParameter("ID");%>
                 <td><input type="text" name="id" value="<%=id%>" readonly="readonly"/></td>
                </tr>
                     <tr>
                    <td>To ID</td>
                    <td><input type="text" name="status" value="<%=sid%>" readonly="readonly" /></td>
                </tr>
            </tbody>
        </table>
                <button>Accept</button>
            
</form>
    </center>
    </body>
</html>
