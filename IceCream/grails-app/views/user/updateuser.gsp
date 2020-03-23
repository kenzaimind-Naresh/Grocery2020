
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




<script>
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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="/Icecreams/user/updateuser">Profile</a>
            <a class="dropdown-item" href="/Icecreams/user/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="userlogin" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
</ul>
    
    </nav>

<!-- Content Header (Page header) -->
<section class="content-header" align="center">
<h1>
<b style="color:Black">Update Profile</b>
</h1>
</section>
 <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             
<g:form class="form-horizontal" role="RegForm" controller="user" Id="RegForm" name="RegForm" action="saveupdate"  nonvalidate="nonvalidate">
<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="userName">User Name :</label>
<input type="text" id="userName" name="userName" class="form-control"  value="${result.user.userName}"required readonly/>
 <span id="userNameinfo"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="password">Password :</label>
<input type="password" id="password" name="password" class="form-control"   value="${result.user.password}"required readonly/>
 <span id="passwordinfo"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="email">Email :</label>
<input type="text" id="email" name="email" class="form-control"  value="${result.user.email}"required/>
 <span id="emailinfo"></span>
</div></div>


<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="mobileNumber">MobileNumber :</label>
<input type="text" id="mobileNumber" name="mobileNumber" class="form-control" value="${result.user.mobileNumber}" required readonly />

 <span id="mobileNumberinfo"></span>
</div>


<input type="hidden" id="modifiedBy" name="modifiedBy" value="${result.user.modifiedBy}"/>
<input type="hidden" id="mode" name="mode" value="web">

 <div class="form-group">
                        <div class="col-sm-12 text-center">
                        <br>
                            <button type="submit"  id="RegForm" name="RegForm"class="btn btn-primary" onclick="return validateForm()">
                                update</button>
                        </div>
                    </div>
</g:form>
</div>
</div>
</div>

<!-- /#wrapper -->

<!-- jQuery -->
<script src="../vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../vendor/raphael/raphael.min.js"></script>
<script src="../vendor/morrisjs/morris.min.js"></script>
<script src="../data/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>


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

</body>
</html>