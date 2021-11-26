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
<form name="f1" action="ManFun.jsp">
 <img src="foodmgmt.png" width="100%" height="200">
 <%@ include file="Head1.jsp" %>
<%@ include file="Connect.jsp" %>

<div class="card text-white bg-info mb-3">
  <div class="card-header" style="text-align:center"><b>Distributor  Information</b></div>
  <div class="card-body">
 
  <div class="row">
   <div class="col-md-4">
   <span style="color:white">Name of Distributor : </span><br />
   <input type="text" name="txtMan"  class="form-control"  required/>
   </div>
   
 
   <div class="col-md-4">
   <span style="color:white">Address : </span><br />
   <input type="text" name="txtAdd"  class="form-control"  required/>
   </div>
   
   <div class="col-md-4">
   <span style="color:white">Location : </span><br />
   <input type="text" name="txtLoc"  class="form-control"  required/>
   </div>
      
   </div>
   
  <div class="row">
   <div class="col-md-4">
   <span style="color:white">Phone : </span><br />
   <input type="text" name="txtPh"  class="form-control"  required/>
   </div>
   
   <div class="col-md-4">
   <span style="color:white">Email : </span><br />
   <input type="email" name="txtEmail"  class="form-control"  required/>
   </div>

   <div class="col-md-4">
   <span style="color:white">Username : </span><br />
   <input type="text" name="txtUser"  class="form-control"  required/>
   </div>

</div>
  <div class="row">
   <div class="col-md-4">
   <span style="color:white">Password : </span><br />
   <input type="text" name="txtPass"  class="form-control"  required/>
   </div>
   
  
   <div class="col-md-4">
   <br />
   <input type="submit" value="Add Details" class="btn btn-primary"/> <input type="reset" value="Reset" class="btn btn-warning"/>

   </div>


</div>

</div>
</div>


</form>
</div>

</body>
</html>