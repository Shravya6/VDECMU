<%-- 
    Document   : AddStuAction
    Created on : 20 May, 2018, 10:59:27 AM
    Author     : B Shravya
--%>
<%@page import="java.io.*"%>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration Action Page</title>
    </head>
    <body>
         
        <%
        String id=request.getParameter("stuid");
        String name=request.getParameter("stuname");
        String depart=request.getParameter("depname");
        String pwd=request.getParameter("Pwd");
        String repwd=request.getParameter("repwd");
        String dob=request.getParameter("dob");
        String email=request.getParameter("email");
        String num=request.getParameter("num");
        String qualif=request.getParameter("Eduq");
        String gender=request.getParameter("GEN");
        
        if(pwd.equals(repwd))
        {
          
        PreparedStatement ps=con.prepareStatement("insert into REGISTRATION values(?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,id );
        ps.setString(2,name);
        ps.setString(3,depart);
        ps.setString(4,pwd);
        ps.setString(5,repwd);
        ps.setString(6,dob);
        ps.setString(7,email);
        ps.setString(8,num);
        ps.setString(9,qualif);
        ps.setString(10,gender);
        
       
        int k=ps.executeUpdate();
        if(k!=0)
        {
          
          %>
           <jsp:forward page="error.jsp"></jsp:forward>
          <%
        }
         else
         {
             
             %>
           <jsp:forward page="Addstudent.jsp"></jsp:forward>
          <%
         }
        }
         
        else
        {%>
            
            
           <jsp:forward page="Reg1.jsp"></jsp:forward>
          <%
        }
        
        %>
    </body>
</html>
