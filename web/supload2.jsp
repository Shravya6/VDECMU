<%-- 
    Document   : supload2
    Created on : 27 Jun, 2018, 9:58:56 AM
    Author     : B Shravya
--%>
<%@include file="Stuheader.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
.login-page {
  width: 800px;
  padding: 2% 0 0;
  margin: auto;
}
           form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
form input,form select {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
form button:hover,form button:active,form button:focus {
  background: #43A047;
}
        </style> 
</head>
<body>
    <form enctype="multipart/form-data" action="supload3.jsp" method="post">
        
        <center>
            <h1>UPLOAD THE FILE</h1>
            <table border="0">
                
                
                <tr>
                    <td><b>Choose the file To Upload:</b></td>
                    <td><INPUT NAME="file" TYPE="file">      </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"> </td>
                </tr>
                
            </table>
            <button>Send File</button>
        </center> 
    </form>
</body>
</html>

