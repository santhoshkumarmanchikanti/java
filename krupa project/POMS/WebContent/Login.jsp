<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food Supply Management System</title>

<style>
.bg {
  background: url(food1.jpg);
  background-repeat: no-repeat;
  background-size: cover;  
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body class="bg">
<br />
<div class="container-fluid">
 <img src="foodmgmt.png" width="100%" height="200">
 <%@ include file="Head2.jsp" %>
<%@ include file="Connect.jsp" %>
<form name="f1" action="LoginUserFun.jsp" method="post">
  <br /><br />
  <div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
  	<div class="card text-white mb-3" style="background-color:#808000">
  		<div class="card-header">Food Supply Management System : Login Here</div>
  		<div class="card-body">
   			<span style="color:white">Username: </span><br />
   			<input type="text" name="txtUser"  class="form-control"  required/>
			<br />
   			<span style="color:white">Password : </span><br />
   			<input type="password" name="txtPass"  class="form-control"  required/>
			<br />
   			<div class="col-md-12" style="text-align:center">
   			<input type="submit"  value="Submit" class="btn  btn-primary"/>  &nbsp;&nbsp;&nbsp;
   			<input type="Reset"  value="Clear All" class="btn btn-warning" />  &nbsp;&nbsp;&nbsp;
   			</div>
   		</div>   			 
</div>
</div>
</div>
  
</form>
</div>
</body>
</html>