<%-- 
    Document   : lupload1
    Created on : 27 Jun, 2018, 10:54:34 AM
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
            
            
            String matid=request.getParameter("mid");
            String name=request.getParameter("name");
            String mdesc=request.getParameter("mdesc");
            String branch=request.getParameter("branch");
            String status="pending";
            String userid=request.getParameter("userid");
            
           
            
            Statement st=con.createStatement();
            int k=st.executeUpdate("insert into file(matid,name,mdesc,branch,status,userid) values('"+matid+"','"+name+"','"+mdesc+"','"+branch+"','"+status+"','"+userid+"') ");
            
            if(k!=0)
        {
           
          response.sendRedirect("lupload2.jsp");
        }
         else
         {
             response.sendRedirect("lupload.jsp");
         }
            %>
    </body>
</html>