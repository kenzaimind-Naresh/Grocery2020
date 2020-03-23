<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
		
  		

<title>MedicalCare</title>

 <!-- Bootstrap core CSS-->
    <link href="/MedicalCare/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/MedicalCare/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/MedicalCare/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/MedicalCare/website/css/sb-admin.css" rel="stylesheet">

<style>
.site-footer{
clear: both;
height: 40px;
width: 100%;
text-align: center;
margin: 0px 0px 0px 0px;
font-family: arial, helvetica;
color:white;
font-size: 15px;
 background-color:black

}

</style>



<script>

function medical(){


var total=document.getElementById("total").value;

total=((totalAvailable)-(sellQuantity));
document.getElementById('total').value = total;
}
</script>

</head>
<body id="page-top">






<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" >

<a class="navbar-brand" href="/MedicalCare/admin/dashboard" >MedicalCare</a>

<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item">
       <a  class="nav-link"  href="/MedicalCare/admin/dashboard">
       <i class="fa fa-home fa-fw"></i></a>
       </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-bell fa-fw"></i>
       
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-envelope fa-fw"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
   
</ul>
</nav>
<!-- Content Header (Page header) -->
<section class="content-header" align="center">
<h1>
<b style="color:Black">Customer Details</b>
</h1>
</section><br>
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">

 <a href="/MedicalCare/Customerdetails/viewlist"  style="font-size: 20px;color:skyblue">Customer List</a>

 </div>
 </div>
 </div>
 <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             
<g:form class="form-horizontal" role="form" controller="Customerdetails" Id="myform" name="myform" action="saveCustomer"  nonvalidate="nonvalidate">
<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="customerName">Customer Name :</label>
<input type="text" id="customerName" name="customerName" class="form-control" required />
 <span id="customerNameinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="medicineName">Medicine Name :</label>
<input type="text" id="medicineName" name="medicineName" class="form-control" required />
 <span id="medicneNameinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="sellQuantity">Sell Quantity :</label>
<input type="text" id="sellQuantity" name="sellQuantity" class="form-control" onchange="medical()"  />
 <span id="sellQuantityinfo" style="color:red"></span>
</div>
</div>

<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="priceType">Price Type :</label>
<select type="text" id="priceType" name="priceType" class="form-control" required>
<option value="">-- Select --</option>
<option>Wholesale Price</option>
<option>Retail Price</option>
<option>Other</option>
 </select>
</div>




<div class="col-md-4 col-sm-4">
<label for="cPrice">Price :</label>
<input type="text" id="cPrice" name="cPrice" class="form-control" />
 <span id="Priceinfo" style="color:red"></span>
</div>

<div class="col-md-4 col-sm-4">
<label for="percentage">Percentage :</label>
<input type="text" id="percentage" name="percentage" class="form-control" />
 <span id="percentage" style="color:red"></span>
</div></div>

<div class="form-group">




<div class="col-md-4 col-sm-4">
<label for="totalAvailable">Available :</label>
<input type="text" id="totalAvailable" name="totalAvailable" class="form-control" onchange="medical()" />
 <span id="totalAvailableinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="total">Total :</label>
<input type="text" id="total" name="total" class="form-control" onchange="medical()" />
 <span id="totalinfo" style="color:red"></span>
</div>

<div class="col-md-4 col-sm-4">
<label for="createdBy">CreatedBy :</label>
<input type="text" id="createdBy" name="createdBy" class="form-control" />
 <span id="createdByinfo" style="color:red"></span>
</div>

<div class="col-md-4 col-sm-4">
<label for="createdBy">CreatedBy :</label>
<input type="text" id="createdBy" name="createdBy" class="form-control" />
 <span id="createdByinfo" style="color:red"></span>
</div>


</div>

 

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="myaction" name="myaction" value="save">
 <input type="hidden" id="mode" name="mode" value="web">
 <div class="form-group">
                        <div class="col-sm-12 text-center">
                            <button type="submit"  class="btn btn-primary" id="myform" name="myform" onclick="return validateForm()">
                                Submit</button>
                               
                        </div>
                    </div>
</g:form>
</div>
</div>
</div>
<br>
<div class="footer site-footer">
<div align="center">
<p>Copyright © 2018. MedicalCare. All right reserved.</p>
</div>
</div>
<!-- Bootstrap core JavaScript-->
    <script src="/MedicalCare/website/vendor/jquery/jquery.min.js"></script>
    <script src="/MedicalCare/website/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/MedicalCare/website/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="/MedicalCare/website/vendor/chart.js/Chart.min.js"></script>
    <script src="/MedicalCare/website/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/MedicalCare/website/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/MedicalCare/website/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/MedicalCare/website/js/demo/datatables-demo.js"></script>
    <script src="/MedicalCare/website/js/demo/chart-area-demo.js"></script>
    
    
		</body>
			</html>