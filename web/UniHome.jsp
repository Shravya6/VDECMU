<%-- 
    Document   : UniHome
    Created on : 20 May, 2018, 1:53:56 PM
    Author     : B Shravya
--%>
<%@include file="Uniheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if(sid != null){
            %>
        <img src="Graduates.gif" width="100%"/>
<%  }
        else{
            response.sendRedirect("error.jsp");
        }
        %>  
    </body>
</html>
