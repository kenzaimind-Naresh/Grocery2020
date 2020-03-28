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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/Icecreams/admin/changepass">Change Password</a>
            <a class="dropdown-item"  href="/Icecreams/admin/logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
   
</ul>
</nav>
<section class="content-header" align="center">
<h1>
<b style="color:Black">Stock Available</b>
</h1>
<br>
</section>
 
                        
<%--<table align="center">
<thead>
<tr>


<g:sortableColumn property="productDesc" title="${message(code: 'icecream.productDesc.label', default: 'Product Description')}" />
<g:sortableColumn property="weight" title="${message(code: 'icecream.weight.label', default: 'Weight')}" />
<g:sortableColumn property="quantity" title="${message(code: 'icecream.quantity.label', default: 'Quantity')}" />


</tr>
</thead>
<tbody>
<g:each in="${icecreamInstanceList}" status="i" var="icecreamInstance">
<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
<td>${fieldValue(bean: icecreamInstance, field: "productDesc")}</td>
<td>${fieldValue(bean: icecreamInstance, field: "weight")}</td>
<td>${fieldValue(bean: icecreamInstance, field: "quantity")}</td>
</tr>
</g:each>
</tbody>
</table>

 --%><div class="container signin">
  <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th style="color:black;font-size: 18px;">Product Description</th>
      <th style="color:black;font-size: 18px;">Weight</th>
      <th style="color:black;font-size: 18px;">Quantity</th>
      <th style="color:black;font-size: 18px;">Edit</th>
      </tr>
      </thead>
       <g:findAll in="${result.stock}" expr="true">
     <tbody>
      <tr>
       <td>${it.productDesc }</td>
      <td><a>${it.weight}</a></td>
      <td>${it.quantity}</td>
      <td><g:link controller="icecream" action="updateIcecream" class="btn btn-info" id="${it.id}">Edit</g:link></td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div>
       <div class="form-group">
       <div class="col-sm-12 text-right">
       <g:if test="${result.offset > 0}">
     <g:link type="button" style="color:white" controller="admin" action="offsetlist" params="${[offset:result.offset-5,mode:'web']}" value="Previous"> <button class="btn-primary">Previous</button></g:link>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
    <g:link type="button" style="color:white" controller="admin" action="offsetlist"   params="${[offset: result.offset+5,mode:'web']}" value="Next" > <button class="btn-primary">Next</button></g:link>
       </g:if>
       </div></div>
       
       </div></div></div>
       </div>

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