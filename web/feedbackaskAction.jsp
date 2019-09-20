<%-- 
    Document   : feedbackaskAction
    Created on : 20 May, 2018, 4:15:43 PM
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
        
            String id=request.getParameter("fid");
            String repwd=request.getParameter("fed");
            String name=request.getParameter("name");
            String sid=request.getParameter("sid");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select DEPARTMENT from REGISTRATION where STUDENT_ID='"+sid+"'");
     rs.next();
     String dep=rs.getString(1);
        
        PreparedStatement ps=con.prepareStatement("insert into FEEDBACK values(?,?,?,?,?)");
        
        ps.setString(1,id);
        ps.setString(2,repwd);
        ps.setString(3,name);
        ps.setString(4,sid);
        ps.setString(5,dep);
        
        int k=ps.executeUpdate();
         if(k!=0)
        {
            
          response.sendRedirect("Thankyou.jsp");
        }
         else
         {
             out.println("not added");
         }
        
       
        
        %>
    </body>
</html>

