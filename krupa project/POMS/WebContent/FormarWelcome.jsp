<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="container-fluid">
 <img src="foodmgmt.png" width="100%" height="200">
 <%@ include file="Head5.jsp" %>
<%@ include file="Connect.jsp" %>


<div class="card text-white bg-info mb-3">
  <div class="card-header" style="text-align:center"><b>Products  Information</b></div>
  <div class="card-body">

<div class="col-md-12">

<table  width="100%" class="table table-bordered">
<tr style="color:yellow">
<th>Product Name</th><th>Price</th><th>Stock</th>
</tr>

<%
		
		int mno= Integer.parseInt(session.getAttribute("formno").toString());
		String sno="",sname="", stk="";

	PreparedStatement ps = con.prepareStatement("select prdname, price, stock from products where Fid=" + mno);
	
	ResultSet rs = ps.executeQuery();

	while(rs.next())
	{
		sno = rs.getString(1);
		sname = rs.getString(2);
		stk = rs.getString(3);
	%>
	<tr style="color:white" >	
	<td><%=sno %></td>
	<td><%=sname %></td>
	<td><%=stk %></td>
	</tr>	
<%	
}
%>

</table>

   </div>
   </div>
   </div>
   </div>
   
</body>
</html>