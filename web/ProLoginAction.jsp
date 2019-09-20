<%-- 
    Document   : ProLoginAction
    Created on : 20 May, 2018, 12:29:01 PM
    Author     : B Shravya
--%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        String id=request.getParameter("uid");
        session.setAttribute("id1",id);
         String pw=request.getParameter("pwd");
         Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select PASSWORD,STATUS from PROFESSOR where PROFESSOR_ID='"+id+"'");
        if(rs.next())
        {
            
            String pwd=rs.getString(1);
            String stad=rs.getString(2);
            if(pwd.equals(pw))
            {
                if(stad.equals("Accept"))
                {%>
                <jsp:forward page="ProHome.jsp"></jsp:forward>
            <%
                    
                }
                else if(stad.equals("Reject"))
                {
                    %>
                    <jsp:forward page="Rejected.jsp"></jsp:forward>
                    <%
                }
                else if(stad.equals("delegated"))
                {
                     %>
           <jsp:forward page="delegated.jsp"></jsp:forward>
          <%
                    
                }
                else{
                    %>
           <jsp:forward page="Pending.jsp"></jsp:forward>
          <%
                    
                }
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




