<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<%!
		private static String algorithm = "DESede";
        private static Key key = null;
        private static Cipher cipher = null;

        private static String decrypt(byte[] encryptionBytes)throws Exception {
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] recoveredBytes =  cipher.doFinal(encryptionBytes);
            String recovered =  new String(recoveredBytes);
            return recovered;
          }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food Supply Management System</title>

<style>
.bg {
  background: url(pimg1.png);
  background-repeat: no-repeat;
  background-size: cover;  
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>
<br />
<div class="container-fluid">
 <img src="foodmgmt.png" width="100%" height="200">
 <%@ include file="Head1.jsp" %>
<%@ include file="Connect.jsp" %>

<table width="100%" class="table table-bordered">

<%
		File f = new File("D:\\poms");
			String[]  fileNames = f.list();
            //String jspPath = "D:\\poms\\";
            key = KeyGenerator.getInstance(algorithm).generateKey();
    		cipher = Cipher.getInstance(algorithm);
            
    		for(String fname : fileNames)
            {
            %>
            <tr>
            <td>Transaction  : <%=fname %></td>
            
            <%
            String txtFilePath = "D:\\poms\\" + fname;
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));            
            StringBuilder sb = new StringBuilder();
            String line =  reader.readLine();
            
         	while(line!= null)
            {
                sb.append(line + "<br />");
                line =  reader.readLine();
            }         		           
            
            %>
            <td><%=sb.toString() %></td>
             </tr>
            <%
            }
        	%>
</table>
</div>

</body>
</html>