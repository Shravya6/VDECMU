<%-- 
    Document   : AddUniAction
    Created on : 20 May, 2018, 3:27:27 PM
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
        String id=request.getParameter("uid");
        String name=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        String repwd=request.getParameter("repwd");
        String doj=request.getParameter("doj");
        String loc=request.getParameter("location");
        
      
        if(pwd.equals(repwd))
        {
            String status="pending";
        PreparedStatement ps=con.prepareStatement("insert into UNIVERSITY values(?,?,?,?,?,?,?)");
        ps.setString(1,id );
        ps.setString(2,name);
        ps.setString(3,pwd);
        ps.setString(4,repwd);
        ps.setString(5,doj);
        ps.setString(6,loc);
        ps.setString(7,status);
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
           <jsp:forward page="AddUniversity.jsp"></jsp:forward>
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