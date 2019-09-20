<%-- 
    Document   : UniProfile1
    Created on : 20 May, 2018, 4:15:43 PM
    Author     : B Shravya
--%>
<%@page import="java.sql.*"%>
<%@include file="Uniheader.jsp" %>
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
    <body><center>
        <h1>Update Profile</h1>
        <%
        if(sid != null){
            %>
        <div class="mvi">
            <form method="POST" action="proupaction.jsp">
         
         
        <table border="0" cellspacing="0" cellpadding="10">
        <tbody>
           <% 
             //String id=request.getParameter("id");
             Statement st=con.createStatement();         
             ResultSet rs=st.executeQuery("select * from UNIVERSITY where UNIVERSITY_ID='"+sid+"'");
             rs.next();
         %>
         
        <tr>
            <td>University ID</td>
            <td><input type="text" name="id" class="me" value="<%=sid%>" readonly="readonly" />
        </tr>
        
        <tr>
                    <td>University Name</td>
                    <td><input type="text" name="uname" value="" placeholder="university name" required /></td>
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
        <button>UPDATE UNIVERSITY DETAILS</button>
        </form>
        </div>
            </form>
            
                 <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %>
        </div>
</center>
    </body>
</html>