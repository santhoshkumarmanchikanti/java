<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>

<%
	Connection con = null;
 	try {
	  	Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poms","root","ROOT");
      	String sql="";
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>