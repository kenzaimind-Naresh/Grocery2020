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



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
<!-- Font Awesome -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'font-awesome.min.css')}" type="text/css">
<!-- Ionicons -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'ionicons.min.css')}" type="text/css"> 


<style type="text/css">

body {
background-color: white;
font-family: verdana;
}

#wrapper {
width: 100%;
background-color: black;

}




 .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#696969;
   color: white;
   text-align: center;
}
a{
color:white;
}


</style>

</head>
<body id="page-top">

<!-- Navigation -->


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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"style="color:white"></span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            
            <a class="dropdown-item" href="/Icecreams/admin/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Icecreams/admin/logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
</ul>
    
    </nav>
    

<br><br><br><br><br><br><br><br><br><br>
 
 
 <div class="row">
                <div class="col-lg-12">
                   
                    <div class="page-header"  style="color:black;font-size:20px;align:center;padding-left:400px;font-Size: 30px" >${result.message}</div>
                </div>
                </div>
               

    <!-- /#wrapper -->
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
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>
  

  </body>
</html>