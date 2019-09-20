<%-- 
    Document   : AddLecAction
    Created on : 20 May, 2018, 1:53:56 PM
    Author     : B Shravya
--%>
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
        String id=request.getParameter("pid");
        String name=request.getParameter("pname");
         String doj=request.getParameter("doj");
        String loc=request.getParameter("location");
        String pwd=request.getParameter("pwd");
        String repwd=request.getParameter("repwd");
        String sts=request.getParameter("department");
        String id2=request.getParameter("uname");
        String email=request.getParameter("email");
        String num=request.getParameter("num");
        String exp=request.getParameter("exp");
        String gender=request.getParameter("GEN");
      
        if(pwd.equals(repwd))
        {
            String status="pending";
        PreparedStatement ps=con.prepareStatement("insert into LECTURER values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,id );
        ps.setString(2,name);
        ps.setString(3,doj);
        ps.setString(4,loc);
        ps.setString(5,pwd);
        ps.setString(6,repwd);
        ps.setString(7,sts);
        ps.setString(8,id2);
        ps.setString(9,email);
        ps.setString(10,num);
        ps.setString(11,exp);
        ps.setString(12,gender);
        ps.setString(13,status);
         int k=ps.executeUpdate();
         if(k!=0)
        {
          
            %>
            <jsp:forward page="Pending.jsp"></jsp:forward>
            <%
        }
         else
         {
             
             %>
           <jsp:forward page="AddLecturer.jsp"></jsp:forward>
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
