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
<br />
<div class="container-fluid">
 <img src="foodmgmt.png" width="100%" height="200">
 <%@ include file="Head1.jsp" %>
<%@ include file="Connect.jsp" %>

<form name="f2" action="FormerFun.jsp" method="post">
<div class="card text-white bg-info mb-3">
  <div class="card-header" style="text-align:center"><b>Formar Information</b></div>
  <div class="card-body">
 
  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Formar Name : </span><br />
   		<input type="text" name="txtFor"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>
   
  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Address : </span><br />
   		<textarea name="txtAdd" class="form-control"  required></textarea>   		
   </div>
   <div class="col-md-4"></div> 
   </div>

  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Location : </span><br />
   		<input type="text" name="txtLoc"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>
   
  <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Phone : </span><br />
   		<input type="text" name="txtPh"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>

   
     <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Email : </span><br />
   		<input type="text" name="txtEmail"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>
   
    <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Username : </span><br />
   		<input type="text" name="txtUser"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>
   
    <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4">
   		<span style="color:white">Password: </span><br />
   		<input type="text" name="txtPass"  class="form-control"  required/>
   </div>
   <div class="col-md-4"></div> 
   </div>

   
    <div class="row">
  	<div class="col-md-4"></div>
   	<div class="col-md-4" style="text-align:center">
   		<br />
   		<input type="submit" value="Add Former"  class="btn btn-warning"  required/>
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