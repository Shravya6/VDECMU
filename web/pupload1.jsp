<%-- 
    Document   : pupload1
    Created on : 19 Jun, 2018, 4:41:09 PM
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
            String status="accept";
           String userid=request.getParameter("userid");
            
           
            
            Statement st=con.createStatement();
            int k=st.executeUpdate("insert into file(matid,name,mdesc,branch,status,userid) values('"+matid+"','"+name+"','"+mdesc+"','"+branch+"','"+status+"','"+userid+"') ");
            
            if(k!=0)
        {
           
          response.sendRedirect("pupload2.jsp");
        }
         else
         {
             response.sendRedirect("pupload.jsp");
         }
            %>
    </body>
</html>
