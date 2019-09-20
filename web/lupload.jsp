<%-- 
    Document   : lupload
    Created on : 27 Jun, 2018, 10:54:06 AM
    Author     : B Shravya
--%>
<%@page import="java.sql.*" %>
<%@include file="connect.jsp" %>
<%@include file="Lecheader.jsp" %>
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
    <center>
        <h1>Material upload </h1>
        <form method="post" action="lupload1.jsp" >
            <table border="0">
                <tr>
                    <td>MATERIAL ID</td>
                    <td><input type="text" name="mid" value="" placeholder="material id" required></td>
                </tr>
                <tr>
                    <td>MATERIAL NAME</td>
                    <td><input type="text" name="name" value="" placeholder="material name" required /></td>
                </tr>
                <tr>
                    <td>MATERIAL DESC</td>
                    <td><input type="text" name="mdesc" value="" placeholder="material description" required /></td>
                </tr>
                <tr>
                    <td>BRANCH</td>
                    <%
            Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select DEPARTMENT from LECTURER where LECTURER_ID='"+sid+"'");
     rs.next();
     String dep=rs.getString(1);
            %>
                    <td><input type="text" name="branch" value="<%=dep%>" readonly /></td>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td><input type="text" name="userid" value="<%=sid%>" readonly></td>
                </tr>
            </table>
            <button>upload</button>
        </form>
    </center>
     <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %> 
    </body>
</html>

