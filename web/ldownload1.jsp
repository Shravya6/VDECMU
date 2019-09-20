<%-- 
    Document   : ldownload1
    Created on : 27 Jun, 2018, 10:55:24 AM
    Author     : B Shravya
--%>
<%@include file="Lecheader.jsp" %>
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
    Statement st = null;
	ResultSet rs=null;
	try {
                String id=request.getParameter("id");
		st=con.createStatement();
		rs=st.executeQuery("select * from file where id='"+id+"'");
		while(rs.next()){
		String fname=rs.getString(3); 
		System.out.println(fname);
                String filepath = "C:/Users/B Shravya/Documents/NetBeansProjects/virtual/web/materials/"; 
                response.setContentType("APPLICATION/OCTET-STREAM"); 
                response.setHeader("Content-Disposition","attachment; filename=\"" + fname + "\""); 
                java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + fname);
                int i; 
                while ((i=fileInputStream.read()) != -1) 
                {
                    out.write(i); 
                } 
                fileInputStream.close(); 
		}
	}
	catch (Exception ex) 
	{
		System.out.println(ex);
                response.sendRedirect("ldownload.jsp?msggg=failed");
        }
%>
    </body>
</html>

