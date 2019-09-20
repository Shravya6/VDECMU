<%-- 
    Document   : updatepass2
    Created on : 20 May, 2018, 10:14:07 AM
    Author     : B Shravya
--%>
<%@include file="Proheader.jsp" %>

<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           
           String name =request.getParameter("olpass");
           String spl =request.getParameter("nupass");
           String repwd=request.getParameter("repwd");
           Statement st1=con.createStatement();
           ResultSet  rs1=st1.executeQuery("select * from PROFESSOR where PROFESSOR_ID='"+sid+"'");
           rs1.next();
           String pwd=rs1.getString(5);
           if(name.equals(pwd)){
                if(spl.equals(repwd)){
        PreparedStatement ps=con.prepareStatement("update PROFESSOR set PASSWORD=?,REPASSWORD=? where PROFESSOR_ID='"+sid+"'");
        ps.setString(1,spl);
        ps.setString(2,spl);
           
          
       int k=ps.executeUpdate();
       
        if(k!=0)
        {
            %>
            <jsp:forward page="UpdateSucc2.jsp"></jsp:forward>
           
       <% }}
                else{%>
                   <h1 align="center">Password Mismatch</h1>
             <%  } 
           }
           else{
                %>
               <h1>You've entered wrong current password</h1>
               <%
           }
        %>
        
      
        
    </body>
</html>

