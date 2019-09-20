<%-- 
    Document   : Proprofile
    Created on : 20 May, 2018, 1:53:56 PM
    Author     : B Shravya
--%>
<%@include file="Proheader.jsp" %>
<%@include file="connect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <style>
            form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
            form input{
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
        <h1>Update Profile</h1>
        <%
        if(sid != null){
            %>
        <form method="POST" action="proproileupdate.jsp">
         
         <% 
             //String id=request.getParameter("id");
             Statement st=con.createStatement();         
             ResultSet rs=st.executeQuery("select * from PROFESSOR where PROFESSOR_ID='"+sid+"'");
             rs.next();
         %>
        
        <table>
        
        <tr>
            <td>Professor ID</td>
            <td><input type="text" name="id" value="<%=sid%>" readonly="readonly" />
        </tr>
        <tr>
            <td>Professor Name</td>
            <td><input type="text" name="name" value="" placeholder="professor name" required/></td>
        </tr>
            
        <tr>
            <td>Date of joining</td>
            <td><input type="date" name="doj" value="" required placeholder="date of joining" />
        </tr>
        <tr>
            <td>Location:</td>
            <td><input type="text" name="location" value="" placeholder="location" required />
        </tr>
        <tr>
            <td>Department:</td>
            <td><input type="text" name="Dept" value="" required placeholder="department" />
        </tr>
        </table><button>Update professor details</button>
        
    <input type="reset" value="Reset" /> 
    </form>
            <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %>
    </center>
    </body>
</html>
