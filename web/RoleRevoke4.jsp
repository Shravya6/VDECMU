<%-- 
    Document   : RoleRevoke4
    Created on : 4 Jul, 2018, 2:18:55 PM
    Author     : B Shravya
--%>
<%@include file="head.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    <center>
        <h1>Revoke</h1>
        <form action="RoleRevoke5.jsp">
        <table border="1">
            <tbody>
                 <%String id=request.getParameter("ID");%>
                 <tr>
                 <td><input type="text" name="id" value="<%=id%>" /></td>
                </tr>
                     <tr>
                    <td>Revoking ID</td>
                    <td><input type="text" name="status" value="<%=sid%>" /></td>
                </tr>
            </tbody>
        </table>
                <button>Revoke</button>
                    
</form>
    </center>
    </body>
</html>
