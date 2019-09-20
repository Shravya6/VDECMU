<%-- 
    Document   : MatAccept
    Created on : 27 Jun, 2018, 10:17:15 AM
    Author     : B Shravya
--%>
<%@page import="java.sql.PreparedStatement"%>
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
    try{
   
    String id=request.getParameter("id");
    Statement st=con.createStatement();
    int k=st.executeUpdate("update file set status='accept' where id='"+id+"'");
    
    if(k!=0)
        {
            response.sendRedirect("ProApprove.jsp?message=Success");
        }
    else{
        response.sendRedirect("ProApprove.jsp?message=Fail");
    }
      
        
    }
    catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("ProApprove.jsp?msggg=failed");
                }
    %>
        </body>
</html>