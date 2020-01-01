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



 

<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>


</head>

<body>

<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/user/userdashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/user/userdashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								
							</li>
														
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Pages</a>
								
							</li>
							
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span>${result.uname.userName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								
								<ul class="dropdown-menu">
								
								<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/merchant/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
						</ul>
						
									
					</div>
				</div>
				
			</nav>
		</div>
		
	</header>
	<!-- End Header Area -->
	
	<br><br><br>
 	
<!-- Content Header (Page header) -->
<section class="content-header" align="center">
<h2 style="font-family: Calibri">Address Details
</h2>
</section><br>


					
					<div class="container">
			
			<div class="row">
			
<g:each in="${result.data?}" expr="true">
<tr>

<div class="single-product" style="padding-left:30px">
	
							
<h5>${it.fullName}<br></h5>
${it.mobileNumber}<br>
${it.houseNumber}, ${it.area}<br>
${it.landmark}, ${it.city}<br>
${it.state}, ${it.pincode}.<br><br>
<g:form controller="Address" action="payment">
<input type="submit" ID="btnsave" value="Deliver Here" onclick="return validateForm()" class="btn btn-warning" />
		</g:form>						
							</div>


</tr>
</g:each>



</div>
					
					</div>
					
					
	
					
<section class="content-header" style="padding-left:450px" >
<h3 style="font-family: Calibri">Add a new address
</h3>
</section><br>

<g:form class="form-horizontal" controller="address" Id="myform" name="myform" action="saveaddress" nonvalidate="nonvalidate">

<div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             <div class="row">
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
	
<label for="fullName" style="color:black">Full Name :</label>
<input type="text" id="fullName" name="fullName" class="form-control"   required/>
<span id="fullNameinfo"></span>
	
</div>



</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
	
<label for="mobileNumber" style="color:black">MobileNumber :</label>
<input type="text" id="mobileNumber" name="mobileNumber" class="form-control"    required/>
<span id="mobileNumberinfo"></span>

</div>
</div>

<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
<label for="houseNumber" style="color:black">HouseNumber :</label>
<input type="text" id="houseNumber" name="houseNumber" class="form-control"   required/>
<span id="houseNumberinfo"></span>
	
</div>
</div>
</div>

 <div class="form-group">
  <div class="row">
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
	<label for="area" style="color:black">Area :</label>
<input type="text" id="area" name="area" class="form-control"   required />
<span id="areainfo"></span>
</div>

</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">	


<label for="landmark" style="color:black">Landmark :</label>
<input type="text" id="landmark" name="landmark" class="form-control"   required/>
<span id="landmarkinfo"></span>

</div>
</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">

<label for="city" style="color:black">City :</label>
<input type="text" id="city" name="city" class="form-control" required/>
<span id="cityinfo"></span>
	
</div>
</div>
</div>
</div>


 <div class="form-group">
  <div class="row">
<div class="col-md-4 col-sm-4">
<div class="fieldcontain">	


<label for="pincode" style="color:black">PinCode :</label>
<input type="text" id="pincode" name="pincode" class="form-control" required/>
<span id="pincodeinfo"></span>
</div>

</div>

<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
<label for="state" style="color:black">State :</label>
<!-- 

<input type="text" id="state" name="state" class="form-control" required/>

 -->


<select id="state" name="state" class="form-control"  required>
<option value="">-- Select State--</option>
<option>Andhra Pradesh</option>
<option>Arunachal Pradesh</option>
<option>Assam</option>
<option>Bihar</option>
<option>Chhattisgarh</option>
<option>Goa</option>
<option>Gujarath</option>
<option>Haryana</option>
<option>Himachal Pradesh</option>
<option>Jammu and Kashmir</option>
<option>Jharkand</option>
<option>Karnataka</option>
<option>Kerala</option>
<option>Madhya Pradesh</option>
<option>Maharashtra</option>
<option>Manipur</option>
<option>Meghalaya</option>
<option>Mizoram</option>
<option>Nagaland</option>
<option>Odisha</option>
<option>Punjab</option>
<option>Rajasthan</option>
<option>Sikkim</option>
<option>Tamilnadu</option>
<option>Telangana</option>
<option>Tripura</option>
<option>Uttarakhand</option>
<option>Uttar Pradesh</option>
<option>West Bengal</option>
</select>
 
 

</div>
</div>
</div>
</div>
</div>
</div>
</div>





<input type="hidden" id="deliverhere" name="deliverhere" value="deliverhere">
<input type="hidden" id="ugroceryNameId" name="ugroceryNameId" value="103">
<input type="hidden" id="uimage" name="uimage" value="image">
<input type="hidden" id="uname" name="uname" value="name">
<input type="hidden" id="utype" name="utype" value="type">

<input type="hidden" id="ugroceryName" name="ugroceryName" value="Dal">
<input type="hidden" id="uquantity" name="uquantity" value="120">
<input type="hidden" id="ucost" name="ucost" value="20">
<input type="hidden" id="uweight" name="uweight" value="5">
<input type="hidden" id="uoffer" name="uoffer" value="15">
<input type="hidden" id="utotal" name="utotal" value="150">



<input type="hidden" id="userNameId" name="userNameId" value="${result.uname.id}">
<input type="hidden" id="myaction" name="myaction" value="save">
<input type="hidden" id="mode" name="mode" value="web">

<div class="form-group">
<div class="col-sm-12 text-center">
<input type="submit" ID="btnsave" value="Submit" onclick="return validateForm()" class="btn btn-info btn-lg" />
</div>
</div>
</div>
</g:form>




</body></html>

