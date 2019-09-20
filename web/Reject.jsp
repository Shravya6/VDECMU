<%-- 
    Document   : Reject
    Created on : 12 Jul, 2018, 7:43:19 PM
    Author     : B Shravya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            PreparedStatement ps=null;
    try{
   
    String fid=request.getParameter("fid");
    String status="reject";
    String reason=request.getParameter("reason");
    ps=con.prepareStatement("update file set status='reject', message='"+reason+"' where id='"+fid+"'");
    int k=ps.executeUpdate();
    System.out.println(k);
    if(k!=0)
        {
            response.sendRedirect("ProApprove.jsp?message=rejected material");
        }
    else{
        response.sendRedirect("ProApprove.jsp?message=Failed to reject");
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
