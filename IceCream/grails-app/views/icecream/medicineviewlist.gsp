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
		
  		

<title>Medical Care</title>

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
.pagination {
    clear:both;
    position:relative;
    font-size:11px;
    text-align:center;
    padding-left: 702px;
}

.pagination span, .pagination a {
    display:inline-block;
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
</style>



</head>
<body id="page-top">


<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>



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
  <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"style="color:white"></span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="/MedicalCare/admin/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/MedicalCare/admin/login" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
</ul>
    
    </nav>
    
<section class="content-header" align="center">
<h1>
<b style="color:Black">Medicine List</b>
</h1>
<br>
</section>
 
 
 
 
 
 
<table align="center">
<thead>
<tr>


<g:sortableColumn property="medicineName" title="${message(code: 'createmedicine.medicineName.label', default: 'Medicine Name')}" />
<g:sortableColumn property="rate" title="${message(code: 'createmedicine.rate.label', default: 'Rate')}" />
<g:sortableColumn property="createDate" title="${message(code: 'createmedicine.createDate.label', default: 'create Date')}" />


<g:sortableColumn property="totalAvailable" title="${message(code: 'createmedicine.totalAvailable.label', default: 'Available')}" />

<g:sortableColumn property="createdBy" title="${message(code: 'createmedicine.createdBy.label', default: 'CreatedBy')}" />


</tr>
</thead>
<tbody>
<g:each in="${createmedicineInstanceList}" status="i" var="createmedicineInstance">
<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
<td>${fieldValue(bean: createmedicineInstance, field: "medicineName")}</td>


<td>${fieldValue(bean: createmedicineInstance, field: "rate")}</td>
<td>${fieldValue(bean: createmedicineInstance, field: "createDate")}</td>


<td>${fieldValue(bean: createmedicineInstance, field: "totalAvailable")}</td>
<td>${fieldValue(bean: createmedicineInstance, field: "createdBy")}</td>





</tr>
</g:each>
</tbody>
</table>

<br>
<div class="pagination">
<g:paginate total="${createmedicineInstanceCount ?: 0}" />
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


</style>


<div class="footer">
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