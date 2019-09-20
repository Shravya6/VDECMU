<%-- 
    Document   : FeedbackView
    Created on : 20 May, 2018, 10:29:10 PM
    Author     : B Shravya
--%>
<%@include file="Proheader.jsp" %>
<%@include file="connect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
        if(sid != null){
            %>
        <center>
            <table border="1" cellspacing="50" style="border-color: collapse;width: 100%;">
            <tr>
               
                <th>Feedback ID</th>
                <th>Feedback</th>
                <th>Name</th>
                <th>Student ID</th>
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from FEEDBACK");
            Statement st1=con.createStatement();
            ResultSet rs1=st1.executeQuery("select DEPARTMENT from PROFESSOR where PROFESSOR_ID='"+sid+"'");
            rs1.next();
            String dep1=rs1.getString(1);
            while(rs.next())
            {
                
            String dep=rs.getString(5);
            
            if(dep.equals(dep1)){
            %>
            
            
            <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            </tr>
           
            <%
            }
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