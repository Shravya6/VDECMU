<%-- 
    Document   : SQueriesAsked
    Created on : 20 May, 2018, 1:33:09 PM
    Author     : B Shravya
--%>
<%@include file="connect.jsp" %>
<%@include file="Stuheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Student Queries and Answers</h1>
            <%
        if(sid != null){
            %>
            <div>
        <table border="1" cellspacing="0" width="100%" ">
               <thead>
               <th>Question</th>
               
               <th>Answer</th>
               
               </thead>
               <%
            String status="available";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from STUQUERY where STATUS='"+status+"'");
            while(rs.next())
            {
            %>
            <tr>
            <td align="center"><%=rs.getString(3)%></td>
            
             <td><a href="SQueriesAnsView.jsp?pid=<%=rs.getString(1)%>">View Answer</a></td>  
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