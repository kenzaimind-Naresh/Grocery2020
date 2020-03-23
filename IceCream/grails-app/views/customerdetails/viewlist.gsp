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
		
  		

<title>We Fix</title>

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
</head>
<body id="page-top">





<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" >

<a class="navbar-brand" href="/MedicalCare/user/userdashboard1" >MedicalCare</a>


<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item">
       <a  class="nav-link"  href="/MedicalCare/user/userdashboard1">
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
            
            <a class="dropdown-item" href="/MedicalCare/admin/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
   
</ul>
</nav>
<section class="content-header" align="center">
<h1>
<b style="color:Black">Customer Details</b>
</h1>
<br>
</section>

<table align="center">
<thead>
<tr>

<g:sortableColumn property="customerName" title="${message(code: 'customertdetails.customerName.label', default: 'Customer Name')}" />
<g:sortableColumn property="medicineName" title="${message(code: 'customertdetails.medicineName.label', default: 'Medicine Name')}" />
<g:sortableColumn property="sellQuantity" title="${message(code: 'customertdetails.sellQuantity.label', default: 'sell Quantity')}" />
<g:sortableColumn property="priceType" title="${message(code: 'customertdetails.priceType.label', default: 'Price Type')}" />
<g:sortableColumn property="cPrice" title="${message(code: 'customertdetails.cPrice.label', default: 'Price')}" />
<g:sortableColumn property="percentage" title="${message(code: 'customertdetails.percentage.label', default: 'Percentage')}" />

<g:sortableColumn property="totalAvailable" title="${message(code: 'customertdetails.totalAvailable.label', default: 'Available')}" />

<g:sortableColumn property="total" title="${message(code: 'customertdetails.total.label', default: 'total')}" />



</tr>
</thead>
<tbody>
<g:each in="${customerdetailsInstanceList}" status="i" var="customerdetailsInstance">
<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
<td>${fieldValue(bean: customerdetailsInstance, field: "customerName")}</td>


<td>${fieldValue(bean: customerdetailsInstance, field: "medicineName")}</td>
<td>${fieldValue(bean: customerdetailsInstance, field: "sellQuantity")}</td>
<td>${fieldValue(bean: customerdetailsInstance, field: "priceType")}</td>
<td>${fieldValue(bean: customerdetailsInstance, field: "cPrice")}</td>
<td>${fieldValue(bean: customerdetailsInstance, field: "percentage")}</td>





</tr>
</g:each>
</tbody>
</table>


<div class="pagination">
<g:paginate total="${customerdetailsInstanceCount ?: 0}" />
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