
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

		

<title>Amul Icecreams</title>

 <!-- Bootstrap core CSS-->
    <link href="/Icecreams/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/Icecreams/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/Icecreams/website/css/sb-admin.css" rel="stylesheet">




  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  	    
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">     

	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

	<script  src="${resource(dir: 'js', file: 'createphar.js')}"></script>

<style>

#bg {
  position: fixed; 
  top: -40%; 
  left: -50%; 
  width: 200%; 
  height: 200%;
}
#bg img {
  position: absolute; 
  top: 0; 
  left: 0; 
  right: 0; 
  bottom: 0; 
  margin: auto; 
  min-width: 50%;
  min-height: 50%;
}

</style>

</head>

<body id="page-top">

<%--<div id="bg">
<img src="/Icecreams/images/ icecreams logo.jpg" class="tm-logo" style="padding-left:0px ; height: 50px; width: 200px;"/>
</div>


--%><script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>
<script>
history.pushState(null, null, location.href);
window.onpopstate = function () {
history.go(1);
};
</script>

<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

<script>

setTimeout(function(){
    window.location.href = '/Icecreams/user/expire';
 }, 31449600);
</script>



<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" >


<a class="navbar-brand" href="/Icecreams/user/userdashboard" >Amul Icecreams</a>

<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

</ul>
 <!-- Navbar -->
 

 
 
      <ul class="navbar-nav ml-auto ml-md-0">
      
      
      <li class="nav-item">
       <a  class="nav-link"  href="/Icecreams/user/userdashboard">
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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"style="color:white">${result.uname.userName }</span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="/Icecreams/user/updateuser">Profile</a>
            <a class="dropdown-item" href="/Icecreams/user/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Icecreams/user/logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
</ul>
    
    </nav>
 
 
<div id="content-wrapper" >
<div class="container-fluid" >
<br><br>
<div class="row" align="center">
<div class=" col-sm-12 mb-3">



<script>


$(function() {
	

    $("#jewelleryName").autocomplete({
    	
    	  source:[
    	<g:each in="${result.createjewellery}">
    	
        '${it.jewelleryName}',
           
        </g:each>]
    });
  });

</script>


<g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>

<br><br><br><br>
 <h5>Select Payment Mode</h5><br>
   <div   class="container-fluid" style="padding-right: 80px; margin-left: 700px"  align="center">            
    	<div class="col-xl-3 col-sm-12" align="center" style="paddin-right:400px;">
                         
              <div class="card text-white bg-primary o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-list"></i>
                  </div>
                  
                </div>
                <a class="card-footer text-white clearfix small z-1" href="/Icecreams/billing/createbilling" target="_self">
                  <span class="float-left" style="font-weight: bold;">Cash/Card</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
             
              </div>

<br><br><br><br><br><br><br>
     </div>
    </div>
                               
</div>
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

a {
  color: white;
}
a:hover {
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