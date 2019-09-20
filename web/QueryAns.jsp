<%-- 
    Document   : QueryAns
    Created on : 20 May, 2018, 2:46:48 PM
    Author     : B Shravya
--%>
<%@include file="Lecheader.jsp" %>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answer</title>
        <style>
            form textarea,form label {
     font-family: "Roboto", sans-serif;
     outline: 0;
     background: #FFFFFF;
     width: 50%;
     border: 0;
     margin: 15px;
    padding: 15px;
    font-size: 14px;
  resize: none;
}
            form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  cursor: pointer;
  position: relative;
  left: 680px;
}
form button:hover,form button:active,form button:focus {
  background: #43A047;
}

        </style>
    </head>
    <body>
        <div>
       <h1>Answer</h1>
        <form action="QueryAnsAction1.jsp">
            <div style="display: none">  
                 <input type="text" name="aid" <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select count(SQA_ID) from STUQUERYANS");
                rs.next();
                int n=rs.getInt(1);
                if(n==0)
                {
                 int s=1; %>
           value="QueryAnsID-<%=s%>" readonly="readonly"<%}
             else{
                 Statement st1=con.createStatement();
                 ResultSet rs1=st1.executeQuery("select max(cast(substr(SQA_ID,12,length(SQA_ID)-11)as unsigned)) from STUQUERYANS");
                 rs1.next();
                 int m=rs1.getInt(1);
                 int count=m+1;%>  
                               value="QueryAnsID-<%=count%>"  readonly="readonly"/><%}%> />
                </tr>
                <%String id=request.getParameter("qid");
                
                %>
                <%
                Statement st3=con.createStatement();
                 ResultSet rs3=st3.executeQuery("select STUDENT_ID from STUQUERY where SQ_ID='"+id+"'");
                 rs3.next();
                 String t=rs3.getString(1);
                 
                 %><input type="text" name="srid" value="<%=t%>" />
                   <input type="text" name="prid" value="<%=sid%>" />
                   <input type="text" name="qid" value="<%=id%>" /></td>
        </div>
                  <lable><textarea name="qa" rows="4" cols="20"></textarea></lable>
                <br>
                <button>Answer</button>
        </form>
        </div>
    </body>
</html>

