<%-- 
    Document   : QueryAsk
    Created on : 20 May, 2018, 1:53:56 PM
    Author     : B Shravya
--%>
<%@include file="Stuheader.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Query</title>
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
            <h1>Ask Query </h1>
            <%
        if(sid != null){
            %>
        <form action="QueryAskAction.jsp">
        <table border="0" cellspacing="0" cellpadding="10">
            <tbody>
               
                <tr>
                    <td>SQ ID</td>
                    <td><input type="text" name="sqid" <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select count(SQ_ID) from STUQUERY");
                rs.next();
                int n=rs.getInt(1);
                if(n==0)
                {
                 int s=1; %>
           value="QueryID-<%=s%>" readonly="readonly"<%}
             else{
                 Statement st1=con.createStatement();
                 ResultSet rs1=st1.executeQuery("select max(cast(substr(SQ_ID,9,length(SQ_ID)-8)as unsigned)) from STUQUERY");
                 rs1.next();
                 int m=rs1.getInt(1);
                 int count=m+1;%>  
                               value="QueryID-<%=count%>"  readonly="readonly"/><%}%> </td>
                </tr>
                <tr style="display: none">
                    <td>Student ID</td>
                    <td><input type="text" name="stid" value="<%=sid%>" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td><input type="text" name="depart"
                               <%
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select DEPARTMENT from REGISTRATION where STUDENT_ID='"+sid+"'");rs2.next();

%> value="<%=rs2.getString(1)%>" readonly />
</td>
                </tr>
                <tr>
                    <td>Question :</td>
                    <td><textarea name="query" rows="5" cols="20" placeholder="query" required></textarea></td>
                </tr>
                <tr>
                    <td>Query Tag</td>
                    <td><input type="text" name="qtag" value="" placeholder="query tag" required /></td>
                </tr>
            </tbody>
        </table>
<button>ask query</button> 
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