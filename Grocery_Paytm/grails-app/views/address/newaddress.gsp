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

<g:render template="/user/userheader2"/>
	<br><br><br><br><br>
 	
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
<input type="submit" ID="btnsave" value="Deliver Here" onclick="return validateForm()" class="genric-btn primary circle" style="font-size: 15px;" />
		</g:form>						
							</div>


</tr>
</g:each>



</div>
					
					</div>
					
					
	
					
<section class="content-header" style="padding-left:580px" >
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
	
<label for="mobileNumber" style="color:black">Mobile Number :</label>
<input type="text" id="mobileNumber" name="mobileNumber" class="form-control"    required/>
<span id="mobileNumberinfo"></span>

</div>
</div>

<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
<label for="houseNumber" style="color:black">House Number :</label>
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


<label for="pincode" style="color:black">Pin Code :</label>
<input type="text" id="pincode" name="pincode" class="form-control" required/>
<span id="pincodeinfo"></span>
</div>

</div>

<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
<label for="state" style="color:black">State :</label>
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
<input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="genric-btn primary circle" style="font-size: 15px;" />
</div>
</div>
</div>
</g:form>
<br><br><br>
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
	           

</body></html>

