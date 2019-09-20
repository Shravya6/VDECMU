<%-- 
    Document   : Addstudent
    Created on : 20 May, 2018, 10:58:56 AM
    Author     : B Shravya
--%>
<%@include file="Stuheader.jsp" %>
<%@include file="connect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
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
            <h1>Add Student</h1>
            <form action="AddStuAction.jsp" method="POST">
                <table border="0">
          <tbody>
              <tr>
                  <td>Student ID</td>
                  <td> <input type="text" name="stuid" 
                  <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select count(STUDENT_ID) from REGISTRATION");
                rs.next();
                int n=rs.getInt(1);
                if(n==0)
                {
                 int s=1; %>
           value="STUID-<%=s%>" readonly="readonly"<%}
             else{
                 Statement st1=con.createStatement();
                 ResultSet rs1=st1.executeQuery("select max(cast(substr(STUDENT_ID,7,length(STUDENT_ID)-6) as unsigned)) from REGISTRATION");
                 rs1.next();
                 int m=rs1.getInt(1);
                 int count=m+1;%>  
                               value="STUID-<%=count%>" title="enter student id" readonly="readonly"/><%}%></td>
              </tr>
              <tr>
                  <td>Student Name</td>
                  <td> <input type="text" name="stuname" value="" placeholder="student name" required/></td>
              </tr>
              <tr>
                  <td>Department</td>
          
                  <td><input type="text" name="depname" value="" placeholder="Department" required/></td>
              </tr>
              <tr>
                  <td>Password</td>
                  <td><input type="Password" name="Pwd" value="" minlength="6" maxlength="10" placeholder="Password"/></td>
              </tr>
              <tr>
                  <td>Re-enter Password</td>
                  <td><input type="Password" name="repwd" value="" required placeholder="reenterPassword"/></td>
                </tr>
                <tr>
                    <td>Date Of Birth</td>
                    <td><input type="date" name="dob" value="" placeholder="date of birth" required /></td>
                </tr>
                <tr>
                    <td>EMail</td>
                        
                    <td><input type="email" name="email" value="" placeholder="email@example.com"  required/></td>
                </tr>
                <tr>
                    <td>Mobile Number</td>
                    <td><input type="text" name="num" value="" maxlength="10" pattern="[789][0-9]{9}" required placeholder="[789][0-9]{9}"/></td>
                </tr>
                <tr>
                    <td>Educational Qualification</td>
                    <td><input type="text" name="Eduq" value="" placeholder="educationqualification" required /></td>
                </tr>
                <tr>
                    <td>Gender</td>        
                    <td><select name="GEN">
                            <option value="disabled">--select--</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
                        </select></td>
                </tr>
          </tbody>
                </table>
        <button>ADD STUDENT</button> 
    </form>
                
                </div>
                </center>
        </body>
</html>
