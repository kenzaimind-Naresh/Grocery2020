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
		
  		

<title>Amul Icecreams</title>

 <!-- Bootstrap core CSS-->
    <link href="/Icecreams/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/Icecreams/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/Icecreams/website/css/sb-admin.css" rel="stylesheet">

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

<style>
.pagination {

clear:both;
position:relative;
padding-left: 820px;
font-size:11px;

}

.pagination span, .pagination a {

display:block;
float:left;
margin: 2px 2px 2px 0;
padding:6px 9px 5px 9px;
text-decoration:none;
color: #ddd;
background: #222;

}

.pagination .current{

padding:6px 9px 5px 9px;
font-weight: bold;
background: #0950E8;

}

.center {
    text-align: center;
}
</style>

</head>

<body id="page-top">
<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" >

<a class="navbar-brand" href="/Icecreams/admin/dashboard" >Amul Icecreams</a>


<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item">
       <a  class="nav-link"  href="/Icecreams/admin/dashboard">
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
         <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span>${result.uname.adminName } <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/Icecreams/admin/changepass">Change Password</a>
            <a class="dropdown-item"  href="/Icecreams/admin/logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
   
</ul>
</nav>

<!-- Content Header (Page header) -->
<section class="content-header" align="center">
<h1>
<b style="color:Black">Update Icecream</b>
</h1>
</section><br>
   <div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">


 </div>
 </div>
 </div>
   <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             
<g:form class="form-horizontal" role="form" controller="Icecream" Id="myform" name="myform" action="saveupdate"  nonvalidate="nonvalidate">
<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="materialId">Material ID :</label>
<input type="text" id="materialId" name="materialId" class="form-control" readonly value="${result.icecream.materialId }"/>
 <span id="materialIdinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="productDesc">Product Description :</label>
<input type="text" id="productDesc" name="productDesc" class="form-control" readonly value="${result.icecream.productDesc }"/>
<span id="productDescinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="icecreamType">Icecream Type :</label> 
<input type="text" id="icecreamType" name="icecreamType" class="form-control" readonly value="${result.icecream.icecreamType }"/>
 <span id="icecreamTypeinfo" style="color:red"></span>
</div>
<br><br>

<div class="col-md-4 col-sm-4">
<label for="weight">Weight :</label>
<input type="text" id="weight" name="weight" class="form-control" readonly value="${result.icecream.weight }"/>
 <span id="weightinfo" style="color:red"></span>
</div>


<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="quantity">Quantity :</label>
<input type="text" id="quantity" name="quantity" class="form-control" required value="${result.icecream.quantity }"/>
 <span id="quantityinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="retailPrice">Retail Price :</label>
<input type="text" id="retailPrice" name="retailPrice"  class="form-control" required value="${result.icecream.retailPrice }"/>
 <span id="retailPriceinfo" style="color:red"></span>
</div>
</div>


<div class="col-md-4 col-sm-4">
<label for="wholesalePrice">Wholesale Price :</label>
<input type="text" id="wholesalePrice" name="wholesalePrice" class="form-control" required value="${result.icecream.wholesalePrice }"/>
 <span id="wholesalePriceinfo" style="color:red"></span>
 </div>
 
</div>

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="myaction" name="myaction" value="save">
 <input type="hidden" id="mode" name="mode" value="web">
 
 
 
<div class="form-group">

	<div class="col-sm-12 text-center"><br>
		<button type="submit"  class="btn btn-primary" id="myform" name="myform" onclick="return validateForm()">Update</button>
	</div>
</div>
</g:form>
</div>
</div>
</div>
   <br>



<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:black;
   color: white;
   text-align: center;
}

.footer a {
  color: white;
}

.footer a:hover {
  color: white;
}


</style>


<div class="footer">
<div align="center">
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>
 

<!-- Bootstrap core JavaScript-->
    <script src="/Icecreams/website/vendor/jquery/jquery.min.js"></script>
    <script src="/Icecreams/website/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/Icecreams/website/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="/Icecreams/website/vendor/chart.js/Chart.min.js"></script>
    <script src="/Icecreams/website/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/Icecreams/website/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/Icecreams/website/js/demo/datatables-demo.js"></script>
    <script src="/Icecreams/website/js/demo/chart-area-demo.js"></script>
    
    
		</body>
			</html>