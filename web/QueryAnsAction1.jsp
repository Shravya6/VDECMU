<%-- 
    Document   : QueryAnsAction1
    Created on : 20 May, 2018, 2:47:08 PM
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
        
            String id=request.getParameter("aid");
            String repwd=request.getParameter("srid");
            String name=request.getParameter("prid");
            String depart=request.getParameter("qid");
            String pwd=request.getParameter("qa");
            
     
        
        PreparedStatement ps=con.prepareStatement("insert into STUQUERYANS values(?,?,?,?,?)");
        
        ps.setString(1,id);
        ps.setString(2,repwd);
        ps.setString(3,name);
        ps.setString(4,depart);
        ps.setString(5,pwd);
        int k=ps.executeUpdate();
        String sqid=request.getParameter("qid"); 
       PreparedStatement ps1=con.prepareStatement("update STUQUERY set STATUS='available' where SQ_ID='"+sqid+"'");
       int k1=ps1.executeUpdate(); 
         if(k!=0 & k1!=0)
        {
          out.println("Added Sucessfully"); 
          %>
          <jsp:forward page="StuQueryAnsView1.jsp"></jsp:forward>
          <%
        }
         else
         {
             out.println("not added");
         }
       
        %>
    </body>
</html>

