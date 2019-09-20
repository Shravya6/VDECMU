<%-- 
    Document   : AnsStuQ
    Created on : 20 May, 2018, 2:31:00 PM
    Author     : B Shravya
--%>
<%@include file="Proheader.jsp" %>
<%@include file="connect.jsp"%>
<%@page import="java.sql.*"%>
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
           
            <div>
               
            <h2> Answer Student Queries</h2> 
        <table border="1" cellspacing="0" width="100%" ">
            
            
            <tr>
                <th>Query ID</th>
                <th>Question</th>
                <th>Query Tag</th>
                <th>Answer</th>
                
             </tr>
            
           <%
            String status="pending";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select DEPARTMENT from PROFESSOR where PROFESSOR_ID='"+sid+"'");
            rs.next();
            String dep1=rs.getString(1);
            Statement st1=con.createStatement();
            ResultSet rs1=st1.executeQuery("select * from STUQUERY where STATUS='"+status+"' AND DEPARTMENT='"+dep1+"'");
            while(rs1.next())
            {
            %>
            <tr>
                <td><%=rs1.getString(1)%></td>
            <td><%=rs1.getString(3)%></td>
            <td><%=rs1.getString(4)%></td>
            <td><a href="QueryAns1.jsp?qid=<%=rs1.getString(1)%>">Answer</a></td> 
            </tr>
           
            <%
            }
            %>
        </table>
        </div>
    </center>
    <%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %>
    </body>
</html>
