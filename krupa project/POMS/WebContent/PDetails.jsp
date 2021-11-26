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
 <%@ include file="Head4.jsp" %>
<%@ include file="Connect.jsp" %>

<%
String  prdno = request.getParameter("pid");
PreparedStatement ps = con.prepareStatement("Select * from products where pno=" + prdno);
	ResultSet rs = ps.executeQuery();
	String pname="", price="",stk="", manf="", manprice="";
	int pno = 0;
	if(rs.next())
 	{
	pno=rs.getInt(1);
	pname = rs.getString(2);
	price = rs.getString(3);
	stk = rs.getString(4);
	manf = rs.getString(5);
	manprice = rs.getString(7);
 	}
%>

<form name="f2" action="ShopFun.jsp" method="post">

<input type="hidden" value='<%=pname %>' name="prdName" />
<input type="hidden" value='<%=manprice %>' name="prdPrice" />
<input type="hidden" value='<%=pno %>' name="prdNo" />


<div class="card text-white bg-info mb-3">
  <div class="card-header" style="text-align:center"><b>Product  Information</b></div>
  <div class="card-body">
 
  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:green" class="form-control">Name of Product : <%=pname %></span><br />   		
   </div>
   <div class="col-md-4"></div> 
   </div>
   
  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:green" class="form-control">Product Price :<%=manprice %> </span><br />   		
   </div>
   <div class="col-md-4"></div> 
   </div>

  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">No of Items to Buy(<%=stk %> available) </span><br />
   		<input type="text" name="txtSt"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>
   
    <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Manufacturer : </span><br />
   		<select class="form-control" name="ddlMan">
   	<%
   	PreparedStatement ps1 = con.prepareStatement("Select * from manufact where mno=" + manf);
   	ResultSet rs1 = ps1.executeQuery();
   	String pname1="";   	
   	if(rs1.next())
	 {
		//pno=rs1.getInt(1);
		pname1 = rs1.getString(2);
   	%>
   	 <option value="<%=pname1%>"><%=pname1%></option>      	 	
   	 <%
	 }
   	
   	 %>
   </select>
   </div>
   <div class="col-md-4"></div> 
   </div>
   
   
    <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4" style="text-align:center">
   		<br />
   		<input type="submit" value="Add Product"  class="btn btn-warning"  required/>
   		<input type="reset" value="Reset"  class="btn btn-dark"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>

   </div>
   </div>
   

</form>
</div>
</body>
</html>