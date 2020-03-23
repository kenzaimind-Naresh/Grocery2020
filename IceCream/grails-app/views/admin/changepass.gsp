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


<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->

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


</style>

</head>


<body id="page-top">
<script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>


<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>


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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"style="color:white"></span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Icecreams/admin/logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
</ul>
    
    </nav>
    
	
<script type="text/javascript">

$(document)
.ready(
  function() {

   $("#newPwd")
     .focusout(
       function() {
        $(this).find("span").css("display",
          "inline");
        var ff = /\s$/;
        var newPwd = $("#newPwd").val();
        var password = $("#password").val();
        if($("#newPwd").val().trim()=="" ||newPwd == password || $("#newPwd").val().match('^[a-zA-Z0-9-\ \-\,.@#$%^&*_!  ]{3,20}$')== null){
         $("#newPwdinfo").text("Please Enter Valid NewPassword");
        
       }else
        if ($("#newPwd").val().indexOf(" ") != 0 && ff.test($("#newPwd").val()) == false) {

         $("#newPwdinfo").text("");
        }
          else {
         $("#newPwdinfo")
           .text(
             "Please don't begin or end with space");
        }
       });
   $("#confirmPwd")
     .focusout(
       function() {
        $(this).find("span").css("display",
          "inline");

        var newPwd = $("#newPwd").val();
        var confirmPwd = $("#confirmPwd").val();
        if (newPwd != confirmPwd) {
         $("#confirmPwdinfo")
           .text(
             "New Password and Confirm Password should be same");

        } else {
         $("#confirmPwdinfo").text("");
        }
       });
   $("#password").focusout(
     function() {
      $(this).find("span").css("display", "inline");
      var pass = $("#pass").val();
      var password = $("#password").val();
      if (pass != password) {
       $("#passwordinfo").text(
         "Please Enter Valid old password");

      } else {
       $("#passwordinfo").text("");
      }
     });

  });

function validateForm() {
var newPassword = document.forms["myform"]["newPwd"].value;
var confirmpassword = document.forms["myform"]["confirmPwd"].value;
var password = document.forms["myform"]["password"].value;
var ff = /\s$/;
if (password == null || password.trim() == "") {
document.getElementById('passwordinfo').style.display = 'inline';
$("#passwordinfo").text("Please Enter Old Password");
return false;
}

if (newPassword == null || newPassword.trim() == "" || password == newPassword || newPassword.match('^[a-zA-Z0-9-\ \-\,.@#$%^&*_!  ]{3,20}$')==null) {
document.getElementById('newPwdinfo').style.display = 'inline';
$("#newPwdinfo").text("Please Enter New Password");
return false;
}
if (newPassword.indexOf(" ") == 0 || ff.test(newPassword) == true) {
document.getElementById('newPwdinfo').style.display = 'inline';
$("#newPwdinfo").text("Please don't begin or end with space");
return false;
}

if (newPassword != confirmpassword) {
document.getElementById('confirmPwdinfo').style.display = 'inline';
$("#confirmPwdinfo").text(
  "New Password and Confirm Password should be same");

return false;
} else {
return true;
}
}
</script>
   
    </head>



	<div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3 align="center">Change Password</h3>
            </div>
            
        </div>
   
    <div class="row">
            <div class="col-lg-12">
               
         <g:form class="form-horizontal" controller="admin" ID="myform" action="passwordSave2"  nonvalidate="nonvalidate"> 
	<input type="hidden" name="pass" Id="pass" value="${result.uname.password}" />
            <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">Old Password:</label>
           <input type="password" id="password" name="password" class="form-control" value="">
            <span id=passwordinfo style="color:red"></span>
            </div>
            </div>
            
           <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">New Password:</label>
           <input type="password" id="newPwd" name="newPwd" class="form-control" value="" >
            <span id=newPwdinfo style="color:red"></span>
            </div>
            </div>
            
           <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">Confirm Password: </label>
           <input type="password" id="confirmPwd" name="confirmPwd" class="form-control" value="">
            <span id=confirmPwdinfo style="color:red"></span>
            </div></div>
           
            <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
             <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-6 text-center">
           <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="btn btn-primary" />
            </div>
            </div></g:form>
            </div></div></div>
            

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