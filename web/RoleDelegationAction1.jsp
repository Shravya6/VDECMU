<%-- 
    Document   : RoleDelegationAction1
    Created on : 20 May, 2018, 1:53:56 PM
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
    <center>
        <h1>Accept role delegation</h1>
        <form action="RoleDelegationAction.jsp">
            <br><br>  
        <table border="1">
            <tbody>
                 <%String id=request.getParameter("ID");
                 String id1=request.getParameter("sid");%>
                 <tr>
                 <td><input type="text" name="id" value="<%=id%>" readonly="readonly" /></td>
                </tr>
                     <tr>
                    <td>Delegating ID</td>
                    <td><input type="text" name="status" value="<%=sid%>" readonly="readonly" /></td>
                </tr>
            </tbody>
        </table>
                <button>Assign</button>
            
</form>
    </center>
    </body>
</html>
