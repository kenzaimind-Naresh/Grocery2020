 <!DOCTYPE html>
<html>
<head>
<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Skeleton</title>

	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	<link rel="stylesheet" href="/Skeleton/website/css/owl.carousel.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css"> 
    

</head>
<body>

  
<script>
function validateForm() {
var x = document.forms["myForm"]["email"].value;
if (x == "") {
alert("Email/Mobile must be filled out");
return false;
}
}
</script>
<script>
function validateForm() {
var x = document.forms["myForm"]["password"].value;
if (x == "") {
alert("Password must be filled out");
return false;
}
}
</script>
<g:render template="/user/header"/>
<br><br><br><br><br><br>
<section class="content-header">

<div class="col-md-8 col-md-offset-8">
<div class="login-panel panel panel-default">
<div class="panel-heading" align="center" style="padding-left: 400px;">
<h3>
<b style="color:black;">User Login</b>
</h3>
</div><br>
<div class="panel-body" style="padding-left:400px; ">
<g:form controller="user" role="form" name="myForm" id="myForm" action="authenticate1" nonvalidate="nonvalidate">
<fieldset>
<div class="form-group" ${hasErrors(bean: userInstance, field: 'email', 'error')}>
<input class="form-control" placeholder="Email or Mobile" id="email" name="email" onclick="myForm" value="${userInstance?.email}"type="text" required>
</div>
<div class="form-group" ${hasErrors(bean: userInstance, field: 'password', 'error')}>
<input class="form-control" placeholder="Password" id="password" name="password" onclick="myForm" value="${userInstance?.password}" type="password" required>
</div>

<a href="/Skeleton/user/forgotpass"><h5>Forgot Password?</h5></a>

<input type="submit" id="myform" name="myform"  class="btn btn-lg btn-success btn-block" value="Login" onclick="return validateForm()">
<a class="btn btn-lg btn-warning btn-block" href="/Skeleton/user/createuser"><h5>Create a New Account</h5></a>

</fieldset>
</g:form>
</div>
</div>
</div>
</section>

<div class="modal fade" id="myModal" style="Top:100px">
<div class="modal-dialog modal-lg">
<div class="modal-content">

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

<script src="/SalesAndServicesApp/website/js/bootstrap.min.js"></script>
<script src="/SalesAndServicesApp/website/js/tm-script.js" type="text/javascript"></script>
 
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
 // color: white;
}
a:hover {
  //color: white;
}


</style>

<br><br>
<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	           

</body>

</html>