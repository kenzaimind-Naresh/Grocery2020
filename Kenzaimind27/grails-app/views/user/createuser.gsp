<!DOCTYPE html>
<html>
<head>


 <link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">


   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<%--  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>--%>
  <link rel="stylesheet" href="/resources/demos/style.css">    
  
	     <script src="/Skeleton/website/vendor/js/bootstrap.min.js"></script>
    <script src="/Skeleton/website/js/tm-script.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
 
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="style.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/5d0d55aa82.js"></script>

	    <script  src="${resource(dir: 'js', file: 'user.js')}"></script>

<script type="text/javascript">
		function showHidePwd() {
		    var input = document.getElementById("password");
		    if (input.type === "password") {
		        input.type = "text";
		        document.getElementById("eye").className = "far fa-eye";
		    } else {
		        input.type = "password";
		        document.getElementById("eye").className = "far fa-eye-slash";
		    }
		}
		</script>
		<script type="text/javascript">

		$(document).ready(function () {
		    $('#eye').click(function () {
		        $('#password').attr('type', $('#password').is(':password') ? 'text' : 'password');
		        if ($('#password').attr('type') === 'password') {
		            $('#eye').removeClass('fa-eye').addClass('fa-eye-slash');
		        } else {
		            $('#eye').removeClass('fa-eye-slash').addClass('fa-eye');
		        }
		    });
		});
		

		</script>

		
</head>
<body>
<script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>


	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/dashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item "><a class="nav-link" href="/Skeleton/merchant/dashboard">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="/Skeleton/user/userlogin1">Signin</a></li>							
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
																				
						</ul>						
					</div>
				</div>
				
			</nav>
		</div>	 
	</header>
	<!-- End Header Area -->
	
     <br><br><br>
     
     
<div align="center">
<p style="color:black;font-Size: 20px">${flash.message}</p>
<br>
    </div>

     
<!-- Content Header (Page header) -->
<section class="content-header">
<h4>
<p style="color:Black;font-family: Calibri;padding-left:460px">User Registration</p>
</h4>
</section>

<g:form class="form-horizontal" role="form" controller="User" Id="myform" name="myform" action="saveuser"  nonvalidate="nonvalidate">

<div class="container" style="padding-left:70px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             <div class="row">
<div class="col-md-4 col-sm-4">


<div class="fieldcontain">

<input type="text" id="firstName" name="firstName" value="${userInstance?.firstName}" placeholder="FirstName" class="form-control" required/>
 <span id="firstNameinfo" style="color:red"></span>
</div>
</div>

<div class="col-md-4 col-sm-4">


<div class="fieldcontain">

<input type="text" id="lastName" name="lastName" value="${userInstance?.lastName}" placeholder="LastName" class="form-control" required/>
 <span id="lastNameinfo" style="color:red"></span>
</div>

</div></div><br>

<div class="form-group">
  <div class="row">
<div class="col-md-4 col-sm-4">


<div class="fieldcontain">
	

<input type="text" id="userName" name="userName" value="${userInstance?.userName}" placeholder="User Name" class="form-control" required/>
 <span id="userNameinfo" style="color:red"></span>
	
</div>
</div>



<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
<div class="form-label-group input-group">	
<input type="password" id="password" name="password" placeholder="Password" class="form-control" required/>
 <div class="input-group-append">
 <span class="input-group-text">
 <i id="eye" class="far fa-eye-slash"></i>
 </span>
</div>
</div>
</div>

</div>
</div><br>
 <div class="form-group">
  <div class="row">
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">

<input type="text" id="email" name="email" value="${userInstance?.email}" placeholder="Email" class="form-control" required/>
 <span id="emailinfo" style="color:red"></span>
</div>

</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">	


<input type="text" id="mobileNumber" name="mobileNumber" value="${userInstance?.mobileNumber}" placeholder="MobileNumber" class="form-control" required />
 <span id="mobileNumberinfo" style="color:red"></span>
</div>
</div>
</div>


</div>
</div>
</div>

</div>


<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="mode" name="mode" value="web"/>
<input type="hidden" id="myaction" name="myaction" value="save"/>

<div class="col-sm-6 text-center"><br><br>
<input type="submit" ID="btnsave" value="Create" onclick="return validateForm()" class="primary-btn" />
</div>
</div>
</div>
</g:form>



</body>
</html>