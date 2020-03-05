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
	
	<br><br><br><br><br><br>
 	
<!-- Content Header (Page header) -->
<section class="content-header" align="center">
<h3>Select a payment method 
</h3>
</section><br>


<g:form class="form-horizontal" controller="address" Id="myform" name="myform" action="shipping" nonvalidate="nonvalidate">




<div class="form-group">
<div class="radio">
<h3 style="color:black;padding-left:600px">Payment Mode</h3>
<label style="color:black;padding-left:600px">


<br><br>

  <input type="radio" name="pay" value="CashonDelivery" onclick="myForm">Cash on Delivery(Cash/UPI/Card)<br><br><br>
<!-- <input type="radio" name="pay" value="BHIMUPI"> BHIM UPI -->
<br>


<div onClick="window.location = 'http://localhost:8080/Skeleton/address/onlinepay';">
    <input type="radio" style="pointer-events:none;">BHIM UPI
</div>

					
</label>
</div>    
</div>


<input type="hidden" id="userNameId" name="userNameId">
<input type="hidden" id="myaction" name="myaction" value="save">
<input type="hidden" id="mode" name="mode" value="web">

<div class="form-group">
<div class="col-sm-12 text-center">
<input type="submit" ID="btnsave" value="Continue" onclick="return validateForm()" class="btn btn-info btn-lg" />
</div>
</div>
</div>
</g:form>





</body></html>

