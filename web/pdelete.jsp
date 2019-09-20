<%-- 
    Document   : pdelete
    Created on : 19 Jun, 2018, 9:55:27 PM
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
String id=request.getParameter("id");


try
{
	
	
	Statement st1 = con.createStatement();
	
	String sss1 = "delete from file where id='"+id+"'";

	System.out.println(sss1);
	int i=st1.executeUpdate(sss1);
	if(i!=0)
	{
	
		
		response.sendRedirect("pdownload.jsp?msg='success'");
	}

	else
			{
     	response.sendRedirect("pdownload.jsp?message=fail");
	}



}
catch(Exception e1)
{
out.println(e1);
}

%>
    </body>
</html>
