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
<h3 style="font-family: Calibri">Address Details
</h3>
</section><br>


					
					<div class="container">
			
			<div class="row">
			
<g:each in="${result.data?}" expr="true">
<tr>

<div class="single-product" style="padding-left:30px">
	
							
<h5>${it.fullName}<br> ${it.id}</h5>
${it.mobileNumber}<br>
${it.houseNumber}, ${it.area}<br>
${it.landmark}, ${it.city}<br>
${it.state}, ${it.pincode}.<br><br>
<%--<g:form controller="Address" action="payment">
<input type="hidden" id=${it.id} value=${it.id}/>
<input type="submit" id="${it.id}" value="Deliver Here" onclick="return validateForm()" class="btn btn-warning" />
</g:form>	
--%><g:link controller="Address" action="payment"  id="${it.id}"><button type="button"  class="btn btn-warning">Deliver Here</button></g:link>						
</div>

</tr>
</g:each>



</div>
					
					</div>
					
<div class="form-group">
<div style="padding-left:550px">
<g:form controller="Address" action="newaddress">
<input type="submit" ID="btnsave" value="Add a new address" onclick="return validateForm()" class="btn btn-info btn-lg" />
</g:form>
</div>
</div>



</body></html>

