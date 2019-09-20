<%-- 
    Document   : feedbackask
    Created on : 20 May, 2018, 4:15:43 PM
    Author     : B Shravya
--%>
<%@include file="Stuheader.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
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
        <h1>Feedback</h1>
         <%
        if(sid != null){
            %>
        <form action="feedbackaskAction.jsp">
            <table border="0"><tbody>
                <tr>   <td>Feedback ID</td> <td><input type="text" name="fid" <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select count(FID) from FEEDBACK");
                rs.next();
                int n=rs.getInt(1);
                if(n==0)
                {
                 int s=1; %>
           value="FEEDID-<%=s%>" readonly="readonly"<%}
             else{
                 Statement st1=con.createStatement();
                 ResultSet rs1=st1.executeQuery("select max(cast(substr(FID,8,length(FID)-7)as unsigned)) from FEEDBACK");
                 rs1.next();
                 int m=rs1.getInt(1);
                 int count=m+1;%>  
                               value="FEEDID-<%=count%>"readonly="readonly"/><%}%></td></tr>
                    
                        
                <tr>  <td>Feedback:</td> <td><textarea name="fed" rows="8" cols="30" placeholder="feedback" style="margin:20px" required></textarea></td></tr>
                    
                    
                <tr><td>Material Name</td>  <td><select name="name">
                            <option value="disabled">--select--</option>
                            <%
            
            Statement st1=con.createStatement();
            ResultSet rs1=st1.executeQuery("select * from file where status='accept'");
            while(rs1.next())
            {
            %>
            <option value="<%=rs1.getString(3)%>"><%=rs1.getString(3)%></option>
  <%
            }
            %>
</select></td></tr>
                <tr><td>Student ID</td>    <td>  <input type="text" name="sid" value="<%=sid%>" /></td></tr>
                </tbody> </table>
                <button>Submit</button>
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
