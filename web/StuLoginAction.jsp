<%-- 
    Document   : StuLoginAction
    Created on : 20 May, 2018, 12:41:42 PM
    Author     : B Shravya
--%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login Action Page</title>
    </head>
    <body>
        
        <%
        String id=request.getParameter("uid");
        session.setAttribute("id1",id);
         String pw=request.getParameter("pwd");
         Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select PASSWORD from REGISTRATION where STUDENT_ID='"+id+"'");
        if(rs.next())
        {
            
            String pwd=rs.getString(1);
            
            if(pwd.equals(pw))
            {
                %>
                <jsp:forward page="StuHome.jsp"></jsp:forward>
            <%
                    
                }
                
                
            else{
                %>
           <jsp:forward page="PassIncorrect.jsp"></jsp:forward>
          <%
                
            }
        }
        
        else{
                %>
           <jsp:forward page="error1.jsp"></jsp:forward>
          <%
                
            }
        %>
    </body>
</html>
