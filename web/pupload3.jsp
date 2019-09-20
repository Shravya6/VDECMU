<%-- 
    Document   : pupload3
    Created on : 19 Jun, 2018, 4:52:25 PM
    Author     : B Shravya
--%>
<%@ page import="java.io.*,java.sql.*" %>
<%@include file="connect.jsp" %>
<%@include file="Proheader.jsp" %>
<%

String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while (totalBytesRead < formDataLength) {
        byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
        totalBytesRead += byteRead; 
    }
    String file = new String(dataBytes);
    String saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
    
    FileOutputStream fileOut = new FileOutputStream("C:/Users/B Shravya/Documents/NetBeansProjects/virtual/web/materials/"+saveFile);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
    
    
%>
<br>
    <table border="2">
        <tr>
            <td><b>You have successfully upload the file by the name of:</b><% out.println(saveFile);%></td>
        </tr>
    </table>
<%
          
    
    
    PreparedStatement ps = null;
    FileInputStream fis;
    try {
        
        
        
        ps = con.prepareStatement("update file set file=? where name=?");
        ps.setString(1,saveFile);
	
        ps.setString(2,saveFile);
	int i=	ps.executeUpdate();
							if(i!=0){
       
        
            System.out.println("Uploaded successfully !");
        }
        else{
            System.out.println("unsucessfull to upload file.");
        }
    }
    catch(Exception e){
        e.printStackTrace();
    }
}
%>
