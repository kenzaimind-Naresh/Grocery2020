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


<script type="text/javascript">

function myFunction() {


var dlist=$('#datalist1').val();
var x=$('#patientId'); 
var v=$(x).find('option[value="' +dlist+ '"]');
var d=v.attr('id');

/// var d=document.getElementById("patientId").value;

var split=d.split("+");
document.getElementById("pFirstname").value =split[0];
document.getElementById("pLastname").value =split[1];
document.getElementById("patientId1").value =split[2];

}
function myFunct() {

// var d=document.getElementById("drugdetails").value;

var dlist=$('#datalist2').val();
var x=$('#drugdetails'); 
var v=$(x).find('option[value="' +dlist+ '"]');
var d=v.attr('id');
//alert(d)

var split=d.split("+");

document.getElementById("drugdetails1").value =split[0];

document.getElementById("rate").value =split[1];


}
function myFunct1() {

//var d=document.getElementById("drugdetails2").value;

var dlist=$('#datalist3').val();
var x=$('#drugdetails2'); 
var v=$(x).find('option[value="' +dlist+ '"]');
var d=v.attr('id');

var split=d.split("+");

document.getElementById("drugdetails21").value =split[0];

document.getElementById("rate2").value =split[1];

}
function myFunct2() {

// var d=document.getElementById("drugdetails3").value;

var dlist=$('#datalist4').val();
var x=$('#drugdetails3'); 
var v=$(x).find('option[value="' +dlist+ '"]');
var d=v.attr('id');

var split=d.split("+");

document.getElementById("drugdetails31").value =split[0];

document.getElementById("rate3").value =split[1];

}
function myFunct3() {

//var d=document.getElementById("drugdetails4").value;

var dlist=$('#datalist5').val();
var x=$('#drugdetails4'); 
var v=$(x).find('option[value="' +dlist+ '"]');
var d=v.attr('id');

var split=d.split("+");

document.getElementById("drugdetails41").value =split[0];

document.getElementById("rate4").value =split[1];

}
function myFunct4() {

//var d=document.getElementById("drugdetails5").value;

var dlist=$('#datalist6').val();
var x=$('#drugdetails5'); 
var v=$(x).find('option[value="' +dlist+ '"]');
var d=v.attr('id');

var split=d.split("+");

document.getElementById("drugdetails51").value =split[0];

document.getElementById("rate5").value =split[1];

}





function getinput()
{
var DrugName="<input type='text' name='drugdetails' id='drugdetails'>";
var Quantity="<input type='text' name='quantity' id='quantity'>";
var Rate="<input type='text' name='rate' id='rate'>";
var Total="<input type='text' name='total' id='total'>";
$("#pinputs1").append(DrugName,Quantity,Rate,Total);
return false;
}


$(document).ready(function(){
$("#pinputs1").show();
$("#pinputs2").hide();
$("#pinputs3").hide();
$("#pinputs4").hide();
$("#pinputs5").hide();
$("#ref1").hide();
$("#ref2").hide();
$("#ref3").hide();
$("#ref4").hide();
$("#hide").hide();
$("#hide1").hide();
$("#hide2").hide();
$("#hide3").hide();
$("#hide4").hide();



$("#hide").click(function(){
$("#pinputs2").hide();
$("#ref1").hide();
$("#hide").hide();
});
$("#show").click(function(){
$("#pinputs2").show();
$("#ref1").show();
$("#hide").show();
});
$("#hide1").click(function(){
$("#pinputs3").hide();
$("#ref2").hide();
$("#hide1").hide();
});
$("#show1").click(function(){
$("#pinputs3").show();
$("#ref2").show();
$("#hide1").show();
});
$("#hide2").click(function(){
$("#pinputs4").hide();
$("#ref3").hide();
$("#hide2").hide();
});
$("#show2").click(function(){
$("#pinputs4").show();
$("#ref3").show();
$("#hide2").show();
});
$("#hide3").click(function(){
$("#pinputs5").hide();
$("#ref4").hide();
$("#hide3").hide();
});
$("#show3").click(function(){
$("#pinputs5").show();
$("#ref4").hide();
$("#hide3").show();
});


});


