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
 <%@ include file="Head3.jsp" %>
<%@ include file="Connect.jsp" %>
<form name="f2" action="ManPrdFun.jsp" method="post">
<div class="card text-white bg-info mb-3">
  <div class="card-header" style="text-align:center"><b>Distributor  Information</b></div>
  <div class="card-body">
 
  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Products : </span><br />
   		<select class="form-control" name="ddlPrd">
   		<%
   		   	PreparedStatement ps = con.prepareStatement("Select * from products");
   	ResultSet rs = ps.executeQuery();
   	String pname="", fname="", addprd="";
   	int pno = 0, fno=0;
   	float pr = 0.0f;
   	while(rs.next())
	 {
		pno=rs.getInt(1);
		pname = rs.getString(2);
		fno = rs.getInt("Fid");
		pr =rs.getFloat("price");
		PreparedStatement ps1 = con.prepareStatement("select * from formar where frno=" + fno);
		ResultSet rs1 = ps1.executeQuery();
		if(rs1.next())
			fname = rs1.getString("fname");
		addprd = pname + "(Formar : " + fname + ", Price : " + pr + ")";  
   	%>
   	 <option value="<%=pno%>"><%=addprd%></option>   	 
   	 <%
	 }
   	
   	 %>
   	 </select>
   	 
   </div>
   <div class="col-md-4"></div> 
   </div>
   
  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Distributor Price : </span><br />
   		<input type="text" name="txtPr"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>

   
    <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4" style="text-align:center">
   		<br />
   		<input type="submit" value="Set Price"  class="btn btn-warning"  required/>
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