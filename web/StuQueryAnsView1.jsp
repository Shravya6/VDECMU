<%-- 
    Document   : StuQueryAnsView1
    Created on : 20 May, 2018, 2:47:29 PM
    Author     : B Shravya
--%>
<%@include file="Lecheader.jsp" %>
<%@include file="connect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <center>
          <%
        if(sid != null){
            %>
            <h1>List of queries answered by you</h1>
            <table border="1" cellspacing="50" style="border-color: collapse;width: 100%;">
            <tr>
               
               <th>StuQueryAns ID</th>
               <th>Student ID</th>
               <th>ID</th>
               <th>StuQuery ID</th>
               <th>Question</th>
               <th>Answer</th>
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from STUQUERYANS where ID='"+sid+"'");
            while(rs.next())
            {
                String stuid=rs.getString(2);
                Statement st1=con.createStatement();
                ResultSet rs1=st1.executeQuery("select QUESTION from STUQUERY where STUDENT_ID='"+stuid+"'");
                rs1.next();
            %>
            
            
            <tr>
           <td><%=rs.getString(1)%></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%></td>
           <td><%=rs.getString(4)%></td>
           <td><%=rs1.getString(1)%></td>
           <td><%=rs.getString(5)%></td>
            </tr>
           
            <%
            }
            %>
        </table>
    </center>
        <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %>
    </body>
</html>