</script>



</head>

<body>

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
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/merchant/dashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
								</ul>
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul>
							</li>
														
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Pages</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="tracking.html">Tracking</a></li>
									<li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
								</ul>
							</li>
							
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span>${result.uname.userName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								
								<ul class="dropdown-menu">
								
								<li><g:link controller="#" action="#" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="#" action="#" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
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
<h1>
<b style="color:Black">Address Details</b>
</h1>
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
<input type="text" id="fullName" name="fullName" class="form-control" value="${result.data.fullName}" required/>
<span id="fullNameinfo"></span>
	
</div>


</div>

<div class="fieldcontain">
	
	
<label for="mobileNumber" style="color:black">MobileNumber :</label>
<input type="text" id="mobileNumber" name="mobileNumber" class="form-control" value="${result.data.mobileNumber}" required/>
<span id="mobileNumberinfo"></span>

</div>
<div class="col-md-4 col-sm-4">

</div></div></div>
 <div class="form-group">
  <div class="row">
<div class="col-md-4 col-sm-4">


<div class="fieldcontain">	
<label for="pincode" style="color:black">PinCode :</label>
<input type="text" id="pincode" name="pincode" class="form-control" value="${result.data.pincode}" required/>
<span id="pincodeinfo"></span>
</div>

</div>

<div class="fieldcontain">
<label for="houseNumber" style="color:black">HouseNumber :</label>
<input type="text" id="houseNumber" name="houseNumber" class="form-control" value="${result.data.houseNumber}" required/>
<span id="houseNumberinfo"></span>
	
</div>

<div class="col-md-4 col-sm-4">
<div class="fieldcontain">
	<label for="area" style="color:black">Area :</label>
<input type="text" id="area" name="area" class="form-control" value="${result.data.area}" required />
<span id="areainfo"></span>
</div>
</div>
</div>
</div>


 <div class="form-group">
  <div class="row">
<div class="col-md-4 col-sm-4">


<div class="fieldcontain">	


<label for="landmark" style="color:black">Landmark :</label>
<input type="text" id="landmark" name="landmark" class="form-control" value="${result.data.landmark}" required/>
<span id="landmarkinfo"></span>

</div>

</div>

<div class="fieldcontain">

<label for="city" style="color:black">City :</label>
<input type="text" id="city" name="city" class="form-control" value="${result.data.city}" required/>
<span id="cityinfo"></span>
	
</div>

<div class="col-md-4 col-sm-4">
<div class="fieldcontain">
<label for="state" style="color:black">State :</label>

<input type="text" id="state" name="state" class="form-control"  required/>
<!-- 

<select id="state" name="state" class="form-control" required>
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

 -->

</div>
</div>
</div>
</div>

</div>
</div>
</div>

<div class="form-group">
<div class="checkbox">
<h3 style="color:black;padding-left:400px">Payment Mode</h3>
<label style="color:black;padding-left:400px">
<input name="cod" type="checkbox" id="cod" onclick="myForm" value="Cash On Delivery" required>Cash On Delivery						
</label>
</div>
</div>


${result.data.ugroceryName}
${result.doctor.id}



<input type="hidden" id="userNameId" name="userNameId" value="${result.uname.id}">
<input type="hidden" id="myaction" name="myaction" value="save">
<input type="hidden" id="mode" name="mode" value="web">

<div class="form-group">
<div class="col-sm-12 text-center">
<input type="submit" ID="btnsave" value="Sumbit" onclick="return validateForm()" class="btn btn-info btn-lg" />
</div>
</div>

</g:form>


<div align="center">

<a href="/Skeleton/address/newaddress" id="show">Add New Address</a>
</div>
</body></html>

